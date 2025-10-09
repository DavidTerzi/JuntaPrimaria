"use client";

import { useState } from "react";

import { ArrowLeft } from "lucide-react";

import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Label } from "@/components/ui/label";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table";

interface DocenteListado {
  DNI: string;
  Apellido: string;
  Nombre: string;
  DenominacionDelCargo: string;
  ListadoDeJunta: string;
  TipoDeTraslado: string;
  Establecimiento: string;
  Turno: string;
  Categoria: string;
  Radio: string;
  Años: string;
  Meses: string;
  Dias: string;
  Observaciones: string;
}

interface GenerarListadoProps {
  onBack: () => void;
}

export default function GenerarListado({ onBack }: GenerarListadoProps) {
  const [especialidadSeleccionada, setEspecialidadSeleccionada] = useState<string | undefined>(undefined);
  const [mostrarResultados, setMostrarResultados] = useState(false);
  const [docentes, setDocentes] = useState<DocenteListado[]>([]);
  const [cargando, setCargando] = useState(false);

  const especialidades = [
    "Vice Director 1ª Categoría - Educación Primaria",
    "Maestro de Grado Educación Primaria",
    "Maestro de Educación Inicial - Jornada Simple",
    "Celador Educacion Especial",
    "Director 1° Categoría - Nivel Inicial c Jardines de Infantes Nuclearizados Zonales",
    "Maestro de Especialidades - Educación Inicial y/o Primario - Jornada Simple - MUSICA",
    "Maestro de Especialidades - Educación Inicial y/o Primario - Jornada Simple - EDUCACION FISICA",
  ];

  const handleGenerarListado = async () => {
    // TODO: Implementar la lógica para generar el listado general
    console.log("Generar listado general");
  };

  const handleFiltrarPorEspecialidad = async () => {
    if (!especialidadSeleccionada) {
      alert("Por favor, seleccione una especialidad");
      return;
    }

    setCargando(true);

    try {
      // TODO: Llamar a la API para obtener los docentes filtrados por especialidad
      // const response = await fetch(`/api/listado/filtrar?especialidad=${encodeURIComponent(especialidadSeleccionada)}`);
      // const data = await response.json();
      // setDocentes(data);

      // Datos de ejemplo basados en la imagen proporcionada
      const datosEjemplo: DocenteListado[] = [
        {
          DNI: "16397534",
          Apellido: "CASTRO FLORES",
          Nombre: "María Estela",
          DenominacionDelCargo: "Vice Director 1ª Categoría - Educación Primaria - Jornada Simple / EMER",
          ListadoDeJunta: "Vice Director 1ª Categoría - Educación Primaria",
          TipoDeTraslado: "Ordinario",
          Establecimiento: "TENIENTE GRAL. PEDRO EUGENIO ARAMBURU T.M.",
          Turno: "Mañana",
          Categoria: "1",
          Radio: "3",
          Años: "34",
          Meses: "9",
          Dias: "17",
          Observaciones: "",
        },
        {
          DNI: "17724016",
          Apellido: "GUERRERO",
          Nombre: "Josefina Encarnación",
          DenominacionDelCargo: "Vice Director 1ª Categoría - Educación Primaria - Jornada Simple / EMER",
          ListadoDeJunta: "Vice Director 1ª Categoría - Educación Primaria",
          TipoDeTraslado: "Ordinario",
          Establecimiento: "DR. CARLOS PELLEGRINI",
          Turno: "Mañana",
          Categoria: "1",
          Radio: "1",
          Años: "33",
          Meses: "7",
          Dias: "2",
          Observaciones: "",
        },
        {
          DNI: "20344778",
          Apellido: "FUENTES",
          Nombre: "Mónica Isabel",
          DenominacionDelCargo: "Vice Director 1ª Categoría - Educación Primaria - Jornada Simple / EMER",
          ListadoDeJunta: "Vice Director 1ª Categoría - Educación Primaria",
          TipoDeTraslado: "Ordinario",
          Establecimiento: "LUIS JORGE FONTANA",
          Turno: "Mañana",
          Categoria: "1",
          Radio: "1",
          Años: "29",
          Meses: "9",
          Dias: "9",
          Observaciones: "",
        },
        {
          DNI: "22014234",
          Apellido: "CHIRINO",
          Nombre: "Teresa Fany",
          DenominacionDelCargo: "Vice Director 1ª Categoría - Educación Primaria - Jornada Simple / EMER",
          ListadoDeJunta: "Vice Director 1ª Categoría - Educación Primaria",
          TipoDeTraslado: "Ordinario",
          Establecimiento: "REGIMIENTO DE PATRICIOS",
          Turno: "Mañana y Tarde",
          Categoria: "1",
          Radio: "4",
          Años: "29",
          Meses: "6",
          Dias: "11",
          Observaciones: "",
        },
        {
          DNI: "20480017",
          Apellido: "ÁLVAREZ GUEVARA",
          Nombre: "Nancy Viviana",
          DenominacionDelCargo: "Vice Director 1ª Categoría - Educación Primaria - Jornada Simple / EMER",
          ListadoDeJunta: "Vice Director 1ª Categoría - Educación Primaria",
          TipoDeTraslado: "Ordinario",
          Establecimiento: "SATURNINO SEGUROLA",
          Turno: "Mañana y Tarde",
          Categoria: "1",
          Radio: "5",
          Años: "28",
          Meses: "4",
          Dias: "26",
          Observaciones: "",
        },
        {
          DNI: "20279701",
          Apellido: "HERRERA",
          Nombre: "Sandra Viviana",
          DenominacionDelCargo: "Vice Director 1ª Categoría - Educación Primaria - Jornada Simple / EMER",
          ListadoDeJunta: "Vice Director 1ª Categoría - Educación Primaria",
          TipoDeTraslado: "Ordinario",
          Establecimiento: "DR. PABLO RAMELLA",
          Turno: "Mañana",
          Categoria: "1",
          Radio: "2",
          Años: "27",
          Meses: "5",
          Dias: "19",
          Observaciones: "",
        },
        {
          DNI: "24020196",
          Apellido: "BARÓN",
          Nombre: "Silvana Leticia",
          DenominacionDelCargo: "Vice Director 1ª Categoría - Educación Primaria - Jornada Simple / EMER",
          ListadoDeJunta: "Vice Director 1ª Categoría - Educación Primaria",
          TipoDeTraslado: "Ordinario",
          Establecimiento: "Presidente Juan Domingo Perón",
          Turno: "Tarde",
          Categoria: "1",
          Radio: "3",
          Años: "26",
          Meses: "5",
          Dias: "22",
          Observaciones: "",
        },
        {
          DNI: "24689934",
          Apellido: "MERCADO",
          Nombre: "Patricia Verónica",
          DenominacionDelCargo: "Vice Director 1ª Categoría - Educación Primaria - Jornada Simple / EMER",
          ListadoDeJunta: "Vice Director 1ª Categoría - Educación Primaria",
          TipoDeTraslado: "Ordinario",
          Establecimiento: "GRAL. ESTANISLAO SOLER T.M.",
          Turno: "Mañana",
          Categoria: "1",
          Radio: "2",
          Años: "26",
          Meses: "2",
          Dias: "1",
          Observaciones: "",
        },
        {
          DNI: "17923138",
          Apellido: "SAVASTANO",
          Nombre: "Adriana Beatriz",
          DenominacionDelCargo: "Vice Director 1ª Categoría - Educación Primaria - Jornada Simple / EMER",
          ListadoDeJunta: "Vice Director 1ª Categoría - Educación Primaria",
          TipoDeTraslado: "Ordinario",
          Establecimiento: "SARMIENTO",
          Turno: "Mañana",
          Categoria: "1",
          Radio: "1",
          Años: "24",
          Meses: "10",
          Dias: "11",
          Observaciones: "NO PRESENTA FOJA DE SERVICIOS EN EL ORDEN PRIVADO",
        },
      ];

      setDocentes(datosEjemplo);
      setMostrarResultados(true);
    } catch (error) {
      console.error("Error al filtrar por especialidad:", error);
      alert("Error al filtrar por especialidad");
    } finally {
      setCargando(false);
    }
  };

  return (
    <Card>
      <CardHeader>
        <div className="flex items-center justify-between">
          <div className="flex items-center space-x-3">
            <Button variant="outline" size="icon" onClick={onBack}>
              <ArrowLeft className="h-4 w-4" />
            </Button>
            <CardTitle>Generar Listado</CardTitle>
          </div>
        </div>
      </CardHeader>
      <CardContent className="space-y-8">
        {!mostrarResultados ? (
          <>
            {/* Sección Generar Listado General */}
            <div className="space-y-3">
              <Label className="text-base font-semibold">Generar Listado General:</Label>
              <div>
                <Button onClick={handleGenerarListado} variant="default" className="min-w-[180px]">
                  Generar Listado
                </Button>
              </div>
            </div>

            {/* Separador visual */}
            <div className="border-t border-gray-200" />

            {/* Selector de Especialidad */}
            <div className="space-y-3">
              <Label htmlFor="especialidad" className="text-base font-semibold">
                Seleccione una Especialidad:
              </Label>
              <Select value={especialidadSeleccionada} onValueChange={setEspecialidadSeleccionada}>
                <SelectTrigger id="especialidad" className="w-full max-w-md">
                  <SelectValue placeholder="Seleccione una especialidad..." />
                </SelectTrigger>
                <SelectContent>
                  {especialidades.map((especialidad) => (
                    <SelectItem key={especialidad} value={especialidad}>
                      {especialidad}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>

            {/* Botón Filtrar por Especialidad */}
            <div>
              <Button
                onClick={handleFiltrarPorEspecialidad}
                disabled={cargando}
                variant="default"
                className="min-w-[220px]"
              >
                {cargando ? "Cargando..." : "Filtrar por Especialidad"}
              </Button>
            </div>
          </>
        ) : (
          <>
            {/* Botón para volver */}
            <div className="mb-4">
              <Button variant="outline" onClick={() => setMostrarResultados(false)}>
                <ArrowLeft className="mr-2 h-4 w-4" />
                Volver a búsqueda
              </Button>
            </div>

            {/* Título de la tabla */}
            <div className="mb-4">
              <h2 className="text-xl font-bold">Listado Final Por Especialidad</h2>
            </div>

            {/* Tabla de resultados */}
            <div className="overflow-x-auto">
              <Table>
                <TableHeader>
                  <TableRow>
                    <TableHead className="min-w-[100px]">D.N.I.</TableHead>
                    <TableHead className="min-w-[150px]">Apellido</TableHead>
                    <TableHead className="min-w-[150px]">Nombre</TableHead>
                    <TableHead className="min-w-[300px]">Denominacion Del Cargo</TableHead>
                    <TableHead className="min-w-[250px]">Listado De Junta</TableHead>
                    <TableHead className="min-w-[120px]">Tipo de Traslado</TableHead>
                    <TableHead className="min-w-[250px]">Establecimiento</TableHead>
                    <TableHead className="min-w-[100px]">Turno</TableHead>
                    <TableHead className="min-w-[80px] text-blue-600">Categoria</TableHead>
                    <TableHead className="min-w-[80px] text-blue-600">Radio</TableHead>
                    <TableHead className="min-w-[80px] text-blue-600">Años</TableHead>
                    <TableHead className="min-w-[80px] text-blue-600">Meses</TableHead>
                    <TableHead className="min-w-[80px] text-blue-600">Dias</TableHead>
                    <TableHead className="min-w-[250px]">Observaciones</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {docentes.map((docente) => (
                    <TableRow key={docente.DNI}>
                      <TableCell>{docente.DNI}</TableCell>
                      <TableCell>{docente.Apellido}</TableCell>
                      <TableCell>{docente.Nombre}</TableCell>
                      <TableCell>{docente.DenominacionDelCargo}</TableCell>
                      <TableCell>{docente.ListadoDeJunta}</TableCell>
                      <TableCell>{docente.TipoDeTraslado}</TableCell>
                      <TableCell>{docente.Establecimiento}</TableCell>
                      <TableCell>{docente.Turno}</TableCell>
                      <TableCell className="text-blue-600">{docente.Categoria}</TableCell>
                      <TableCell className="text-blue-600">{docente.Radio}</TableCell>
                      <TableCell className="text-blue-600">{docente.Años}</TableCell>
                      <TableCell className="text-blue-600">{docente.Meses}</TableCell>
                      <TableCell className="text-blue-600">{docente.Dias}</TableCell>
                      <TableCell>{docente.Observaciones}</TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            </div>
          </>
        )}
      </CardContent>
    </Card>
  );
}
