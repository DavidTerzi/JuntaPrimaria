"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import { Users, FileUser, Calendar, FileText, List, UserPlus, Search, X, CalendarDays } from "lucide-react";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Textarea } from "@/components/ui/textarea";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Dialog, DialogContent, DialogDescription, DialogHeader, DialogTitle, DialogTrigger } from "@/components/ui/dialog";
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table";

export default function Page() {
  const router = useRouter();
  const [activeTab, setActiveTab] = useState("titulares");
  const [showCargarForm, setShowCargarForm] = useState(false);
  const [showBuscarModal, setShowBuscarModal] = useState(false);
  const [showLicenciasModal, setShowLicenciasModal] = useState(false);
  const [showSuplenciasModal, setShowSuplenciasModal] = useState(false);
  const [showBuscarSuplenciaModal, setShowBuscarSuplenciaModal] = useState(false);
  const [buscarDni, setBuscarDni] = useState("");
  
  // Estados para búsqueda de titulares
  const [datosDocente, setDatosDocente] = useState<any>(null);
  const [establecimientosHistorial, setEstablecimientosHistorial] = useState([]);
  const [cargandoBusqueda, setCargandoBusqueda] = useState(false);
  const [mensajeBusqueda, setMensajeBusqueda] = useState("");

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
  
  // Estados para el formulario de suplencias
  const [dniSuplencia, setDniSuplencia] = useState("");
  const [apellidoSuplencia, setApellidoSuplencia] = useState("");
  const [nombreSuplencia, setNombreSuplencia] = useState("");
  const [cargoSuplencia, setCargoSuplencia] = useState("");
  const [establecimientoSuplencia, setEstablecimientoSuplencia] = useState("");
  const [radioSuplencia, setRadioSuplencia] = useState("");
  const [fechaInicioSuplencia, setFechaInicioSuplencia] = useState("");
  const [fechaBajaSuplencia, setFechaBajaSuplencia] = useState("");
  const [primeraFechaTitularizacion, setPrimeraFechaTitularizacion] = useState("");
  const [segundaFechaTitularizacion, setSegundaFechaTitularizacion] = useState("");
  const [buscarDniSuplencia, setBuscarDniSuplencia] = useState("");
  const [cargandoDatosSuplencia, setCargandoDatosSuplencia] = useState(false);

  // Función para buscar persona por DNI y llenar el formulario
  const buscarYLlenarDatosSuplencia = async (dni: string) => {
    if (!dni.trim()) return;

    setCargandoDatosSuplencia(true);

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
        const persona = data.data[0]; // Tomar el primer resultado
        
        // Llenar automáticamente los campos del formulario
        setDniSuplencia(persona.dni || "");
        setApellidoSuplencia(persona.apellido || "");
        setNombreSuplencia(persona.nombre || "");
        // Los demás campos como cargo, establecimiento, etc. se mantienen vacíos para que el usuario los complete
        
        console.log("Datos cargados automáticamente:", persona);
      } else {
        // Si no se encuentra la persona, limpiar los campos
        alert("No se encontró ninguna persona con ese DNI");
        limpiarFormularioSuplencia();
      }
    } catch (error) {
      console.error('Error al buscar persona:', error);
      alert("Error al buscar la persona");
    } finally {
      setCargandoDatosSuplencia(false);
    }
  };

  // Función para limpiar el formulario de suplencias
  const limpiarFormularioSuplencia = () => {
    setDniSuplencia("");
    setApellidoSuplencia("");
    setNombreSuplencia("");
    setCargoSuplencia("");
    setEstablecimientoSuplencia("");
    setRadioSuplencia("");
    setFechaInicioSuplencia("");
    setFechaBajaSuplencia("");
    setPrimeraFechaTitularizacion("");
    setSegundaFechaTitularizacion("");
    setBuscarDniSuplencia("");
  };
  const [buscarSuplencia, setBuscarSuplencia] = useState("");

  return (
    <div className="flex flex-1 flex-col space-y-8 p-8">
      <div className="flex items-center justify-between space-y-2">
        <div>
          <div className="flex items-center space-x-2">
            <Users className="h-6 w-6" />
            <h2 className="text-3xl font-bold tracking-tight">Sistema de Junta Primaria</h2>
          </div>
          <p className="text-muted-foreground mt-2">
            Gestión de titulares, suplencias y administración del sistema.
          </p>
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
                <div className="flex flex-col gap-4 items-start">
                  <Button 
                    className="flex items-center space-x-2" 
                    size="lg"
                    onClick={() => setShowCargarForm(true)}
                  >
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
                      
                      <Table>
                        <TableHeader>
                          <TableRow className="bg-gray-800 text-white">
                            <TableHead className="font-semibold text-white">Fecha de Titularización</TableHead>
                            <TableHead className="font-semibold text-white">Fecha de Traslado o Baja</TableHead>
                            <TableHead className="font-semibold text-white">Establecimiento</TableHead>
                            <TableHead className="font-semibold text-white">Años</TableHead>
                            <TableHead className="font-semibold text-white">Meses</TableHead>
                            <TableHead className="font-semibold text-white">Días</TableHead>
                            <TableHead className="font-semibold text-white">Tipo de Traslado</TableHead>
                          </TableRow>
                        </TableHeader>
                        <TableBody>
                          {establecimientosHistorial.map((establecimiento: any, index) => (
                            <TableRow key={index} className="hover:bg-gray-50">
                              <TableCell className="text-sm">
                                {new Date(establecimiento.fecha_titularizacion).toLocaleDateString('es-ES', {
                                  day: '2-digit',
                                  month: '2-digit',
                                  year: 'numeric'
                                })}
                              </TableCell>
                              <TableCell className="text-sm">
                                {establecimiento.fecha_traslado_baja ? 
                                  new Date(establecimiento.fecha_traslado_baja).toLocaleDateString('es-ES', {
                                    day: '2-digit',
                                    month: '2-digit',
                                    year: 'numeric'
                                  }) : 
                                  'Activo'
                                }
                              </TableCell>
                              <TableCell className="text-sm font-medium">{establecimiento.establecimiento}</TableCell>
                              <TableCell className="text-sm text-center">{establecimiento.anos}</TableCell>
                              <TableCell className="text-sm text-center">{establecimiento.meses}</TableCell>
                              <TableCell className="text-sm text-center">{establecimiento.dias}</TableCell>
                              <TableCell className="text-sm">{establecimiento.tipo_traslado}</TableCell>
                            </TableRow>
                          ))}
                        </TableBody>
                      </Table>
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
                  <Button 
                    variant="outline" 
                    size="sm"
                    onClick={() => setShowCargarForm(false)}
                  >
                    <X className="h-4 w-4" />
                  </Button>
                </div>
              </CardHeader>
              <CardContent className="space-y-6">
                <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                  <div className="space-y-2">
                    <Label htmlFor="dni">N° D.N.I.:</Label>
                    <Input id="dni" placeholder="Ingrese DNI" />
                  </div>
                  <div className="space-y-2">
                    <Label htmlFor="apellido">Apellido:</Label>
                    <Input id="apellido" placeholder="Ingrese apellido" />
                  </div>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                  <div className="space-y-2">
                    <Label htmlFor="nombre">Nombre:</Label>
                    <Input id="nombre" placeholder="Ingrese nombre" />
                  </div>
                  <div className="space-y-2">
                    <Label htmlFor="cargo">Denominación del Cargo:</Label>
                    <Input id="cargo" placeholder="Ingrese denominación del cargo" />
                  </div>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                  <div className="space-y-2">
                    <Label htmlFor="fecha-titularizacion">Fecha de Titularización:</Label>
                    <Input id="fecha-titularizacion" type="date" />
                  </div>
                  <div className="space-y-2">
                    <Label htmlFor="fecha-traslado">Fecha de Traslado-Baja:</Label>
                    <Input id="fecha-traslado" type="date" />
                  </div>
                </div>

                <div className="space-y-2">
                  <Label htmlFor="establecimiento">Establecimiento:</Label>
                  <Input id="establecimiento" placeholder="Ingrese establecimiento" />
                </div>

                <div className="space-y-4">
                  <h3 className="text-lg font-medium bg-gray-100 p-2 rounded">
                    Datos para conformar el Listado de Traslado
                  </h3>
                  
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div className="space-y-2">
                      <Label htmlFor="tipo-traslado">Tipo de Traslado:</Label>
                      <Select>
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
                      <Input id="establecimiento-traslado" placeholder="Ingrese establecimiento" />
                    </div>
                  </div>

                  <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
                    <div className="space-y-2">
                      <Label htmlFor="categoria">Categoría:</Label>
                      <Select>
                        <SelectTrigger>
                          <SelectValue placeholder="Seleccione" />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="a">A</SelectItem>
                          <SelectItem value="b">B</SelectItem>
                          <SelectItem value="c">C</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>
                    <div className="space-y-2">
                      <Label htmlFor="turno">Turno:</Label>
                      <Select>
                        <SelectTrigger>
                          <SelectValue placeholder="Seleccione" />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="mañana">Mañana</SelectItem>
                          <SelectItem value="tarde">Tarde</SelectItem>
                          <SelectItem value="vespertino">Vespertino</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>
                    <div className="space-y-2">
                      <Label htmlFor="radio">Radio:</Label>
                      <Select>
                        <SelectTrigger>
                          <SelectValue placeholder="Seleccione" />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="urbano">Urbano</SelectItem>
                          <SelectItem value="rural">Rural</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>
                  </div>

                  <div className="space-y-2">
                    <Label htmlFor="observaciones">Observaciones:</Label>
                    <Textarea 
                      id="observaciones" 
                      placeholder="Ingrese observaciones"
                      rows={4}
                    />
                  </div>
                </div>

                <div className="flex justify-center space-x-4 pt-4">
                  <Button 
                    className="bg-blue-500 hover:bg-blue-600"
                    onClick={() => setShowLicenciasModal(true)}
                  >
                    Licencias
                  </Button>
                  <Button 
                    className="bg-blue-500 hover:bg-blue-600"
                    onClick={() => setShowSuplenciasModal(true)}
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
              <div className="flex flex-col gap-4 items-start">                
                <Dialog open={showBuscarSuplenciaModal} onOpenChange={setShowBuscarSuplenciaModal}>
                  <DialogTrigger asChild>
                    <Button variant="outline" className="flex items-center space-x-2" size="lg">
                      <Search className="h-5 w-5" />
                      <span>Buscar Suplencia</span>
                    </Button>
                  </DialogTrigger>
                  <DialogContent className="sm:max-w-md">
                    <DialogHeader>
                      <DialogTitle>Introducir el valor del parámetro</DialogTitle>
                      <DialogDescription>
                        Ingrese término de búsqueda (DNI, nombre, establecimiento, etc.)
                      </DialogDescription>
                    </DialogHeader>
                    <div className="space-y-4">
                      <div>
                        <Input 
                          placeholder="Término de búsqueda"
                          value={buscarSuplencia}
                          onChange={(e) => setBuscarSuplencia(e.target.value)}
                          onKeyPress={(e) => {
                            if (e.key === 'Enter' && buscarSuplencia.trim()) {
                              router.push(`/dashboard/suplencias?search=${encodeURIComponent(buscarSuplencia.trim())}`);
                              setShowBuscarSuplenciaModal(false);
                              setBuscarSuplencia("");
                            }
                          }}
                        />
                      </div>
                      <div className="flex justify-end space-x-2">
                        <Button variant="outline" onClick={() => {
                          setShowBuscarSuplenciaModal(false);
                          setBuscarSuplencia("");
                        }}>
                          Cancelar
                        </Button>
                        <Button onClick={() => {
                          if (buscarSuplencia.trim()) {
                            router.push(`/dashboard/suplencias?search=${encodeURIComponent(buscarSuplencia.trim())}`);
                            setShowBuscarSuplenciaModal(false);
                            setBuscarSuplencia("");
                          }
                        }}>
                          Aceptar
                        </Button>
                      </div>
                    </div>
                  </DialogContent>
                </Dialog>
              </div>
            </CardContent>
          </Card>
        </TabsContent>

        <TabsContent value="antiguedad" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Antigüedad para Traslado</CardTitle>
              <CardDescription>Consultar y gestionar antigüedad para traslados</CardDescription>
            </CardHeader>
            <CardContent className="space-y-4">
              <p className="text-muted-foreground">Contenido de antigüedad - En desarrollo</p>
            </CardContent>
          </Card>
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
      <Dialog open={showLicenciasModal} onOpenChange={setShowLicenciasModal}>
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
            <div className="grid grid-cols-1 gap-4">
              <div className="space-y-2">
                <Label htmlFor="dni-licencia">D.N.I.:</Label>
                <Input id="dni-licencia" placeholder="Ingrese DNI" />
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="apellido-licencia">Apellido:</Label>
                <Input id="apellido-licencia" placeholder="Ingrese apellido" />
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="nombre-licencia">Nombre:</Label>
                <Input id="nombre-licencia" placeholder="Ingrese nombre" />
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="fecha-inicio">Fecha de Inicio:</Label>
                <Input id="fecha-inicio" type="date" />
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="fecha-finalizacion">Fecha de Finalización:</Label>
                <Input id="fecha-finalizacion" type="date" />
              </div>
            </div>
            
            <div className="flex justify-end space-x-2 pt-4">
              <Button variant="outline" onClick={() => setShowLicenciasModal(false)}>
                Cancelar
              </Button>
              <Button onClick={() => {
                // TODO: Aquí se agregará la lógica para guardar la licencia
                console.log("Guardando licencia...");
                setShowLicenciasModal(false);
              }}>
                Guardar
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
              Complete la información de la suplencia
            </DialogDescription>
          </DialogHeader>
          <div className="space-y-6">
            {/* Información básica */}
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="dni-suplencia">N° de D.N.I.:</Label>
                <Input 
                  id="dni-suplencia" 
                  placeholder="Ingrese DNI"
                  value={dniSuplencia}
                  onChange={(e) => setDniSuplencia(e.target.value)}
                />
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="apellido-suplencia">Apellido:</Label>
                <Input 
                  id="apellido-suplencia" 
                  placeholder="Ingrese apellido"
                  value={apellidoSuplencia}
                  onChange={(e) => setApellidoSuplencia(e.target.value)}
                />
              </div>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="nombre-suplencia">Nombre:</Label>
                <Input 
                  id="nombre-suplencia" 
                  placeholder="Ingrese nombre"
                  value={nombreSuplencia}
                  onChange={(e) => setNombreSuplencia(e.target.value)}
                />
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="cargo-suplencia">Cargo:</Label>
                <Input 
                  id="cargo-suplencia" 
                  placeholder="Ingrese cargo"
                  value={cargoSuplencia}
                  onChange={(e) => setCargoSuplencia(e.target.value)}
                />
              </div>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="establecimiento-suplencia">Establecimiento:</Label>
                <Input 
                  id="establecimiento-suplencia" 
                  placeholder="Ingrese establecimiento"
                  value={establecimientoSuplencia}
                  onChange={(e) => setEstablecimientoSuplencia(e.target.value)}
                />
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="radio-suplencia">Radio:</Label>
                <Input 
                  id="radio-suplencia" 
                  placeholder="Ingrese radio"
                  value={radioSuplencia}
                  onChange={(e) => setRadioSuplencia(e.target.value)}
                />
              </div>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="fecha-inicio-suplencia">Fecha de Inicio:</Label>
                <Input 
                  id="fecha-inicio-suplencia" 
                  type="date"
                  value={fechaInicioSuplencia}
                  onChange={(e) => setFechaInicioSuplencia(e.target.value)}
                />
              </div>
              
              <div className="space-y-2">
                <Label htmlFor="fecha-baja-suplencia">Fecha de Baja:</Label>
                <Input 
                  id="fecha-baja-suplencia" 
                  type="date"
                  value={fechaBajaSuplencia}
                  onChange={(e) => setFechaBajaSuplencia(e.target.value)}
                />
              </div>
            </div>

            {/* Sección especial con borde rojo */}
            <div className="border-2 border-red-300 rounded-lg p-4 bg-red-50">
              <div className="text-red-600 font-medium mb-3">
                Colocar aquí las Fechas de Titularización de las unidades de las que el docente se trasladará:
              </div>
              
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div className="space-y-2">
                  <Label htmlFor="primera-fecha" className="text-red-600">
                    1° Fecha de Titularización:
                  </Label>
                  <Input 
                    id="primera-fecha" 
                    type="date"
                    value={primeraFechaTitularizacion}
                    onChange={(e) => setPrimeraFechaTitularizacion(e.target.value)}
                  />
                </div>
                
                <div className="space-y-2">
                  <Label htmlFor="segunda-fecha" className="text-red-600">
                    2° Fecha de Titularización:
                  </Label>
                  <Input 
                    id="segunda-fecha" 
                    type="date"
                    value={segundaFechaTitularizacion}
                    onChange={(e) => setSegundaFechaTitularizacion(e.target.value)}
                  />
                </div>
              </div>
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
                  value={buscarDniSuplencia}
                  onChange={(e) => setBuscarDniSuplencia(e.target.value)}
                  className="w-32"
                />
                <Button 
                  variant="outline" 
                  size="sm"
                  onClick={() => buscarYLlenarDatosSuplencia(buscarDniSuplencia)}
                  disabled={cargandoDatosSuplencia}
                >
                  {cargandoDatosSuplencia ? "Buscando..." : "Buscar"}
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
                <Button variant="outline" onClick={() => {
                  setShowSuplenciasModal(false);
                  limpiarFormularioSuplencia();
                }}>
                  Cancelar
                </Button>
                <Button onClick={() => {
                  // TODO: Aquí se agregará la lógica para guardar la suplencia en la base de datos
                  const datosSuplencia = {
                    dni: dniSuplencia,
                    apellido: apellidoSuplencia,
                    nombre: nombreSuplencia,
                    cargo: cargoSuplencia,
                    establecimiento: establecimientoSuplencia,
                    radio: radioSuplencia,
                    fechaInicio: fechaInicioSuplencia,
                    fechaBaja: fechaBajaSuplencia,
                    primeraFechaTitularizacion: primeraFechaTitularizacion,
                    segundaFechaTitularizacion: segundaFechaTitularizacion
                  };
                  console.log("Guardando suplencia:", datosSuplencia);
                  setShowSuplenciasModal(false);
                  limpiarFormularioSuplencia();
                }}>
                  Guardar
                </Button>
              </div>
            </div>
          </div>
        </DialogContent>
      </Dialog>
    </div>
  );
}
