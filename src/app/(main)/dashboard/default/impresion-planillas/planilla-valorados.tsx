"use client";

import { useState } from "react";

import { ArrowLeft } from "lucide-react";

import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table";

interface DocenteValorado {
  DenominacionDelCargo: string;
  DNI: string;
  FechaDeTraslado: string;
  Establecimiento: string;
  Apellido: string;
  Nombre: string;
  FechaDeTitular: string;
  TipoDeTraslado: string;
  SeTrasladadel: string;
  Turno: string;
  Radio: string;
  Categoria: string;
  Observaciones: string;
}

interface PlanillaValoradosProps {
  onBack: () => void;
}

export default function PlanillaValorados({ onBack }: PlanillaValoradosProps) {
  const [fechaTraslado, setFechaTraslado] = useState("15/08/2023");
  const [docentes, setDocentes] = useState<DocenteValorado[]>([]);
  const [cargando, setCargando] = useState(false);

  // Función para cargar docentes valorados por fecha
  const cargarDocentes = async () => {
    if (!fechaTraslado) {
      alert("Por favor ingrese una fecha de traslado");
      return;
    }

    setCargando(true);
    try {
      /*
      TODO: Implementar consulta SQL:
      SELECT AntTitular.[FechadeTraslado-Baja], AntTitular.* FROM AntTitular WHERE (((AntTitular.[FechadeTraslado-Baja])=[Ingrese Fecha de traslado]));
      */

      // TODO: Descomentar cuando esté listo el endpoint
      // const response = await fetch(`/api/docentes/valorados?fecha=${fechaTraslado}`);
      // const data = await response.json();
      // setDocentes(data.data);

      // Datos de ejemplo (simulación basados en la imagen)
      setDocentes([
        {
          DenominacionDelCargo: "Celador Educacion Especial",
          DNI: "27488630",
          FechaDeTraslado: "15/08/2023",
          Establecimiento: "ESCUELA E.E.E. BILINGUE PARA SORDOS",
          Apellido: "ARTERO",
          Nombre: "Laura Alicia",
          FechaDeTitular: "06/03/2013",
          TipoDeTraslado: "Ordinario",
          SeTrasladadel: "ESCUELA E.E.E. BILINGUE PARA SORDOS",
          Turno: "Mañana",
          Radio: "2",
          Categoria: "",
          Observaciones: "",
        },
        {
          DenominacionDelCargo: "Celador Educacion Especial",
          DNI: "27574215",
          FechaDeTraslado: "15/08/2023",
          Establecimiento: "ESCUELA E.E.E. MARIA MONTESSORI",
          Apellido: "CONTRERA",
          Nombre: "Maria Paola",
          FechaDeTitular: "22/02/2008",
          TipoDeTraslado: "Ordinario",
          SeTrasladadel: "ESCUELA E.E.E. MARIA MONTESSORI",
          Turno: "Tarde",
          Radio: "3",
          Categoria: "",
          Observaciones: "",
        },
        {
          DenominacionDelCargo: "Celador Educacion Especial",
          DNI: "28263268",
          FechaDeTraslado: "15/08/2023",
          Establecimiento: "ESCUELA DE EDUCACIÓN INTEGRAL PARA ADOLESCENTES Y JÓVENES CON",
          Apellido: "GÓMEZ",
          Nombre: "Cristian Andrés",
          FechaDeTitular: "03/09/2015",
          TipoDeTraslado: "Ordinario",
          SeTrasladadel: "ESCUELA DE EDUCACIÓN INTEGRAL PARA ADOLESCENTES Y JÓVENES CON",
          Turno: "Mañana",
          Radio: "1",
          Categoria: "",
          Observaciones: "",
        },
        {
          DenominacionDelCargo: "Celador Educacion Especial",
          DNI: "32878173",
          FechaDeTraslado: "15/08/2023",
          Establecimiento: "ESC. DE EDUCACIÓN ESPECIAL GRACIELA CIBEIRA DE CANTONI (Ex. C.A.R.E.M.)",
          Apellido: "NAVEDA",
          Nombre: "Dalila Belén",
          FechaDeTitular: "06/03/2020",
          TipoDeTraslado: "Ordinario",
          SeTrasladadel: "ESC. DE EDUCACIÓN ESPECIAL GRACIELA CIBEIRA DE CANTONI (Ex. C.A.R.E.M.)",
          Turno: "Tarde",
          Radio: "1",
          Categoria: "",
          Observaciones: "",
        },
        {
          DenominacionDelCargo: "Celador Educacion Especial",
          DNI: "27574215",
          FechaDeTraslado: "15/08/2023",
          Establecimiento: "ESCUELA E.E.E. MARIA MONTESSORI",
          Apellido: "CONTRERA",
          Nombre: "Maria Paola",
          FechaDeTitular: "05/03/2018",
          TipoDeTraslado: "Ordinario",
          SeTrasladadel: "ESCUELA E.E.E. MARIA MONTESSORI",
          Turno: "Mañana",
          Radio: "3",
          Categoria: "",
          Observaciones: "",
        },
        {
          DenominacionDelCargo: "Celador Educacion Especial - (MUJER)",
          DNI: "27682791",
          FechaDeTraslado: "15/08/2023",
          Establecimiento: "ANEXO REPUBLICA ARGENTINA",
          Apellido: "DÍAZ",
          Nombre: "Maria Belén",
          FechaDeTitular: "25/02/2011",
          TipoDeTraslado: "Ordinario",
          SeTrasladadel: "ANEXO REPUBLICA ARGENTINA",
          Turno: "Tarde",
          Radio: "6",
          Categoria: "",
          Observaciones: "",
        },
        {
          DenominacionDelCargo: "Celador Educacion Especial - (MUJER)",
          DNI: "30145660",
          FechaDeTraslado: "15/08/2023",
          Establecimiento: "ESC. DE EDUCACIÓN ESPECIAL GRACIELA CIBEIRA DE CANTONI (Ex. C.A.R.E.M.)",
          Apellido: "ÁVILA CARRIZO",
          Nombre: "Carolina Evelin",
          FechaDeTitular: "22/02/2017",
          TipoDeTraslado: "Ordinario",
          SeTrasladadel: "ESC. DE EDUCACIÓN ESPECIAL GRACIELA CIBEIRA DE CANTONI (Ex. C.A.R.E.M.)",
          Turno: "Tarde",
          Radio: "1",
          Categoria: "",
          Observaciones: "NO PRESENTA FOJA DE SERVICIOS EN EL ORDEN PRIVADO",
        },
        {
          DenominacionDelCargo: "Director 1° Categoría - Nivel Inicial c Jardines de Infantes Nuclearizados Zonales",
          DNI: "17815049",
          FechaDeTraslado: "15/08/2023",
          Establecimiento: "ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 49",
          Apellido: "RODRÍGUEZ",
          Nombre: "Nelly Liliana",
          FechaDeTitular: "02/03/1992",
          TipoDeTraslado: "Ordinario",
          SeTrasladadel: "ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 49",
          Turno: "Mañana, Interturno y Tarde",
          Radio: "2",
          Categoria: "1",
          Observaciones: "",
        },
        {
          DenominacionDelCargo: "Director 1° Categoría - Nivel Inicial c Jardines de Infantes Nuclearizados Zonales",
          DNI: "18011432",
          FechaDeTraslado: "15/08/2023",
          Establecimiento: 'ENI Nº 39 "Hebe San Martín de Duprat"',
          Apellido: "ALAMINO",
          Nombre: "Claudia Alejandra",
          FechaDeTitular: "31/10/1994",
          TipoDeTraslado: "Ordinario",
          SeTrasladadel: 'ENI Nº 39 "Hebe San Martín de Duprat"',
          Turno: "Mañana y Tarde",
          Radio: "3",
          Categoria: "1",
          Observaciones: "",
        },
        {
          DenominacionDelCargo: "Director 1° Categoría - Nivel Inicial c Jardines de Infantes Nuclearizados Zonales",
          DNI: "18495116",
          FechaDeTraslado: "15/08/2023",
          Establecimiento: "JINZ CAPITAL - LUIS JORGE FONTANA",
          Apellido: "ECHEGARAY",
          Nombre: "Hebe Roxana",
          FechaDeTitular: "01/06/1998",
          TipoDeTraslado: "Ordinario",
          SeTrasladadel: "JINZ CAPITAL - LUIS JORGE FONTANA",
          Turno: "Mañana y Tarde",
          Radio: "1",
          Categoria: "1",
          Observaciones: "",
        },
        {
          DenominacionDelCargo: "Director 1° Categoría - Nivel Inicial c Jardines de Infantes Nuclearizados Zonales",
          DNI: "18520424",
          FechaDeTraslado: "15/08/2023",
          Establecimiento: "ESCUELA DE NIVEL INICIAL PAPA FRANCISCO (Ex ENI 25)",
          Apellido: "JOFRÉ",
          Nombre: "Liliana Filomena",
          FechaDeTitular: "03/03/2008",
          TipoDeTraslado: "Ordinario",
          SeTrasladadel: "ESCUELA DE NIVEL INICIAL PAPA FRANCISCO (Ex ENI 25)",
          Turno: "Mañana, Interturno y Tarde",
          Radio: "4",
          Categoria: "1",
          Observaciones: "",
        },
      ]);
    } catch (error) {
      console.error("Error al cargar docentes valorados:", error);
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
            <CardTitle>Listado Docentes Valorados</CardTitle>
          </div>
        </div>
      </CardHeader>
      <CardContent className="space-y-4">
        {/* Búsqueda por Fecha */}
        <div className="flex gap-3">
          <div className="flex-1">
            <Label htmlFor="fechaTraslado">Ingrese Fecha de Traslado:</Label>
            <Input
              id="fechaTraslado"
              type="text"
              placeholder="DD/MM/YYYY"
              value={fechaTraslado}
              onChange={(e) => setFechaTraslado(e.target.value)}
              className="mt-1"
            />
          </div>
          <Button onClick={cargarDocentes} className="mt-auto">
            Buscar
          </Button>
        </div>

        {/* Tabla de Resultados */}
        {cargando ? (
          <div className="flex justify-center py-8">
            <div className="h-8 w-8 animate-spin rounded-full border-4 border-gray-300 border-t-blue-600" />
          </div>
        ) : (
          <div className="w-full overflow-x-auto">
            <Table>
              <TableHeader>
                <TableRow className="bg-gray-100">
                  <TableHead className="font-bold">Denominación del Cargo</TableHead>
                  <TableHead className="w-[100px] font-bold">D.N.I.</TableHead>
                  <TableHead className="w-[110px] font-bold">Fecha de Traslado-Baja</TableHead>
                  <TableHead className="font-bold">Establecimiento</TableHead>
                  <TableHead className="w-[120px] font-bold">Apellido</TableHead>
                  <TableHead className="w-[120px] font-bold">Nombre</TableHead>
                  <TableHead className="w-[110px] font-bold">Fecha de Titular</TableHead>
                  <TableHead className="w-[100px] font-bold">Tipo de Traslado</TableHead>
                  <TableHead className="font-bold">Se Traslada del</TableHead>
                  <TableHead className="w-[100px] font-bold">Turno</TableHead>
                  <TableHead className="w-[70px] text-center font-bold">Radio</TableHead>
                  <TableHead className="w-[80px] text-center font-bold">Categoria</TableHead>
                  <TableHead className="min-w-[200px] font-bold">Observaciones</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {docentes.map((docente) => (
                  <TableRow
                    key={`${docente.DNI}-${docente.FechaDeTraslado}-${docente.DenominacionDelCargo}-${docente.FechaDeTitular}`}
                    className="even:bg-gray-50"
                  >
                    <TableCell className="text-xs">{docente.DenominacionDelCargo}</TableCell>
                    <TableCell className="font-medium">{docente.DNI}</TableCell>
                    <TableCell className="text-sm">{docente.FechaDeTraslado}</TableCell>
                    <TableCell className="text-xs">{docente.Establecimiento}</TableCell>
                    <TableCell className="text-sm">{docente.Apellido}</TableCell>
                    <TableCell className="text-sm">{docente.Nombre}</TableCell>
                    <TableCell className="text-sm">{docente.FechaDeTitular}</TableCell>
                    <TableCell className="text-sm">{docente.TipoDeTraslado}</TableCell>
                    <TableCell className="text-xs">{docente.SeTrasladadel}</TableCell>
                    <TableCell className="text-xs">{docente.Turno}</TableCell>
                    <TableCell className="text-center">{docente.Radio}</TableCell>
                    <TableCell className="text-center">{docente.Categoria}</TableCell>
                    <TableCell className="min-w-[200px] text-xs">{docente.Observaciones}</TableCell>
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
