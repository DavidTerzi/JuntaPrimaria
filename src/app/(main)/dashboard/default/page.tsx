"use client";

import { useState } from "react";

import { useRouter } from "next/navigation";
import { Users, FileUser, Calendar, FileText, List, UserPlus, Search, X, CalendarDays } from "lucide-react";

import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Dialog, DialogContent, DialogDescription, DialogHeader, DialogTitle, DialogTrigger } from "@/components/ui/dialog";
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Textarea } from "@/components/ui/textarea";

import CalculoAntiguedad from "./_components/calculo-antiguedad";

export default function Page() {
  const router = useRouter();
  const [activeTab, setActiveTab] = useState("titulares");
  const [showCargarForm, setShowCargarForm] = useState(false);
  const [showBuscarModal, setShowBuscarModal] = useState(false);
  const [showLicenciasModal, setShowLicenciasModal] = useState(false);

  const [buscarDni, setBuscarDni] = useState("");
  
  // Estados para búsqueda de titulares
  const [datosDocente, setDatosDocente] = useState<any>(null);
  const [establecimientosHistorial, setEstablecimientosHistorial] = useState([]);
  const [cargandoBusqueda, setCargandoBusqueda] = useState(false);
  const [mensajeBusqueda, setMensajeBusqueda] = useState("");

  // Estados para el formulario de Cargar Antigüedad Titular
  const [formData, setFormData] = useState({
    dni: "",
    apellido: "",
    nombre: "",
    denominacion_cargo: "",
    fecha_titularizacion: "",
    fecha_traslado_baja: "",
    establecimiento: "",
    tipo_traslado: "",
    establecimiento_traslado: "",
    categoria: "",
    turno: "",
    radio: "",
    observaciones: ""
  });
  const [cargandoPersona, setCargandoPersona] = useState(false);
  const [guardandoFormulario, setGuardandoFormulario] = useState(false);
  const [mensajeFormulario, setMensajeFormulario] = useState("");
  const [personaEncontrada, setPersonaEncontrada] = useState<any>(null);

  // Estados para el formulario de Licencias
  const [licenciaData, setLicenciaData] = useState({
    dni: "",
    apellido: "",
    nombre: "",
    id_tipo: "",
    fecha_inicio: "",
    fecha_fin: "",
    observaciones: ""
  });
  const [cargandoPersonaLicencia, setCargandoPersonaLicencia] = useState(false);
  const [guardandoLicencia, setGuardandoLicencia] = useState(false);
  const [mensajeLicencia, setMensajeLicencia] = useState("");
  const [personaEncontradaLicencia, setPersonaEncontradaLicencia] = useState<any>(null);
  const [tiposLicencia, setTiposLicencia] = useState([]);

  // Estados para el formulario de Suplencias
  const [suplenciaData, setSuplenciaData] = useState({
    buscarDni: "",
    dni: "",
    apellido: "",
    nombre: "",
    cargo: "",
    establecimiento: "",
    radio: "",
    fecha_inicio: "",
    fecha_baja: "",
    primera_titularizacion: "",
    segunda_titularizacion: "",
    observaciones: ""
  });
  const [cargandoPersonaSuplencia, setCargandoPersonaSuplencia] = useState(false);
  const [guardandoSuplencia, setGuardandoSuplencia] = useState(false);
  const [mensajeSuplencia, setMensajeSuplencia] = useState("");
  const [personaEncontradaSuplencia, setPersonaEncontradaSuplencia] = useState<any>(null);
  const [suplenciasActivas, setSuplenciasActivas] = useState(0);
  const [showSuplenciasModal, setShowSuplenciasModal] = useState(false);

  // Estados para búsqueda de suplencias (nuevos desde master)
  const [showBuscarSuplenciaModal, setShowBuscarSuplenciaModal] = useState(false);
  const [buscarSuplencia, setBuscarSuplencia] = useState("");

  // Función para buscar persona por DNI automáticamente en el formulario
  const buscarPersonaFormulario = async (dni: string) => {
    if (!dni.trim() || dni.length < 7) return;

    setCargandoPersona(true);
    setMensajeFormulario("");

    try {
      // Buscar datos básicos de la persona
      const responsePersona = await fetch('/api/personas/search', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ dni: dni.trim() }),
      });

      const dataPersona = await responsePersona.json();

      if (dataPersona.success && dataPersona.data.length > 0) {
        const persona = dataPersona.data[0];
        setPersonaEncontrada(persona);
        
        // Ahora buscar el historial de cargos para obtener el último cargo
        try {
          const responseHistorial = await fetch(`/api/historial-cargos?dni=${dni.trim()}`);
          const dataHistorial = await responseHistorial.json();
          
          let ultimoCargo = "";
          if (dataHistorial.success && dataHistorial.data.length > 0) {
            // Obtener el cargo más reciente (primer elemento ya que está ordenado por fecha DESC)
            ultimoCargo = dataHistorial.data[0].denominacion_cargo || "";
          }

          // Si no encontramos cargo en historial_cargos, buscar en suplencias
          if (!ultimoCargo) {
            try {
              const responseSuplencias = await fetch('/api/suplencias');
              const dataSuplencias = await responseSuplencias.json();
              
              if (dataSuplencias.success && dataSuplencias.data.length > 0) {
                // Buscar suplencias de esta persona
                const suplenciasPersona = dataSuplencias.data.filter((sup: any) => 
                  sup.dni === dni.trim()
                );
                if (suplenciasPersona.length > 0) {
                  ultimoCargo = suplenciasPersona[0].cargo || "";
                }
              }
            } catch (suplenciasError) {
              console.log('No se pudo buscar en suplencias:', suplenciasError);
            }
          }

          setFormData(prev => ({
            ...prev,
            apellido: persona.apellido || "",
            nombre: persona.nombre || "",
            denominacion_cargo: ultimoCargo
          }));

          if (ultimoCargo) {
            setMensajeFormulario("Persona encontrada con historial de cargos");
          } else {
            setMensajeFormulario("Persona encontrada - sin historial de cargos previo");
          }

        } catch (historialError) {
          console.log('Error al buscar historial:', historialError);
          // Si falla la búsqueda de historial, al menos cargar los datos básicos
          setFormData(prev => ({
            ...prev,
            apellido: persona.apellido || "",
            nombre: persona.nombre || ""
          }));
          setMensajeFormulario("Persona encontrada - error al cargar historial de cargos");
        }

      } else {
        setPersonaEncontrada(null);
        setMensajeFormulario("Persona no encontrada - se creará un nuevo registro");
      }
    } catch (error) {
      console.error('Error al buscar persona:', error);
      setMensajeFormulario("Error al buscar persona");
      setPersonaEncontrada(null);
    } finally {
      setCargandoPersona(false);
    }
  };

  // Función para cargar tipos de licencia
  const cargarTiposLicencia = async () => {
    try {
      console.log('Cargando tipos de licencia...');
      const response = await fetch('/api/tipos-licencias');
      const data = await response.json();
      
      console.log('Respuesta de tipos de licencia:', data);
      
      if (data.success) {
        setTiposLicencia(data.data);
        console.log('Tipos de licencia cargados:', data.data);
      } else {
        console.error('Error en la respuesta:', data);
        setMensajeLicencia('Error al cargar tipos de licencia');
      }
    } catch (error) {
      console.error('Error al cargar tipos de licencia:', error);
      setMensajeLicencia('Error al cargar tipos de licencia');
    }
  };

  // Función para buscar persona por DNI para licencias
  const buscarPersonaLicencia = async (dni: string) => {
    if (!dni.trim() || dni.length < 7) return;

    setCargandoPersonaLicencia(true);
    setMensajeLicencia("");

    try {
      const response = await fetch('/api/personas/search', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ dni: dni.trim() }),
      });

      const data = await response.json();

      if (data.success && data.data.length > 0) {
        const persona = data.data[0];
        setPersonaEncontradaLicencia(persona);
        setLicenciaData(prev => ({
          ...prev,
          apellido: persona.apellido || "",
          nombre: persona.nombre || ""
        }));
        setMensajeLicencia("Persona encontrada");
      } else {
        setPersonaEncontradaLicencia(null);
        setMensajeLicencia("Persona no encontrada - se creará un nuevo registro");
      }
    } catch (error) {
      console.error('Error al buscar persona:', error);
      setMensajeLicencia("Error al buscar persona");
      setPersonaEncontradaLicencia(null);
    } finally {
      setCargandoPersonaLicencia(false);
    }
  };

  // Función para guardar licencia
  const guardarLicencia = async () => {
    // Validaciones básicas
    if (!licenciaData.dni.trim() || !licenciaData.apellido.trim() || !licenciaData.nombre.trim() || !licenciaData.fecha_inicio.trim()) {
      setMensajeLicencia("DNI, apellido, nombre y fecha de inicio son requeridos");
      return;
    }

    // Validar formato de DNI
    if (licenciaData.dni.length < 7 || licenciaData.dni.length > 8 || !/^\d+$/.test(licenciaData.dni)) {
      setMensajeLicencia("El DNI debe tener entre 7 y 8 dígitos");
      return;
    }

    // Validar fechas
    const fechaInicio = new Date(licenciaData.fecha_inicio);
    if (isNaN(fechaInicio.getTime())) {
      setMensajeLicencia("Fecha de inicio no válida");
      return;
    }

    if (licenciaData.fecha_fin) {
      const fechaFin = new Date(licenciaData.fecha_fin);
      if (isNaN(fechaFin.getTime())) {
        setMensajeLicencia("Fecha de finalización no válida");
        return;
      }
      
      if (fechaFin <= fechaInicio) {
        setMensajeLicencia("La fecha de finalización debe ser posterior a la fecha de inicio");
        return;
      }
    }

    setGuardandoLicencia(true);
    setMensajeLicencia("");

    try {
      const response = await fetch('/api/licencias', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          id_persona: personaEncontradaLicencia?.id_persona || null,
          numero_documento: licenciaData.dni,
          apellido: licenciaData.apellido,
          nombre: licenciaData.nombre,
          id_tipo: licenciaData.id_tipo || null,
          fecha_inicio: licenciaData.fecha_inicio,
          fecha_fin: licenciaData.fecha_fin || null,
          observaciones: licenciaData.observaciones
        }),
      });

      const data = await response.json();

      if (data.success) {
        setMensajeLicencia("Licencia guardada exitosamente");
        // Limpiar formulario
        setLicenciaData({
          dni: "",
          apellido: "",
          nombre: "",
          id_tipo: "",
          fecha_inicio: "",
          fecha_fin: "",
          observaciones: ""
        });
        setPersonaEncontradaLicencia(null);
        // Cerrar modal después de 2 segundos
        setTimeout(() => {
          setShowLicenciasModal(false);
          setMensajeLicencia("");
        }, 2000);
      } else {
        setMensajeLicencia("Error al guardar: " + (data.error || "Error desconocido"));
      }
    } catch (error) {
      console.error('Error al guardar licencia:', error);
      setMensajeLicencia("Error al guardar licencia");
    } finally {
      setGuardandoLicencia(false);
    }
  };

  // Función para guardar el formulario de antigüedad
  const guardarAntiguedad = async () => {
    // Validaciones básicas
    if (!formData.dni.trim() || !formData.apellido.trim() || !formData.nombre.trim()) {
      setMensajeFormulario("DNI, apellido y nombre son requeridos");
      return;
    }

    // Validar formato de DNI
    if (formData.dni.length < 7 || formData.dni.length > 8 || !/^\d+$/.test(formData.dni)) {
      setMensajeFormulario("El DNI debe tener entre 7 y 8 dígitos");
      return;
    }

    // Validar fechas si están presentes
    if (formData.fecha_titularizacion && formData.fecha_traslado_baja) {
      const fechaTitularizacion = new Date(formData.fecha_titularizacion);
      const fechaTraslado = new Date(formData.fecha_traslado_baja);
      
      if (fechaTraslado <= fechaTitularizacion) {
        setMensajeFormulario("La fecha de traslado/baja debe ser posterior a la fecha de titularización");
        return;
      }
    }

    setGuardandoFormulario(true);
    setMensajeFormulario("");

    try {
      const response = await fetch('/api/historial-cargos', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          id_persona: personaEncontrada?.id_persona || null,
          numero_documento: formData.dni,
          apellido: formData.apellido,
          nombre: formData.nombre,
          denominacion_cargo: formData.denominacion_cargo,
          fecha_titularizacion: formData.fecha_titularizacion,
          fecha_traslado_baja: formData.fecha_traslado_baja,
          establecimiento: formData.establecimiento,
          tipo_traslado: formData.tipo_traslado,
          establecimiento_traslado: formData.establecimiento_traslado,
          categoria: formData.categoria,
          turno: formData.turno,
          radio: formData.radio,
          observaciones: formData.observaciones
        }),
      });

      const data = await response.json();

      if (data.success) {
        setMensajeFormulario("Antigüedad guardada exitosamente");
        // Limpiar formulario
        setFormData({
          dni: "",
          apellido: "",
          nombre: "",
          denominacion_cargo: "",
          fecha_titularizacion: "",
          fecha_traslado_baja: "",
          establecimiento: "",
          tipo_traslado: "",
          establecimiento_traslado: "",
          categoria: "",
          turno: "",
          radio: "",
          observaciones: ""
        });
        setPersonaEncontrada(null);
        // Cerrar formulario después de 2 segundos
        setTimeout(() => {
          setShowCargarForm(false);
          setMensajeFormulario("");
        }, 2000);
      } else {
        setMensajeFormulario("Error al guardar: " + (data.error || "Error desconocido"));
      }
    } catch (error) {
      console.error('Error al guardar antigüedad:', error);
      setMensajeFormulario("Error al guardar antigüedad");
    } finally {
      setGuardandoFormulario(false);
    }
  };

  // Función para buscar persona por DNI y su historial de establecimientos
  const buscarPersonaPorDni = async () => {
    if (!buscarDni.trim()) {
      setMensajeBusqueda("Por favor ingrese un DNI");
      return;
    }

    setCargandoBusqueda(true);
    setMensajeBusqueda("");

    try {
      const response = await fetch('/api/personas/establecimientos', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ dni: buscarDni.trim() }),
      });

      const data = await response.json();

      if (data.success) {
        setDatosDocente(data.data.persona);
        setEstablecimientosHistorial(data.data.establecimientos);
        setMensajeBusqueda(`Se encontraron ${data.data.establecimientos.length} establecimiento(s)`);
      } else {
        setDatosDocente(null);
        setEstablecimientosHistorial([]);
        setMensajeBusqueda(data.message || "No se encontraron resultados");
      }
    } catch (error) {
      console.error('Error al buscar:', error);
      setDatosDocente(null);
      setEstablecimientosHistorial([]);
      setMensajeBusqueda("Error al realizar la búsqueda");
    } finally {
      setCargandoBusqueda(false);
      setShowBuscarModal(false);
    }
  };

  // Función para buscar persona por DNI para suplencias
  const buscarPersonaSuplencia = async (dni: string) => {
    if (!dni.trim() || dni.length < 7) return;

    setCargandoPersonaSuplencia(true);
    setMensajeSuplencia("");

    try {
      const response = await fetch('/api/personas/search', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ dni: dni.trim() }),
      });

      const data = await response.json();

      if (data.success && data.data.length > 0) {
        const persona = data.data[0];
        setPersonaEncontradaSuplencia(persona);
        
        // Verificar cuántas suplencias activas tiene esta persona
        try {
          const responseSuplencias = await fetch(`/api/suplencias/nueva?dni=${dni.trim()}`);
          const dataSuplencias = await responseSuplencias.json();
          
          if (dataSuplencias.success) {
            const suplenciasActivas = dataSuplencias.data.filter((s: any) => 
              s.activo === 1 && (!s.primera_titularizacion || !s.segunda_titularizacion)
            ).length;
            
            setSuplenciasActivas(suplenciasActivas);
            
            if (suplenciasActivas >= 2) {
              setMensajeSuplencia("ATENCIÓN: Esta persona ya tiene 2 suplencias activas. Debe titularizar antes de agregar más.");
            } else {
              setMensajeSuplencia(`Persona encontrada - Suplencias activas: ${suplenciasActivas}/2`);
            }
          }
        } catch (suplenciasError) {
          console.log('No se pudo verificar suplencias:', suplenciasError);
          setSuplenciasActivas(0);
        }
        
        setSuplenciaData(prev => ({
          ...prev,
          apellido: persona.apellido || "",
          nombre: persona.nombre || ""
        }));
        
      } else {
        setPersonaEncontradaSuplencia(null);
        setSuplenciasActivas(0);
        setMensajeSuplencia("Persona no encontrada - se creará un nuevo registro");
      }
    } catch (error) {
      console.error('Error al buscar persona:', error);
      setMensajeSuplencia("Error al buscar persona");
      setPersonaEncontradaSuplencia(null);
    } finally {
      setCargandoPersonaSuplencia(false);
    }
  };

  // Función para guardar suplencia
  const guardarSuplencia = async () => {
    // Validaciones básicas
    if (!suplenciaData.dni.trim() || !suplenciaData.apellido.trim() || !suplenciaData.nombre.trim() || !suplenciaData.fecha_inicio.trim()) {
      setMensajeSuplencia("DNI, apellido, nombre y fecha de inicio son requeridos");
      return;
    }

    // Validar formato de DNI
    if (suplenciaData.dni.length < 7 || suplenciaData.dni.length > 8 || !/^\d+$/.test(suplenciaData.dni)) {
      setMensajeSuplencia("El DNI debe tener entre 7 y 8 dígitos");
      return;
    }

    // Validar que no tenga más de 2 suplencias activas
    if (suplenciasActivas >= 2) {
      setMensajeSuplencia("No se puede agregar más suplencias. Esta persona ya tiene el máximo permitido (2).");
      return;
    }

    setGuardandoSuplencia(true);
    setMensajeSuplencia("");

    try {
      const response = await fetch('/api/suplencias/nueva', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          id_persona: personaEncontradaSuplencia?.id_persona || null,
          numero_documento: suplenciaData.dni,
          apellido: suplenciaData.apellido,
          nombre: suplenciaData.nombre,
          cue: null, // Por ahora null, se puede agregar después
          id_cargo: null, // Por ahora null, se puede agregar después
          establecimiento: suplenciaData.establecimiento,
          radio: suplenciaData.radio,
          fecha_inicio: suplenciaData.fecha_inicio,
          fecha_baja: suplenciaData.fecha_baja || null,
          primera_titularizacion: suplenciaData.primera_titularizacion || null,
          segunda_titularizacion: suplenciaData.segunda_titularizacion || null,
          observaciones: suplenciaData.observaciones
        }),
      });

      const data = await response.json();

      if (data.success) {
        setMensajeSuplencia(`Suplencia guardada exitosamente. Suplencias activas: ${data.data.suplencias_activas}/2`);
        setSuplenciasActivas(data.data.suplencias_activas);
        // Limpiar formulario
        limpiarFormularioSuplencia();
        // Cerrar modal después de 3 segundos
        setTimeout(() => {
          setShowSuplenciasModal(false);
          setMensajeSuplencia("");
          setSuplenciasActivas(0);
        }, 3000);
      } else {
        setMensajeSuplencia("Error al guardar: " + (data.error || "Error desconocido"));
      }
    } catch (error) {
      console.error('Error al guardar suplencia:', error);
      setMensajeSuplencia("Error al guardar suplencia");
    } finally {
      setGuardandoSuplencia(false);
    }
  };

  // Función para limpiar el formulario de suplencia
  const limpiarFormularioSuplencia = () => {
    setSuplenciaData({
      buscarDni: "",
      dni: "",
      apellido: "",
      nombre: "",
      cargo: "",
      establecimiento: "",
      radio: "",
      fecha_inicio: "",
      fecha_baja: "",
      primera_titularizacion: "",
      segunda_titularizacion: "",
      observaciones: ""
    });
    setMensajeSuplencia("");
    setPersonaEncontradaSuplencia(null);
    setSuplenciasActivas(0);
  };

  // Estados para búsqueda de suplencias
  const [datosSuplente, setDatosSuplente] = useState<any>(null);
  const [suplenciasHistorial, setSuplenciasHistorial] = useState<any[]>([]);
  const [cargandoBusquedaSuplencia, setCargandoBusquedaSuplencia] = useState(false);
  const [mensajeBusquedaSuplencia, setMensajeBusquedaSuplencia] = useState("");

  // Función para buscar suplencias por DNI
  const buscarSuplenciasPorDni = async () => {
    if (!buscarSuplencia.trim()) {
      setMensajeBusquedaSuplencia("Por favor ingrese un DNI o nombre");
      return;
    }

    setCargandoBusquedaSuplencia(true);
    setMensajeBusquedaSuplencia("");

    try {
      const response = await fetch(`/api/suplencias?search=${encodeURIComponent(buscarSuplencia.trim())}`);
      const data = await response.json();

      if (Array.isArray(data) && data.length > 0) {
        // Usar el primer resultado como datos del suplente
        setDatosSuplente({
          numero_documento: data[0].dni,
          nombre: data[0].nombre,
          apellido: data[0].apellido,
          nombre_completo: data[0].nombre_completo
        });
        setSuplenciasHistorial(data);
        setMensajeBusquedaSuplencia(`Se encontraron ${data.length} suplencia(s)`);
      } else {
        setDatosSuplente(null);
        setSuplenciasHistorial([]);
        setMensajeBusquedaSuplencia("No se encontraron suplencias para este criterio");
      }
    } catch (error) {
      console.error('Error al buscar suplencias:', error);
      setDatosSuplente(null);
      setSuplenciasHistorial([]);
      setMensajeBusquedaSuplencia("Error al realizar la búsqueda");
    } finally {
      setCargandoBusquedaSuplencia(false);
      setShowBuscarSuplenciaModal(false);
    }
  };

  return (
    <div className="flex flex-1 flex-col space-y-8 p-8">
      <div className="flex items-center justify-between space-y-2">
        <div>
          <div className="flex items-center space-x-2">
            <Users className="h-6 w-6" />
            <h2 className="text-3xl font-bold tracking-tight">Sistema de Junta Primaria</h2>
          </div>
          <p className="text-muted-foreground mt-2">Gestión de titulares, suplencias y administración del sistema.</p>
        </div>
      </div>

      <Tabs value={activeTab} onValueChange={setActiveTab} className="space-y-4">
        <TabsList className="grid w-full grid-cols-5">
          <TabsTrigger value="titulares" className="flex items-center space-x-2">
            <Users className="h-4 w-4" />
            <span>Titulares</span>
          </TabsTrigger>
          <TabsTrigger value="suplencias" className="flex items-center space-x-2">
            <FileUser className="h-4 w-4" />
            <span>Suplencias</span>
          </TabsTrigger>
          <TabsTrigger value="antiguedad" className="flex items-center space-x-2">
            <Calendar className="h-4 w-4" />
            <span>Antigüedad para Traslado</span>
          </TabsTrigger>
          <TabsTrigger value="planillas" className="flex items-center space-x-2">
            <FileText className="h-4 w-4" />
            <span>Impresión de Planillas</span>
          </TabsTrigger>
          <TabsTrigger value="listado" className="flex items-center space-x-2">
            <List className="h-4 w-4" />
            <span>Generar Listado</span>
          </TabsTrigger>
        </TabsList>

        <TabsContent value="titulares" className="space-y-4">
          {!showCargarForm ? (
            <Card>
              <CardHeader>
                <CardTitle>Gestión de Titulares</CardTitle>
                <CardDescription>Administrar y consultar información de titulares</CardDescription>
              </CardHeader>
              <CardContent className="space-y-4">
                <div className="flex flex-col items-start gap-4">
                  <Button className="flex items-center space-x-2" size="lg" onClick={() => setShowCargarForm(true)}>
                    <UserPlus className="h-5 w-5" />
                    <span>Cargar Titular</span>
                  </Button>
                  
                  <Dialog open={showBuscarModal} onOpenChange={setShowBuscarModal}>
                    <DialogTrigger asChild>
                      <Button variant="outline" className="flex items-center space-x-2" size="lg">
                        <Search className="h-5 w-5" />
                        <span>Buscar Titular</span>
                      </Button>
                    </DialogTrigger>
                    <DialogContent className="sm:max-w-md">
                      <DialogHeader>
                        <DialogTitle>Introducir el valor del parámetro</DialogTitle>
                        <DialogDescription>
                          Ingrese N° DNI
                        </DialogDescription>
                      </DialogHeader>
                      <div className="space-y-4">
                        <div>
                          <Input 
                            placeholder="N° DNI"
                            value={buscarDni}
                            onChange={(e) => setBuscarDni(e.target.value)}
                          />
                        </div>
                        <div className="flex justify-end space-x-2">
                          <Button variant="outline" onClick={() => {
                            setShowBuscarModal(false);
                            setBuscarDni("");
                            setMensajeBusqueda("");
                            setDatosDocente(null);
                            setEstablecimientosHistorial([]);
                          }}>
                            Cancelar
                          </Button>
                          <Button 
                            onClick={buscarPersonaPorDni}
                            disabled={cargandoBusqueda}
                          >
                            {cargandoBusqueda ? "Buscando..." : "Aceptar"}
                          </Button>
                        </div>
                      </div>
                    </DialogContent>
                  </Dialog>
                </div>

                {/* Mostrar mensaje de búsqueda */}
                {mensajeBusqueda && (
                  <div className="mt-4">
                    <p className="text-sm text-muted-foreground">{mensajeBusqueda}</p>
                  </div>
                )}

                {/* Mostrar resultados de búsqueda */}
                {datosDocente && (
                  <Card className="mt-6">
                    <CardHeader>
                      <CardTitle>Establecimientos donde el docente es o fue Titular</CardTitle>
                      <CardDescription>
                        Historial de establecimientos y movimientos del docente
                      </CardDescription>
                    </CardHeader>
                    <CardContent>
                      {/* Información del docente */}
                      <div className="mb-6 p-4 bg-blue-50 rounded-lg">
                        <div className="grid grid-cols-2 md:grid-cols-4 gap-4 text-sm">
                          <div>
                            <span className="font-medium text-gray-600">Numero Documento:</span>
                            <div className="font-semibold">{datosDocente.numero_documento}</div>
                          </div>
                          <div>
                            <span className="font-medium text-gray-600">Apellido:</span>
                            <div className="font-semibold">{datosDocente.apellido}</div>
                          </div>
                          <div>
                            <span className="font-medium text-gray-600">Nombre:</span>
                            <div className="font-semibold">{datosDocente.nombre}</div>
                          </div>
                          <div>
                            <span className="font-medium text-gray-600">Denominacion del Cargo:</span>
                            <div className="font-semibold">{datosDocente.cargo || 'Maestro de Especialidades - Nivel Inicial y/o Primario - MUSICA'}</div>
                          </div>
                        </div>
                      </div>
                      
                      <div className="border border-gray-200 rounded-lg bg-white">
                        <Table>
                          <TableHeader>
                            <TableRow className="bg-gray-50 border-b border-gray-200">
                              <TableHead className="h-12 px-4 text-left align-middle font-medium text-gray-500 text-sm">Fecha de Titularización</TableHead>
                              <TableHead className="h-12 px-4 text-left align-middle font-medium text-gray-500 text-sm">Fecha de Traslado o Baja</TableHead>
                              <TableHead className="h-12 px-4 text-left align-middle font-medium text-gray-500 text-sm">Establecimiento</TableHead>
                              <TableHead className="h-12 px-4 text-center align-middle font-medium text-gray-500 text-sm">Años</TableHead>
                              <TableHead className="h-12 px-4 text-center align-middle font-medium text-gray-500 text-sm">Meses</TableHead>
                              <TableHead className="h-12 px-4 text-center align-middle font-medium text-gray-500 text-sm">Días</TableHead>
                              <TableHead className="h-12 px-4 text-center align-middle font-medium text-gray-500 text-sm">Tipo de Traslado</TableHead>
                            </TableRow>
                          </TableHeader>
                          <TableBody>
                            {establecimientosHistorial.map((establecimiento: any, index) => (
                              <TableRow key={index} className="border-b border-gray-100 hover:bg-gray-50/50">
                                <TableCell className="px-4 py-3 text-sm">
                                  {new Date(establecimiento.fecha_titularizacion).toLocaleDateString('es-ES', {
                                    day: '2-digit',
                                    month: '2-digit',
                                    year: 'numeric'
                                  })}
                                </TableCell>
                                <TableCell className="px-4 py-3 text-sm">
                                  {establecimiento.fecha_traslado_baja ? (
                                    <span className="text-gray-900">
                                      {new Date(establecimiento.fecha_traslado_baja).toLocaleDateString('es-ES', {
                                        day: '2-digit',
                                        month: '2-digit',
                                        year: 'numeric'
                                      })}
                                    </span>
                                  ) : (
                                    <span className="inline-flex items-center text-xs font-medium text-green-700">
                                      <div className="w-2 h-2 bg-green-500 rounded-full mr-1.5"></div>
                                      Activo
                                    </span>
                                  )}
                                </TableCell>
                                <TableCell className="px-4 py-3 text-sm">
                                  <span className="text-blue-600 font-medium hover:text-blue-800 cursor-pointer">
                                    {establecimiento.establecimiento}
                                  </span>
                                </TableCell>
                                <TableCell className="px-4 py-3 text-sm text-center">
                                  <span className="font-medium text-gray-900">
                                    {establecimiento.anos}
                                  </span>
                                </TableCell>
                                <TableCell className="px-4 py-3 text-sm text-center">
                                  <span className="font-medium text-gray-900">
                                    {establecimiento.meses}
                                  </span>
                                </TableCell>
                                <TableCell className="px-4 py-3 text-sm text-center">
                                  <span className="font-medium text-gray-900">
                                    {establecimiento.dias}
                                  </span>
                                </TableCell>
                                <TableCell className="px-4 py-3 text-sm text-center">
                                  <span className="text-blue-600 font-medium">
                                    {establecimiento.tipo_traslado}
                                  </span>
                                </TableCell>
                              </TableRow>
                            ))}
                          </TableBody>
                        </Table>
                        
                        {/* Paginación */}
                        <div className="flex items-center justify-between px-4 py-3 border-t border-gray-200 bg-gray-50">
                          <div className="flex items-center text-sm text-gray-500">
                            <span>0 of {establecimientosHistorial.length} row(s) selected.</span>
                          </div>
                          <div className="flex items-center space-x-6">
                            <div className="flex items-center space-x-2">
                              <span className="text-sm text-gray-500">Rows per page</span>
                              <select className="border border-gray-300 rounded px-2 py-1 text-sm bg-white">
                                <option value="10">10</option>
                                <option value="25">25</option>
                                <option value="50">50</option>
                              </select>
                            </div>
                            <div className="flex items-center space-x-2 text-sm text-gray-500">
                              <span>Page 1 of 1</span>
                            </div>
                            <div className="flex items-center space-x-1">
                              <button className="p-1 rounded border border-gray-300 disabled:opacity-50 disabled:cursor-not-allowed" disabled>
                                <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M11 19l-7-7 7-7M21 19l-7-7 7-7" />
                                </svg>
                              </button>
                              <button className="p-1 rounded border border-gray-300 disabled:opacity-50 disabled:cursor-not-allowed" disabled>
                                <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 19l-7-7 7-7" />
                                </svg>
                              </button>
                              <button className="p-1 rounded border border-gray-300 disabled:opacity-50 disabled:cursor-not-allowed" disabled>
                                <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
                                </svg>
                              </button>
                              <button className="p-1 rounded border border-gray-300 disabled:opacity-50 disabled:cursor-not-allowed" disabled>
                                <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M13 5l7 7-7 7M5 5l7 7-7 7" />
                                </svg>
                              </button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </CardContent>
                  </Card>
                )}
              </CardContent>
            </Card>
          ) : (
            <Card>
              <CardHeader>
                <div className="flex items-center justify-between">
                  <div>
                    <CardTitle>Cargar Antigüedad Titular</CardTitle>
                    <CardDescription>Complete todos los campos requeridos</CardDescription>
                  </div>
                  <Button variant="outline" size="sm" onClick={() => setShowCargarForm(false)}>
                    <X className="h-4 w-4" />
                  </Button>
                </div>
              </CardHeader>
              <CardContent className="space-y-6">
                {/* Mensaje de estado */}
                {mensajeFormulario && (
                  <div className={`p-3 rounded-md ${
                    mensajeFormulario.includes("Error") || mensajeFormulario.includes("requeridos")
                      ? "bg-red-50 text-red-700 border border-red-200"
                      : mensajeFormulario.includes("exitosamente")
                      ? "bg-green-50 text-green-700 border border-green-200"
                      : "bg-blue-50 text-blue-700 border border-blue-200"
                  }`}>
                    {mensajeFormulario}
                  </div>
                )}

                <div className="grid grid-cols-1 gap-4 md:grid-cols-2">
                  <div className="space-y-2">
                    <Label htmlFor="dni">N° D.N.I.:</Label>
                    <div className="flex gap-2">
                      <Input 
                        id="dni" 
                        placeholder="Ingrese DNI" 
                        value={formData.dni}
                        onChange={(e) => {
                          const dni = e.target.value;
                          setFormData(prev => ({ ...prev, dni }));
                          // Buscar automáticamente cuando el DNI tenga longitud suficiente
                          if (dni.length >= 7) {
                            buscarPersonaFormulario(dni);
                          } else {
                            setPersonaEncontrada(null);
                            setMensajeFormulario("");
                          }
                        }}
                        disabled={cargandoPersona}
                      />
                      <Button
                        type="button"
                        variant="outline"
                        size="sm"
                        onClick={() => buscarPersonaFormulario(formData.dni)}
                        disabled={cargandoPersona || !formData.dni.trim()}
                      >
                        {cargandoPersona ? (
                          <div className="h-4 w-4 animate-spin rounded-full border-2 border-gray-500 border-t-transparent" />
                        ) : (
                          <Search className="h-4 w-4" />
                        )}
                      </Button>
                    </div>
                  </div>
                  <div className="space-y-2">
                    <Label htmlFor="apellido">Apellido:</Label>
                    <Input 
                      id="apellido" 
                      placeholder="Ingrese apellido" 
                      value={formData.apellido}
                      onChange={(e) => setFormData(prev => ({ ...prev, apellido: e.target.value }))}
                    />
                  </div>
                </div>

                <div className="grid grid-cols-1 gap-4 md:grid-cols-2">
                  <div className="space-y-2">
                    <Label htmlFor="nombre">Nombre:</Label>
                    <Input 
                      id="nombre" 
                      placeholder="Ingrese nombre" 
                      value={formData.nombre}
                      onChange={(e) => setFormData(prev => ({ ...prev, nombre: e.target.value }))}
                    />
                  </div>
                  <div className="space-y-2">
                    <Label htmlFor="cargo">Denominación del Cargo:</Label>
                    <Input 
                      id="cargo" 
                      placeholder="Ingrese denominación del cargo" 
                      value={formData.denominacion_cargo}
                      onChange={(e) => setFormData(prev => ({ ...prev, denominacion_cargo: e.target.value }))}
                    />
                  </div>
                </div>

                <div className="grid grid-cols-1 gap-4 md:grid-cols-2">
                  <div className="space-y-2">
                    <Label htmlFor="fecha-titularizacion">Fecha de Titularización:</Label>
                    <Input 
                      id="fecha-titularizacion" 
                      type="date" 
                      value={formData.fecha_titularizacion}
                      onChange={(e) => setFormData(prev => ({ ...prev, fecha_titularizacion: e.target.value }))}
                    />
                  </div>
                  <div className="space-y-2">
                    <Label htmlFor="fecha-traslado">Fecha de Traslado-Baja:</Label>
                    <Input 
                      id="fecha-traslado" 
                      type="date" 
                      value={formData.fecha_traslado_baja}
                      onChange={(e) => setFormData(prev => ({ ...prev, fecha_traslado_baja: e.target.value }))}
                    />
                  </div>
                </div>

                <div className="space-y-2">
                  <Label htmlFor="establecimiento">Establecimiento:</Label>
                  <Input 
                    id="establecimiento" 
                    placeholder="Ingrese establecimiento" 
                    value={formData.establecimiento}
                    onChange={(e) => setFormData(prev => ({ ...prev, establecimiento: e.target.value }))}
                  />
                </div>

                <div className="space-y-4">
                  <h3 className="rounded bg-gray-100 p-2 text-lg font-medium">
                    Datos para conformar el Listado de Traslado
                  </h3>

                  <div className="grid grid-cols-1 gap-4 md:grid-cols-2">
                    <div className="space-y-2">
                      <Label htmlFor="tipo-traslado">Tipo de Traslado:</Label>
                      <Select value={formData.tipo_traslado} onValueChange={(value) => setFormData(prev => ({ ...prev, tipo_traslado: value }))}>
                        <SelectTrigger>
                          <SelectValue placeholder="Seleccione tipo de traslado" />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="regular">Regular</SelectItem>
                          <SelectItem value="especial">Especial</SelectItem>
                          <SelectItem value="por-necesidad">Por Necesidad</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>
                    <div className="space-y-2">
                      <Label htmlFor="establecimiento-traslado">Establecimiento del que se traslada:</Label>
                      <Input 
                        id="establecimiento-traslado" 
                        placeholder="Ingrese establecimiento" 
                        value={formData.establecimiento_traslado}
                        onChange={(e) => setFormData(prev => ({ ...prev, establecimiento_traslado: e.target.value }))}
                      />
                    </div>
                  </div>

                  <div className="grid grid-cols-1 gap-4 md:grid-cols-3">
                    <div className="space-y-2">
                      <Label htmlFor="categoria">Categoría:</Label>
                      <Select value={formData.categoria} onValueChange={(value) => setFormData(prev => ({ ...prev, categoria: value }))}>
                        <SelectTrigger>
                          <SelectValue placeholder="Seleccione" />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="A">A</SelectItem>
                          <SelectItem value="B">B</SelectItem>
                          <SelectItem value="C">C</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>
                    <div className="space-y-2">
                      <Label htmlFor="turno">Turno:</Label>
                      <Select value={formData.turno} onValueChange={(value) => setFormData(prev => ({ ...prev, turno: value }))}>
                        <SelectTrigger>
                          <SelectValue placeholder="Seleccione" />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="Mañana">Mañana</SelectItem>
                          <SelectItem value="Tarde">Tarde</SelectItem>
                          <SelectItem value="Vespertino">Vespertino</SelectItem>
                          <SelectItem value="Doble Turno">Doble Turno</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>
                    <div className="space-y-2">
                      <Label htmlFor="radio">Radio:</Label>
                      <Select value={formData.radio} onValueChange={(value) => setFormData(prev => ({ ...prev, radio: value }))}>
                        <SelectTrigger>
                          <SelectValue placeholder="Seleccione" />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="I">I</SelectItem>
                          <SelectItem value="II">II</SelectItem>
                          <SelectItem value="III">III</SelectItem>
                          <SelectItem value="IV">IV</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>
                  </div>

                  <div className="space-y-2">
                    <Label htmlFor="observaciones">Observaciones:</Label>
                    <Textarea id="observaciones" placeholder="Ingrese observaciones" rows={4} />
                  </div>
                </div>

                <div className="flex justify-center space-x-4 pt-6 border-t">
                  <Button 
                    className="bg-green-600 hover:bg-green-700 text-white px-6"
                    onClick={guardarAntiguedad}
                    disabled={guardandoFormulario}
                  >
                    {guardandoFormulario ? (
                      <>
                        <div className="h-4 w-4 animate-spin rounded-full border-2 border-white border-t-transparent mr-2" />
                        Guardando...
                      </>
                    ) : (
                      "Guardar Antigüedad"
                    )}
                  </Button>
                  
                  <Button 
                    variant="outline"
                    onClick={() => {
                      setFormData({
                        dni: "",
                        apellido: "",
                        nombre: "",
                        denominacion_cargo: "",
                        fecha_titularizacion: "",
                        fecha_traslado_baja: "",
                        establecimiento: "",
                        tipo_traslado: "",
                        establecimiento_traslado: "",
                        categoria: "",
                        turno: "",
                        radio: "",
                        observaciones: ""
                      });
                      setPersonaEncontrada(null);
                      setMensajeFormulario("");
                    }}
                    disabled={guardandoFormulario}
                  >
                    Limpiar Formulario
                  </Button>

                  <Button 
                    className="bg-blue-500 hover:bg-blue-600"
                    onClick={() => {
                      setShowLicenciasModal(true);
                      cargarTiposLicencia();
                    }}
                    disabled={guardandoFormulario}
                  >
                    Licencias
                  </Button>
                  
                  <Button 
                    className="bg-blue-500 hover:bg-blue-600"
                    onClick={() => setShowSuplenciasModal(true)}
                    disabled={guardandoFormulario}
                  >
                    Cargar Suplencias
                  </Button>
                </div>
              </CardContent>
            </Card>
          )}
        </TabsContent>

        <TabsContent value="suplencias" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Gestión de Suplencias</CardTitle>
              <CardDescription>Administrar y consultar información de suplencias</CardDescription>
            </CardHeader>
            <CardContent className="space-y-4">
              <div className="flex flex-col items-start gap-4">
                <Dialog open={showBuscarSuplenciaModal} onOpenChange={setShowBuscarSuplenciaModal}>
                  <DialogTrigger asChild>
                    <Button variant="outline" className="flex items-center space-x-2" size="lg">
                      <Search className="h-5 w-5" />
                      <span>Buscar Suplencia</span>
                    </Button>
                  </DialogTrigger>
                  <DialogContent className="sm:max-w-md">
                    <DialogHeader>
                      <DialogTitle>Buscar Suplencia</DialogTitle>
                      <DialogDescription>
                        Ingrese el DNI o nombre de la persona para buscar su suplencia
                      </DialogDescription>
                    </DialogHeader>
                    <div className="space-y-4">
                      <div className="space-y-2">
                        <Label htmlFor="buscar-suplencia">DNI o Nombre</Label>
                        <Input
                          id="buscar-suplencia"
                          placeholder="Ej: 12345678 o Juan Pérez"
                          value={buscarSuplencia}
                          onChange={(e) => setBuscarSuplencia(e.target.value)}
                        />
                      </div>
                      <div className="flex justify-end space-x-2">
                        <Button variant="outline" onClick={() => {
                          setShowBuscarSuplenciaModal(false);
                          setBuscarSuplencia("");
                          setMensajeBusquedaSuplencia("");
                          setDatosSuplente(null);
                          setSuplenciasHistorial([]);
                        }}>
                          Cancelar
                        </Button>
                        <Button 
                          onClick={buscarSuplenciasPorDni}
                          disabled={cargandoBusquedaSuplencia}
                        >
                          <Search className="h-4 w-4 mr-2" />
                          {cargandoBusquedaSuplencia ? "Buscando..." : "Buscar"}
                        </Button>
                      </div>
                    </div>
                  </DialogContent>
                </Dialog>
              </div>

              {/* Mostrar mensaje de búsqueda de suplencias */}
              {mensajeBusquedaSuplencia && (
                <div className="mt-4">
                  <p className="text-sm text-muted-foreground">{mensajeBusquedaSuplencia}</p>
                </div>
              )}

              {/* Mostrar resultados de búsqueda de suplencias */}
              {datosSuplente && (
                <Card className="mt-6">
                  <CardHeader>
                    <CardTitle>Historial de Suplencias</CardTitle>
                    <CardDescription>
                      Información de suplencias del docente
                    </CardDescription>
                  </CardHeader>
                  <CardContent>
                    {/* Información del suplente */}
                    <div className="mb-6 p-4 bg-blue-50 rounded-lg">
                      <div className="grid grid-cols-2 md:grid-cols-4 gap-4 text-sm">
                        <div>
                          <span className="font-medium text-gray-600">Numero Documento:</span>
                          <div className="font-semibold">{datosSuplente.numero_documento}</div>
                        </div>
                        <div>
                          <span className="font-medium text-gray-600">Apellido:</span>
                          <div className="font-semibold">{datosSuplente.apellido}</div>
                        </div>
                        <div>
                          <span className="font-medium text-gray-600">Nombre:</span>
                          <div className="font-semibold">{datosSuplente.nombre}</div>
                        </div>
                        <div>
                          <span className="font-medium text-gray-600">Establecimiento:</span>
                          <div className="font-semibold">{suplenciasHistorial[0]?.establecimiento || 'N/A'}</div>
                        </div>
                      </div>
                    </div>
                    
                    <Table>
                      <TableHeader>
                        <TableRow className="bg-gray-800 text-white">
                          <TableHead className="font-semibold text-white">Fecha de Inicio</TableHead>
                          <TableHead className="font-semibold text-white">Fecha de Baja</TableHead>
                          <TableHead className="font-semibold text-white">Establecimiento</TableHead>
                          <TableHead className="font-semibold text-white">Cargo</TableHead>
                          <TableHead className="font-semibold text-white">Radio</TableHead>
                          <TableHead className="font-semibold text-white">1° Titularización</TableHead>
                          <TableHead className="font-semibold text-white">2° Titularización</TableHead>
                          <TableHead className="font-semibold text-white">Observaciones</TableHead>
                        </TableRow>
                      </TableHeader>
                      <TableBody>
                        {suplenciasHistorial.map((suplencia: any, index) => (
                          <TableRow key={index} className="hover:bg-gray-50">
                            <TableCell className="text-sm">
                              {suplencia.fecha_inicio ? 
                                new Date(suplencia.fecha_inicio).toLocaleDateString('es-ES', {
                                  day: '2-digit',
                                  month: '2-digit',
                                  year: 'numeric'
                                }) : 
                                'N/A'
                              }
                            </TableCell>
                            <TableCell className="text-sm">
                              {suplencia.fecha_baja ? 
                                new Date(suplencia.fecha_baja).toLocaleDateString('es-ES', {
                                  day: '2-digit',
                                  month: '2-digit',
                                  year: 'numeric'
                                }) : 
                                'Activa'
                              }
                            </TableCell>
                            <TableCell className="text-sm font-medium">{suplencia.establecimiento || 'N/A'}</TableCell>
                            <TableCell className="text-sm">{suplencia.cargo || 'N/A'}</TableCell>
                            <TableCell className="text-sm text-center">{suplencia.radio || 'N/A'}</TableCell>
                            <TableCell className="text-sm">
                              {suplencia.primera_titularizacion ? 
                                new Date(suplencia.primera_titularizacion).toLocaleDateString('es-ES', {
                                  day: '2-digit',
                                  month: '2-digit',
                                  year: 'numeric'
                                }) : 
                                '-'
                              }
                            </TableCell>
                            <TableCell className="text-sm">
                              {suplencia.segunda_titularizacion ? 
                                new Date(suplencia.segunda_titularizacion).toLocaleDateString('es-ES', {
                                  day: '2-digit',
                                  month: '2-digit',
                                  year: 'numeric'
                                }) : 
                                '-'
                              }
                            </TableCell>
                            <TableCell className="text-sm">{suplencia.observaciones || '-'}</TableCell>
                          </TableRow>
                        ))}
                      </TableBody>
                    </Table>
                  </CardContent>
                </Card>
              )}
            </CardContent>
          </Card>
        </TabsContent>

        <TabsContent value="antiguedad" className="space-y-4">
          <CalculoAntiguedad onClose={() => setActiveTab("titulares")} />
        </TabsContent>

        <TabsContent value="planillas" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Impresión de Planillas</CardTitle>
              <CardDescription>Generar e imprimir planillas del sistema</CardDescription>
            </CardHeader>
            <CardContent className="space-y-4">
              <p className="text-muted-foreground">Contenido de planillas - En desarrollo</p>
            </CardContent>
          </Card>
        </TabsContent>

        <TabsContent value="listado" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Generar Listado</CardTitle>
              <CardDescription>Crear y exportar listados del sistema</CardDescription>
            </CardHeader>
            <CardContent className="space-y-4">
              <p className="text-muted-foreground">Contenido de listados - En desarrollo</p>
            </CardContent>
          </Card>
        </TabsContent>
      </Tabs>

      {/* Modal de Licencias */}
      <Dialog open={showLicenciasModal} onOpenChange={(open) => {
        setShowLicenciasModal(open);
        if (open) {
          // Cargar tipos de licencia cuando se abre el modal
          cargarTiposLicencia();
        }
      }}>
        <DialogContent className="sm:max-w-lg">
          <DialogHeader>
            <div className="flex items-center space-x-2">
              <CalendarDays className="h-5 w-5" />
              <DialogTitle>Cargar Licencias</DialogTitle>
            </div>
            <DialogDescription>
              Complete la información de la licencia
            </DialogDescription>
          </DialogHeader>
          <div className="space-y-4">
            {/* Mensaje de estado */}
            {mensajeLicencia && (
              <div className={`p-3 rounded-md ${
                mensajeLicencia.includes("Error") || mensajeLicencia.includes("requeridos")
                  ? "bg-red-50 text-red-700 border border-red-200"
                  : mensajeLicencia.includes("exitosamente")
                  ? "bg-green-50 text-green-700 border border-green-200"
                  : "bg-blue-50 text-blue-700 border border-blue-200"
              }`}>
                {mensajeLicencia}
              </div>
            )}

            <div className="grid grid-cols-1 gap-4">
              <div className="space-y-2">
                <Label htmlFor="dni-licencia">D.N.I.:</Label>
                <div className="flex gap-2">
                  <Input 
                    id="dni-licencia" 
                    placeholder="Ingrese DNI" 
                    value={licenciaData.dni}
                    onChange={(e) => {
                      const dni = e.target.value;
                      setLicenciaData(prev => ({ ...prev, dni }));
                      // Buscar automáticamente cuando el DNI tenga longitud suficiente
                      if (dni.length >= 7) {
                        buscarPersonaLicencia(dni);
                      } else {
                        setPersonaEncontradaLicencia(null);
                        setMensajeLicencia("");
                      }
                    }}
                    disabled={cargandoPersonaLicencia}
                  />
                  <Button
                    type="button"
                    variant="outline"
                    size="sm"
                    onClick={() => buscarPersonaLicencia(licenciaData.dni)}
                    disabled={cargandoPersonaLicencia || !licenciaData.dni.trim()}
                  >
                    {cargandoPersonaLicencia ? (
                      <div className="h-4 w-4 animate-spin rounded-full border-2 border-gray-500 border-t-transparent" />
                    ) : (
                      <Search className="h-4 w-4" />
                    )}
                  </Button>
                </div>
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="apellido-licencia">Apellido:</Label>
                <Input 
                  id="apellido-licencia" 
                  placeholder="Ingrese apellido" 
                  value={licenciaData.apellido}
                  onChange={(e) => setLicenciaData(prev => ({ ...prev, apellido: e.target.value }))}
                />
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="nombre-licencia">Nombre:</Label>
                <Input 
                  id="nombre-licencia" 
                  placeholder="Ingrese nombre" 
                  value={licenciaData.nombre}
                  onChange={(e) => setLicenciaData(prev => ({ ...prev, nombre: e.target.value }))}
                />
              </div>

              <div className="space-y-2">
                <Label htmlFor="tipo-licencia">Tipo de Licencia:</Label>
                <Select 
                  value={licenciaData.id_tipo} 
                  onValueChange={(value) => setLicenciaData(prev => ({ ...prev, id_tipo: value }))}
                >
                  <SelectTrigger>
                    <SelectValue placeholder={
                      tiposLicencia.length === 0 
                        ? "Cargando tipos de licencia..." 
                        : "Seleccione tipo de licencia"
                    } />
                  </SelectTrigger>
                  <SelectContent>
                    {tiposLicencia.length > 0 ? (
                      tiposLicencia.map((tipo: any) => (
                        <SelectItem key={tipo.id_tipo} value={tipo.id_tipo.toString()}>
                          {tipo.descripcion}
                        </SelectItem>
                      ))
                    ) : (
                      <SelectItem value="loading" disabled>
                        Cargando tipos de licencia...
                      </SelectItem>
                    )}
                  </SelectContent>
                </Select>
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="fecha-inicio">Fecha de Inicio:</Label>
                <Input 
                  id="fecha-inicio" 
                  type="date" 
                  value={licenciaData.fecha_inicio}
                  onChange={(e) => setLicenciaData(prev => ({ ...prev, fecha_inicio: e.target.value }))}
                />
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="fecha-finalizacion">Fecha de Finalización:</Label>
                <Input 
                  id="fecha-finalizacion" 
                  type="date" 
                  value={licenciaData.fecha_fin}
                  onChange={(e) => setLicenciaData(prev => ({ ...prev, fecha_fin: e.target.value }))}
                />
              </div>

              <div className="space-y-2">
                <Label htmlFor="observaciones-licencia">Observaciones:</Label>
                <Textarea 
                  id="observaciones-licencia" 
                  placeholder="Ingrese observaciones (opcional)"
                  rows={3}
                  value={licenciaData.observaciones}
                  onChange={(e) => setLicenciaData(prev => ({ ...prev, observaciones: e.target.value }))}
                />
              </div>
            </div>
            
            <div className="flex justify-end space-x-2 pt-4">
              <Button 
                variant="outline" 
                onClick={() => {
                  setShowLicenciasModal(false);
                  // Limpiar formulario al cancelar
                  setLicenciaData({
                    dni: "",
                    apellido: "",
                    nombre: "",
                    id_tipo: "",
                    fecha_inicio: "",
                    fecha_fin: "",
                    observaciones: ""
                  });
                  setPersonaEncontradaLicencia(null);
                  setMensajeLicencia("");
                }}
                disabled={guardandoLicencia}
              >
                Cancelar
              </Button>
              <Button 
                onClick={guardarLicencia}
                disabled={guardandoLicencia}
                className="bg-green-600 hover:bg-green-700"
              >
                {guardandoLicencia ? (
                  <>
                    <div className="h-4 w-4 animate-spin rounded-full border-2 border-white border-t-transparent mr-2" />
                    Guardando...
                  </>
                ) : (
                  "Guardar"
                )}
              </Button>
            </div>
          </div>
        </DialogContent>
      </Dialog>

      {/* Modal de Suplencias */}
      <Dialog open={showSuplenciasModal} onOpenChange={setShowSuplenciasModal}>
        <DialogContent className="sm:max-w-2xl">
          <DialogHeader>
            <div className="flex items-center space-x-2">
              <FileUser className="h-5 w-5" />
              <DialogTitle>Cargar Suplencias</DialogTitle>
            </div>
            <DialogDescription>
              Complete la información de la suplencia (máximo 2 suplencias activas por persona)
            </DialogDescription>
          </DialogHeader>
          <div className="space-y-6">
            {/* Mensaje de estado */}
            {mensajeSuplencia && (
              <div className={`p-3 rounded-md ${
                mensajeSuplencia.includes("Error") || mensajeSuplencia.includes("requeridos") || mensajeSuplencia.includes("ATENCIÓN")
                  ? "bg-red-50 text-red-700 border border-red-200"
                  : mensajeSuplencia.includes("exitosamente")
                  ? "bg-green-50 text-green-700 border border-green-200"
                  : "bg-blue-50 text-blue-700 border border-blue-200"
              }`}>
                {mensajeSuplencia}
              </div>
            )}

            {/* Información básica */}
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="dni-suplencia">N° de D.N.I.:</Label>
                <div className="flex gap-2">
                  <Input 
                    id="dni-suplencia" 
                    placeholder="Ingrese DNI"
                    value={suplenciaData.dni}
                    onChange={(e) => {
                      const dni = e.target.value;
                      setSuplenciaData(prev => ({ ...prev, dni }));
                      // Buscar automáticamente cuando el DNI tenga longitud suficiente
                      if (dni.length >= 7) {
                        buscarPersonaSuplencia(dni);
                      } else {
                        setPersonaEncontradaSuplencia(null);
                        setMensajeSuplencia("");
                        setSuplenciasActivas(0);
                      }
                    }}
                    disabled={cargandoPersonaSuplencia}
                  />
                  <Button
                    type="button"
                    variant="outline"
                    size="sm"
                    onClick={() => buscarPersonaSuplencia(suplenciaData.dni)}
                    disabled={cargandoPersonaSuplencia || !suplenciaData.dni.trim()}
                  >
                    {cargandoPersonaSuplencia ? (
                      <div className="h-4 w-4 animate-spin rounded-full border-2 border-gray-500 border-t-transparent" />
                    ) : (
                      <Search className="h-4 w-4" />
                    )}
                  </Button>
                </div>
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="apellido-suplencia">Apellido:</Label>
                <Input 
                  id="apellido-suplencia" 
                  placeholder="Ingrese apellido"
                  value={suplenciaData.apellido}
                  onChange={(e) => setSuplenciaData(prev => ({ ...prev, apellido: e.target.value }))}
                />
              </div>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="nombre-suplencia">Nombre:</Label>
                <Input 
                  id="nombre-suplencia" 
                  placeholder="Ingrese nombre"
                  value={suplenciaData.nombre}
                  onChange={(e) => setSuplenciaData(prev => ({ ...prev, nombre: e.target.value }))}
                />
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="cargo-suplencia">Cargo:</Label>
                <Input 
                  id="cargo-suplencia" 
                  placeholder="Ingrese cargo"
                  value={suplenciaData.cargo}
                  onChange={(e) => setSuplenciaData(prev => ({ ...prev, cargo: e.target.value }))}
                />
              </div>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="establecimiento-suplencia">Establecimiento:</Label>
                <Input 
                  id="establecimiento-suplencia" 
                  placeholder="Ingrese establecimiento"
                  value={suplenciaData.establecimiento}
                  onChange={(e) => setSuplenciaData(prev => ({ ...prev, establecimiento: e.target.value }))}
                />
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="radio-suplencia">Radio:</Label>
                <Select 
                  value={suplenciaData.radio} 
                  onValueChange={(value) => setSuplenciaData(prev => ({ ...prev, radio: value }))}
                >
                  <SelectTrigger>
                    <SelectValue placeholder="Seleccione radio" />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="I">I</SelectItem>
                    <SelectItem value="II">II</SelectItem>
                    <SelectItem value="III">III</SelectItem>
                    <SelectItem value="IV">IV</SelectItem>
                  </SelectContent>
                </Select>
              </div>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="fecha-inicio-suplencia">Fecha de Inicio:</Label>
                <Input 
                  id="fecha-inicio-suplencia" 
                  type="date"
                  value={suplenciaData.fecha_inicio}
                  onChange={(e) => setSuplenciaData(prev => ({ ...prev, fecha_inicio: e.target.value }))}
                />
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="fecha-baja-suplencia">Fecha de Baja:</Label>
                <Input 
                  id="fecha-baja-suplencia" 
                  type="date"
                  value={suplenciaData.fecha_baja}
                  onChange={(e) => setSuplenciaData(prev => ({ ...prev, fecha_baja: e.target.value }))}
                />
              </div>
            </div>

            {/* Sección especial con borde rojo para fechas de titularización */}
            <div className="border-2 border-red-300 rounded-lg p-4 bg-red-50">
              <div className="text-red-600 font-medium mb-3">
                Fechas de Titularización (Máximo 2 suplencias antes de titularizar):
              </div>
              
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div className="space-y-2">
                  <Label htmlFor="primera-fecha" className="text-red-600">
                    1° Fecha de Titularización:
                  </Label>
                  <Input 
                    id="primera-fecha" 
                    type="date"
                    value={suplenciaData.primera_titularizacion}
                    onChange={(e) => setSuplenciaData(prev => ({ ...prev, primera_titularizacion: e.target.value }))}
                  />
                </div>
                
                <div className="space-y-2">
                  <Label htmlFor="segunda-fecha" className="text-red-600">
                    2° Fecha de Titularización:
                  </Label>
                  <Input 
                    id="segunda-fecha" 
                    type="date"
                    value={suplenciaData.segunda_titularizacion}
                    onChange={(e) => setSuplenciaData(prev => ({ ...prev, segunda_titularizacion: e.target.value }))}
                  />
                </div>
              </div>
            </div>

            {/* Observaciones */}
            <div className="space-y-2">
              <Label htmlFor="observaciones-suplencia">Observaciones:</Label>
              <Textarea 
                id="observaciones-suplencia" 
                placeholder="Ingrese observaciones (opcional)"
                rows={3}
                value={suplenciaData.observaciones}
                onChange={(e) => setSuplenciaData(prev => ({ ...prev, observaciones: e.target.value }))}
              />
            </div>

            {/* Sección de botones en la parte inferior */}
            <div className="flex justify-between items-center pt-4 border-t">
              <div className="flex space-x-2 items-center">
                <Label htmlFor="buscar-dni-suplencia" className="text-sm">
                  Buscar DNI:
                </Label>
                <Input
                  id="buscar-dni-suplencia"
                  placeholder="Ingrese DNI"
                  value={suplenciaData.buscarDni}
                  onChange={(e) => {
                    setSuplenciaData(prev => ({...prev, buscarDni: e.target.value}));
                    if (e.target.value.length >= 7) {
                      buscarPersonaSuplencia(e.target.value);
                    }
                  }}
                  className="w-32"
                />
                <Button 
                  variant="outline" 
                  size="sm"
                  onClick={() => buscarPersonaSuplencia(suplenciaData.buscarDni)}
                >
                  Buscar
                </Button>
                <Button 
                  variant="outline" 
                  size="sm"
                  onClick={limpiarFormularioSuplencia}
                >
                  Nuevo
                </Button>
              </div>
              
              <div className="flex space-x-2">
                <Button 
                  variant="outline" 
                  onClick={() => {
                    setShowSuplenciasModal(false);
                    limpiarFormularioSuplencia();
                  }}
                  disabled={guardandoSuplencia}
                >
                  Cancelar
                </Button>
                <Button 
                  onClick={guardarSuplencia}
                  disabled={guardandoSuplencia}
                  className="bg-blue-600 hover:bg-blue-700"
                >
                  {guardandoSuplencia ? (
                    <>
                      <div className="h-4 w-4 animate-spin rounded-full border-2 border-white border-t-transparent mr-2" />
                      Guardando...
                    </>
                  ) : (
                    "Guardar"
                  )}
                </Button>
              </div>
            </div>
          </div>
        </DialogContent>
      </Dialog>

    </div>
  );
}
