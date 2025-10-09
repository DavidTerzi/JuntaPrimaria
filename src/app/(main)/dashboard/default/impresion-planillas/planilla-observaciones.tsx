"use client";

import { useState } from "react";

import { ArrowLeft } from "lucide-react";

import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table";

interface DocenteObservacion {
  NumeroDocumento: string;
  Apellido: string;
  Nombre: string;
  DenominacionDelCargo: string;
  TipoDeTraslado: string;
  UnidadEducativa: string;
  TurnoUETraslada: string;
  RadioUETraslada: string;
  CategoriaUETraslada: string;
  Observaciones: string;
}

interface PlanillaObservacionesProps {
  onBack: () => void;
}

export default function PlanillaObservaciones({ onBack }: PlanillaObservacionesProps) {
  const [docentes, setDocentes] = useState<DocenteObservacion[]>([]);
  const [cargando, setCargando] = useState(false);

  // Función para cargar docentes con observaciones
  const cargarDocentes = async () => {
    setCargando(true);
    try {
      /*
      TODO: Implementar consulta SQL:
      SELECT AntTitular.NumeroDocumento, AntTitular.Apellido, AntTitular.Nombre, AntTitular.DenominacionDelCargo, AntTitular.[Tipo de Traslado], AntTitular.UnidadEducativa, AntTitular.TurnoUETraslada, AntTitular.RadioUETraslada, AntTitular.CategoriaUETraslada, AntTitular.Observaciones FROM AntTitular WHERE (((AntTitular.Observaciones) Is Not Null)) GROUP BY AntTitular.NumeroDocumento, AntTitular.Apellido, AntTitular.Nombre, AntTitular.DenominacionDelCargo, AntTitular.[Tipo de Traslado], AntTitular.UnidadEducativa, AntTitular.TurnoUETraslada, AntTitular.RadioUETraslada, AntTitular.CategoriaUETraslada, AntTitular.Observaciones;
      */

      // TODO: Descomentar cuando esté listo el endpoint
      // const response = await fetch('/api/docentes/observaciones');
      // const data = await response.json();
      // setDocentes(data.data);

      // Datos de ejemplo (simulación basados en la imagen)
      setDocentes([
        {
          NumeroDocumento: "",
          Apellido: "ACOSTA",
          Nombre: "Veronica Leticia",
          DenominacionDelCargo: "Maestro de Grado Educación Primaria Jornada Completa",
          TipoDeTraslado: "Ordinario",
          UnidadEducativa: "PEDRO ALVAREZ",
          TurnoUETraslada: "Jornada Completa",
          RadioUETraslada: "4",
          CategoriaUETraslada: "3",
          Observaciones: "RESOLUCION N°1107-ME-2005",
        },
        {
          NumeroDocumento: "",
          Apellido: "GONZALEZ",
          Nombre: "Miriam Ines",
          DenominacionDelCargo: "Maestro de Educación Inicial - Jornada Simple",
          TipoDeTraslado: "Ordinario",
          UnidadEducativa: 'J.I.N.Z. N° 35 "REPUBLICA DEL PERU" - SAN MARTIN',
          TurnoUETraslada: "Tarde",
          RadioUETraslada: "4",
          CategoriaUETraslada: "3",
          Observaciones: "NO PRESENTO FOJA DEL ORDEN PRIVADORESOL UCION N° 1400-ME-2020",
        },
        {
          NumeroDocumento: "",
          Apellido: "LLOPIS PENNATE",
          Nombre: "Laura Beatriz",
          DenominacionDelCargo: "Maestro de Educación Inicial - Jornada Simple",
          TipoDeTraslado: "Ordinario",
          UnidadEducativa: "E.N.I. N° 79",
          TurnoUETraslada: "Tarde",
          RadioUETraslada: "2",
          CategoriaUETraslada: "3",
          Observaciones: "RESOLUCION N°2154 -ME-2008",
        },
        {
          NumeroDocumento: "0",
          Apellido: "ESCALERA",
          Nombre: "Mayra Gimena Mayra Gimena",
          DenominacionDelCargo: "Maestro de Educación Inicial - Jornada Simple",
          TipoDeTraslado: "Ordinario",
          UnidadEducativa: "ESCUELA DE NIVEL INICIAL (E.N.I) N° 53",
          TurnoUETraslada: "Interturno",
          RadioUETraslada: "",
          CategoriaUETraslada: "1",
          Observaciones: "RESOLUCION N°2018",
        },
        {
          NumeroDocumento: "16836287",
          Apellido: "PERALTA",
          Nombre: "Mario Rubén",
          DenominacionDelCargo:
            "Maestro de Especialidades - Educación Inicial y/o Primario - Jornada Simple - EDUCACION FISICA",
          TipoDeTraslado: "Ordinario",
          UnidadEducativa: "PROVINCIA DEL CHACO",
          TurnoUETraslada: "Mañana y Tarde",
          RadioUETraslada: "3",
          CategoriaUETraslada: "1",
          Observaciones: "Resolución N° 522-SE-2020 NO PRESENTA FOJA EN EL ORDEN PRIVADO",
        },
        {
          NumeroDocumento: "16997921",
          Apellido: "GONZALEZ",
          Nombre: "Cristina del Carmen",
          DenominacionDelCargo: "Maestro de Grado Educación Primaria",
          TipoDeTraslado: "Ordinario",
          UnidadEducativa: "JOSE CHIRAPOZU",
          TurnoUETraslada: "Mañana",
          RadioUETraslada: "3",
          CategoriaUETraslada: "1",
          Observaciones: "Decreto N° 0730-ME-2014",
        },
      ]);
    } catch (error) {
      console.error("Error al cargar docentes con observaciones:", error);
    } finally {
      setCargando(false);
    }
  };

  // Cargar datos al montar el componente
  useState(() => {
    cargarDocentes();
  });

  return (
    <Card>
      <CardHeader>
        <div className="flex items-center justify-between">
          <div className="flex items-center space-x-3">
            <Button variant="outline" size="icon" onClick={onBack}>
              <ArrowLeft className="h-4 w-4" />
            </Button>
            <CardTitle>Docentes con Observaciones</CardTitle>
          </div>
        </div>
      </CardHeader>
      <CardContent>
        {cargando ? (
          <div className="flex justify-center py-8">
            <div className="h-8 w-8 animate-spin rounded-full border-4 border-gray-300 border-t-blue-600" />
          </div>
        ) : (
          <div className="w-full overflow-x-auto">
            <Table>
              <TableHeader>
                <TableRow className="bg-gray-100">
                  <TableHead className="w-[100px] font-bold">N° D.N.I.</TableHead>
                  <TableHead className="w-[120px] font-bold">Apellido</TableHead>
                  <TableHead className="w-[120px] font-bold">Nombre</TableHead>
                  <TableHead className="font-bold">Denominacion del Cargo</TableHead>
                  <TableHead className="w-[100px] font-bold">Tipo de Traslado</TableHead>
                  <TableHead className="font-bold">Establecimiento</TableHead>
                  <TableHead className="w-[100px] font-bold">Turno</TableHead>
                  <TableHead className="w-[70px] text-center font-bold">Radio</TableHead>
                  <TableHead className="w-[80px] text-center font-bold">Categoria</TableHead>
                  <TableHead className="min-w-[250px] font-bold">Observaciones</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {docentes.map((docente, index) => (
                  <TableRow key={docente.NumeroDocumento || `docente-${index}`} className="even:bg-gray-50">
                    <TableCell className="font-medium">{docente.NumeroDocumento}</TableCell>
                    <TableCell className="text-sm">{docente.Apellido}</TableCell>
                    <TableCell className="text-sm">{docente.Nombre}</TableCell>
                    <TableCell className="text-xs">{docente.DenominacionDelCargo}</TableCell>
                    <TableCell className="text-sm">{docente.TipoDeTraslado}</TableCell>
                    <TableCell className="text-xs">{docente.UnidadEducativa}</TableCell>
                    <TableCell className="text-xs">{docente.TurnoUETraslada}</TableCell>
                    <TableCell className="text-center">{docente.RadioUETraslada}</TableCell>
                    <TableCell className="text-center">{docente.CategoriaUETraslada}</TableCell>
                    <TableCell className="min-w-[250px] text-xs">{docente.Observaciones}</TableCell>
                  </TableRow>
                ))}
              </TableBody>
            </Table>
          </div>
        )}
      </CardContent>
    </Card>
  );
}
