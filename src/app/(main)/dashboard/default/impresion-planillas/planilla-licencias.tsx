"use client";

import { useState } from "react";

import { ArrowLeft, FileText } from "lucide-react";

import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";

import PlanillaDocenteConLicencias from "./planilla-docente-con-licencias";
import PlanillaDocenteSinLicencias from "./planilla-docente-sin-licencias";

interface PeriodoLicencia {
  NumeroDocumento: string;
  FechaInicio: string;
  FechaFin: string;
  CantDiasLic: string;
  Años: string;
  Meses: string;
  Dias: string;
}

interface DatoListado {
  NumeroDocumento: string;
  Apellido: string;
  Nombre: string;
  DenominacionDelCargo: string;
  TipoDeTraslado: string;
  UnidadEducativa: string;
  Años: string;
  Meses: string;
  Dias: string;
}

interface PlanillaLicenciasProps {
  onBack: () => void;
}

export default function PlanillaLicencias({ onBack }: PlanillaLicenciasProps) {
  const [activeTab, setActiveTab] = useState("periodo-licencia");
  const [vistaImpresion, setVistaImpresion] = useState<string | null>(null);
  const [periodoLicencias, setPeriodoLicencias] = useState<PeriodoLicencia[]>([]);
  const [datosListado, setDatosListado] = useState<DatoListado[]>([]);
  const [cargandoPeriodo, setCargandoPeriodo] = useState(false);
  const [cargandoListado, setCargandoListado] = useState(false);

  // Función para cargar Periodo de Licencias
  const cargarPeriodoLicencias = async () => {
    setCargandoPeriodo(true);
    try {
      /*
      TODO: Implementar consulta SQL:
      SELECT PeriodoLicencias.NumeroDocumento, PeriodoLicencias.FechaInicio, PeriodoLicencias.FechaFin,
      PeriodoLicencias.CantDiasLic, Int([CantDiasLic]/365) AS Años,
      Int(([CantDiasLic]-365*[Años])/(365/12)) AS Meses,
      Int([CantDiasLic]-(([Años]*365)+([Meses]*(365/12)))) AS Dias
      FROM PeriodoLicencias
      GROUP BY PeriodoLicencias.NumeroDocumento, PeriodoLicencias.FechaInicio,
      PeriodoLicencias.FechaFin, PeriodoLicencias.CantDiasLic;
      */

      // TODO: Descomentar cuando esté listo el endpoint
      // const response = await fetch('/api/licencias/periodo');
      // const data = await response.json();
      // setPeriodoLicencias(data.data);

      // Datos de ejemplo (simulación)
      setPeriodoLicencias([
        {
          NumeroDocumento: "21813052",
          FechaInicio: "1/8/2012",
          FechaFin: "1/1/2013",
          CantDiasLic: "153",
          Años: "0",
          Meses: "5",
          Dias: "0",
        },
        {
          NumeroDocumento: "22394073",
          FechaInicio: "19/2/2015",
          FechaFin: "20/3/2015",
          CantDiasLic: "29",
          Años: "0",
          Meses: "0",
          Dias: "29",
        },
        {
          NumeroDocumento: "22394173",
          FechaInicio: "30/7/2018",
          FechaFin: "30/8/2018",
          CantDiasLic: "31",
          Años: "0",
          Meses: "1",
          Dias: "0",
        },
      ]);
    } catch (error) {
      console.error("Error al cargar periodo de licencias:", error);
    } finally {
      setCargandoPeriodo(false);
    }
  };

  // Función para cargar Datos para Listado de Impresión
  const cargarDatosListado = async () => {
    setCargandoListado(true);
    try {
      /*
      TODO: Implementar consulta SQL:
      SELECT ListadoAgrupado.NumeroDocumento, ListadoAgrupado.Apellido, ListadoAgrupado.Nombre,
      ListadoAgrupado.DenominacionDelCargo, ListadoDeJunta.ListadoDeJunta,
      ListadoAgrupado.[Tipo de Traslado], ListadoAgrupado.UnidadEducativa,
      ListadoAgrupado.TurnoUETraslada, ListadoAgrupado.CategoriaUETraslada,
      ListadoAgrupado.RadioUETraslada, ListadoAgrupado.Años, ListadoAgrupado.Meses,
      ListadoAgrupado.Dias, ListadoDeJunta.ID
      FROM ListadoAgrupado INNER JOIN ListadoDeJunta ON ListadoAgrupado.IdListadoDeJunta = ListadoDeJunta.ID
      WHERE (((ListadoAgrupado.IdListadoDeJunta)=[ListadoDeJunta].[ID]))
      GROUP BY ListadoAgrupado.NumeroDocumento, ListadoAgrupado.Apellido, ListadoAgrupado.Nombre,
      ListadoAgrupado.DenominacionDelCargo, ListadoDeJunta.ListadoDeJunta,
      ListadoAgrupado.[Tipo de Traslado], ListadoAgrupado.UnidadEducativa,
      ListadoAgrupado.TurnoUETraslada, ListadoAgrupado.CategoriaUETraslada,
      ListadoAgrupado.RadioUETraslada, ListadoAgrupado.Años, ListadoAgrupado.Meses,
      ListadoAgrupado.Dias, ListadoDeJunta.ID
      ORDER BY ListadoAgrupado.Años DESC, ListadoAgrupado.Meses DESC, ListadoAgrupado.Dias DESC;
      */

      // TODO: Descomentar cuando esté listo el endpoint
      // const response = await fetch('/api/licencias/listado-impresion');
      // const data = await response.json();
      // setDatosListado(data.data);

      // Datos de ejemplo (simulación)
      setDatosListado([
        {
          NumeroDocumento: "21813052",
          Apellido: "JOFRÉ ALLENDE",
          Nombre: "Rosana Ivana",
          DenominacionDelCargo: "Maestro de Grado Educación Primaria Jornada Extendida",
          TipoDeTraslado: "Ordinario",
          UnidadEducativa: 'SEGUNDINO J. NAVARRO "EMER"',
          Años: "31",
          Meses: "7",
          Dias: "22",
        },
        {
          NumeroDocumento: "22394073",
          Apellido: "TRUJILLO",
          Nombre: "Mirka Gabriela",
          DenominacionDelCargo: "Maestro de Grado Educación Primaria Jornada Extendida",
          TipoDeTraslado: "Ordinario",
          UnidadEducativa: "ALAS ARGENTINAS",
          Años: "28",
          Meses: "5",
          Dias: "9",
        },
        {
          NumeroDocumento: "22394173",
          Apellido: "AGÜERO",
          Nombre: "Mariela Inés",
          DenominacionDelCargo: "Maestro de Educación Inicial - Jornada Simple",
          TipoDeTraslado: "Ordinario",
          UnidadEducativa: "PATRICIAS MENDOCINAS JINZ N° 50",
          Años: "20",
          Meses: "8",
          Dias: "19",
        },
      ]);
    } catch (error) {
      console.error("Error al cargar datos de listado:", error);
    } finally {
      setCargandoListado(false);
    }
  };

  // Cargar datos al montar el componente o cambiar de pestaña
  const handleTabChange = (value: string) => {
    setActiveTab(value);
    if (value === "periodo-licencia" && periodoLicencias.length === 0) {
      cargarPeriodoLicencias();
    } else if (value === "datos-listado" && datosListado.length === 0) {
      cargarDatosListado();
    }
  };

  const imprimirDocentesConSuplencias = () => {
    setVistaImpresion("con-suplencias");
  };

  const imprimirDocentesSinSuplencias = () => {
    setVistaImpresion("sin-suplencias");
  };

  // Si hay una vista de impresión activa, mostrar el componente correspondiente
  if (vistaImpresion === "con-suplencias") {
    return <PlanillaDocenteConLicencias onBack={() => setVistaImpresion(null)} />;
  }

  if (vistaImpresion === "sin-suplencias") {
    return <PlanillaDocenteSinLicencias onBack={() => setVistaImpresion(null)} />;
  }

  return (
    <Card>
      <CardHeader>
        <div className="flex items-center justify-between">
          <div className="flex items-center space-x-3">
            <Button variant="outline" size="icon" onClick={onBack}>
              <ArrowLeft className="h-4 w-4" />
            </Button>
            <div>
              <CardTitle>Antigüedad para Traslado Docentes con Licencias</CardTitle>
              <CardDescription>Gestión de licencias y listados de impresión</CardDescription>
            </div>
          </div>
        </div>
      </CardHeader>
      <CardContent className="space-y-6">
        <Tabs value={activeTab} onValueChange={handleTabChange} className="space-y-4">
          <TabsList className="grid w-full grid-cols-2">
            <TabsTrigger value="periodo-licencia">Periodo de Licencia</TabsTrigger>
            <TabsTrigger value="datos-listado">Datos para el Listado de Impresión</TabsTrigger>
          </TabsList>

          {/* Pestaña: Periodo de Licencia */}
          <TabsContent value="periodo-licencia" className="space-y-4">
            <Card>
              <CardHeader>
                <CardTitle className="text-lg">Periodo de Licencia</CardTitle>
              </CardHeader>
              <CardContent>
                {cargandoPeriodo ? (
                  <div className="flex justify-center py-8">
                    <div className="h-8 w-8 animate-spin rounded-full border-4 border-gray-300 border-t-blue-600" />
                  </div>
                ) : (
                  <div className="overflow-x-auto">
                    <Table>
                      <TableHeader>
                        <TableRow className="bg-gray-100">
                          <TableHead className="font-bold">NumeroD</TableHead>
                          <TableHead className="font-bold">FechaInicio</TableHead>
                          <TableHead className="font-bold">FechaFin</TableHead>
                          <TableHead className="font-bold">CantDiasL</TableHead>
                          <TableHead className="font-bold">Años</TableHead>
                          <TableHead className="font-bold">Meses</TableHead>
                          <TableHead className="font-bold">Dias</TableHead>
                        </TableRow>
                      </TableHeader>
                      <TableBody>
                        {periodoLicencias.map((licencia) => (
                          <TableRow
                            key={`${licencia.NumeroDocumento}-${licencia.FechaInicio}`}
                            className="even:bg-gray-50"
                          >
                            <TableCell className="font-medium">{licencia.NumeroDocumento}</TableCell>
                            <TableCell>{licencia.FechaInicio}</TableCell>
                            <TableCell>{licencia.FechaFin}</TableCell>
                            <TableCell>{licencia.CantDiasLic}</TableCell>
                            <TableCell className="text-center font-semibold text-blue-600">{licencia.Años}</TableCell>
                            <TableCell className="text-center font-semibold text-blue-600">{licencia.Meses}</TableCell>
                            <TableCell className="text-center font-semibold text-blue-600">{licencia.Dias}</TableCell>
                          </TableRow>
                        ))}
                      </TableBody>
                    </Table>
                  </div>
                )}
              </CardContent>
            </Card>

            {/* Botones de Impresión de Listados */}
            <Card>
              <CardHeader>
                <CardTitle className="text-lg">Impresión de Listados</CardTitle>
              </CardHeader>
              <CardContent>
                <div className="flex justify-center gap-4">
                  <Button variant="outline" onClick={imprimirDocentesConSuplencias}>
                    <FileText className="mr-2 h-4 w-4" />
                    Docentes con Suplencias
                  </Button>
                  <Button variant="outline" onClick={imprimirDocentesSinSuplencias}>
                    <FileText className="mr-2 h-4 w-4" />
                    Docentes sin Suplencias
                  </Button>
                </div>
              </CardContent>
            </Card>
          </TabsContent>

          {/* Pestaña: Datos para el Listado de Impresión */}
          <TabsContent value="datos-listado" className="space-y-4">
            <Card>
              <CardHeader>
                <CardTitle className="text-lg">Datos para el Listado de Impresión</CardTitle>
              </CardHeader>
              <CardContent>
                {cargandoListado ? (
                  <div className="flex justify-center py-8">
                    <div className="h-8 w-8 animate-spin rounded-full border-4 border-gray-300 border-t-blue-600" />
                  </div>
                ) : (
                  <div className="w-full">
                    <Table>
                      <TableHeader>
                        <TableRow className="bg-gray-100">
                          <TableHead className="w-[100px] font-bold">NumeroDocumento</TableHead>
                          <TableHead className="w-[120px] font-bold">Apellido</TableHead>
                          <TableHead className="w-[110px] font-bold">Nombre</TableHead>
                          <TableHead className="font-bold">DenominacionDelCargo</TableHead>
                          <TableHead className="w-[100px] font-bold">Tipo de Traslado</TableHead>
                          <TableHead className="font-bold">UnidadEducativa</TableHead>
                          <TableHead className="w-[60px] text-center font-bold">Años</TableHead>
                          <TableHead className="w-[60px] text-center font-bold">Meses</TableHead>
                          <TableHead className="w-[60px] text-center font-bold">Dias</TableHead>
                        </TableRow>
                      </TableHeader>
                      <TableBody>
                        {datosListado.map((dato) => (
                          <TableRow key={dato.NumeroDocumento} className="even:bg-gray-50">
                            <TableCell className="text-sm font-medium">{dato.NumeroDocumento}</TableCell>
                            <TableCell className="text-sm">{dato.Apellido}</TableCell>
                            <TableCell className="text-sm">{dato.Nombre}</TableCell>
                            <TableCell className="text-xs">{dato.DenominacionDelCargo}</TableCell>
                            <TableCell className="text-sm">{dato.TipoDeTraslado}</TableCell>
                            <TableCell className="text-xs">{dato.UnidadEducativa}</TableCell>
                            <TableCell className="text-center font-semibold text-blue-600">{dato.Años}</TableCell>
                            <TableCell className="text-center font-semibold text-blue-600">{dato.Meses}</TableCell>
                            <TableCell className="text-center font-semibold text-blue-600">{dato.Dias}</TableCell>
                          </TableRow>
                        ))}
                      </TableBody>
                    </Table>
                  </div>
                )}
              </CardContent>
            </Card>

            {/* Botones de Impresión de Listados */}
            <Card>
              <CardHeader>
                <CardTitle className="text-lg">Impresión de Listados</CardTitle>
              </CardHeader>
              <CardContent>
                <div className="flex flex-wrap justify-center gap-4">
                  <Button onClick={imprimirDocentesConSuplencias} variant="outline" className="min-w-[200px]">
                    <FileText className="mr-2 h-4 w-4" />
                    Docentes con Suplencias
                  </Button>
                  <Button onClick={imprimirDocentesSinSuplencias} variant="outline" className="min-w-[200px]">
                    <FileText className="mr-2 h-4 w-4" />
                    Docentes sin Suplencias
                  </Button>
                </div>
              </CardContent>
            </Card>
          </TabsContent>
        </Tabs>
      </CardContent>
    </Card>
  );
}
