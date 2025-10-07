"use client";

import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table";

interface CalculoAntiguedadProps {
  // onClose: () => void;
}

export default function CalculoAntiguedad({}: CalculoAntiguedadProps) {
  // Datos de ejemplo basados en la imagen
  const datosAntiguedad = [
    {
      dni: "14878210",
      nombre: "ESCUELA TEC. CAP. LAB. JU",
      establecimiento: "ESCUELA TEC. CAP. LAB. JU",
      fechaInicio: "23/04/1987",
      fechaBaja: "30/11/1987",
      años: 0,
      meses: 7,
      dias: 8,
      radio: 4,
    },
    {
      dni: "14878210",
      nombre: "JOSE PEDRO CORTINEZ",
      establecimiento: "JOSE PEDRO CORTINEZ",
      fechaInicio: "04/04/1986",
      fechaBaja: "30/11/1986",
      años: 0,
      meses: 7,
      dias: 27,
      radio: 3,
    },
    {
      dni: "14878210",
      nombre: "MARIA L. VILLARRINO DE",
      establecimiento: "MARIA L. VILLARRINO DE",
      fechaInicio: "21/04/1988",
      fechaBaja: "12/03/1989",
      años: 0,
      meses: 10,
      dias: 20,
      radio: 1,
    },
    {
      dni: "14985938",
      nombre: "11 DE SEPTIEMBRE",
      establecimiento: "11 DE SEPTIEMBRE",
      fechaInicio: "22/03/2002",
      fechaBaja: "05/08/2002",
      años: 0,
      meses: 4,
      dias: 14,
      radio: 2,
    },
    {
      dni: "14985938",
      nombre: "BARRIO PARQUE RIVADAV",
      establecimiento: "BARRIO PARQUE RIVADAV",
      fechaInicio: "27/08/1996",
      fechaBaja: "07/01/1997",
      años: 0,
      meses: 4,
      dias: 11,
      radio: 2,
    },
  ];

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h2 className="text-2xl font-bold">Cálculo de Antigüedad Titular</h2>
          <p className="text-muted-foreground">Consultar y gestionar antigüedad para traslados</p>
        </div>
        {/* <Button variant="outline" onClick={onClose}>
          Volver
        </Button> */}
      </div>

      {/* Sección Antigüedad Titular */}
      <Card>
        <CardHeader>
          <CardTitle className="text-center">Antigüedad Titular</CardTitle>
        </CardHeader>
        <CardContent className="p-4">
          <div className="mb-4 text-center">
            <Button variant="outline" size="sm">
              Cálculo de Antigüedad Titular
            </Button>
          </div>
        </CardContent>
      </Card>

      {/* Sección Antigüedad Suplente */}
      <Card>
        <CardHeader>
          <CardTitle className="text-center">Antigüedad Suplente</CardTitle>
        </CardHeader>
        <CardContent className="p-6">
          {/* Botones de filtros */}
          <div className="mb-6 grid grid-cols-1 gap-4 md:grid-cols-4">
            <div className="text-center">
              <Button variant="outline" className="w-full" onClick={() => console.log("Cálculo de Antigüedad clicked")}>
                Cálculo de Antigüedad
              </Button>
            </div>

            <div className="text-center">
              <Button variant="outline" className="w-full" onClick={() => console.log("Antigüedad Con Radio clicked")}>
                Antigüedad Con Radio
              </Button>
            </div>

            <div className="text-center">
              <Button
                variant="outline"
                className="w-full"
                onClick={() => console.log("Cantidad de días de Suplencias por Organismo clicked")}
              >
                Cantidad de días de Suplencias por Organismo
              </Button>
            </div>

            <div className="text-center">
              <Button
                variant="outline"
                className="w-full"
                onClick={() => console.log("Antigüedad Total Suplencias clicked")}
              >
                Antigüedad Total Suplencias
              </Button>
            </div>
          </div>

          <div className="mb-6 text-center">
            <Button
              variant="outline"
              className="w-full md:w-auto"
              onClick={() => console.log("Antigüedad Para Traslado clicked")}
            >
              Antigüedad Para Traslado
            </Button>
          </div>

          {/* Tabla de datos */}
          <div className="overflow-hidden rounded-lg border">
            <Table>
              <TableHeader>
                <TableRow className="bg-gray-100">
                  <TableHead className="font-medium">N° D.N.I.</TableHead>
                  <TableHead className="font-medium">Establecimiento</TableHead>
                  <TableHead className="font-medium">Fecha de Inicio</TableHead>
                  <TableHead className="font-medium">Fecha de Baja</TableHead>
                  <TableHead className="font-medium">Años</TableHead>
                  <TableHead className="font-medium">Meses</TableHead>
                  <TableHead className="font-medium">Días</TableHead>
                  <TableHead className="font-medium">Radio</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {datosAntiguedad.map((item, index) => (
                  <TableRow key={index} className="hover:bg-gray-50">
                    <TableCell className="font-mono">{item.dni}</TableCell>
                    <TableCell>{item.establecimiento}</TableCell>
                    <TableCell>{item.fechaInicio}</TableCell>
                    <TableCell>{item.fechaBaja}</TableCell>
                    <TableCell className="text-center">{item.años}</TableCell>
                    <TableCell className="text-center">{item.meses}</TableCell>
                    <TableCell className="text-center">{item.dias}</TableCell>
                    <TableCell className="text-center">{item.radio}</TableCell>
                  </TableRow>
                ))}
              </TableBody>
            </Table>
          </div>

          {/* Controles de paginación */}
          <div className="mt-4 flex items-center justify-between">
            <div className="text-muted-foreground text-sm">Registro: 1 de 9354</div>
            <div className="flex items-center space-x-2">
              <Button variant="outline" size="sm">
                ⏮
              </Button>
              <Button variant="outline" size="sm">
                ⏪
              </Button>
              <Button variant="outline" size="sm">
                ⏩
              </Button>
              <Button variant="outline" size="sm">
                ⏭
              </Button>
              <Button variant="outline" size="sm">
                🔍 Sin filtrar
              </Button>
              <Button variant="outline" size="sm">
                Buscar
              </Button>
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
