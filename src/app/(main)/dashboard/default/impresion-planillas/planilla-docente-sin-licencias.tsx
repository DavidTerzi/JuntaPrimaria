"use client";

import { useState } from "react";

import { ArrowLeft } from "lucide-react";

import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";

interface PlanillaDocenteSinLicenciasProps {
  onBack: () => void;
}

export default function PlanillaDocenteSinLicencias({ onBack }: PlanillaDocenteSinLicenciasProps) {
  const [dni, setDni] = useState("10594062");
  const [datosPersonales, setDatosPersonales] = useState({
    apellido: "PEREZ FUENTES",
    nombre: "Leandro Exequiel",
    denominacionCargo: "Maestro de Especialidades - Educación Inicial y/o Primario - Jornada Simple - MUSICA",
    tipoTraslado: "Ordinario",
    establecimiento: "ESCUELA DE NIVEL INICIAL N° 6",
  });

  const [antiguedad, setAntiguedad] = useState({
    titular: { años: "3", meses: "5", dias: "9" },
    licencias: { años: "0", meses: "1", dias: "1" },
    traslado: { años: "3", meses: "4", dias: "8" },
  });

  const buscarPorDNI = () => {
    console.log("Buscando DNI:", dni);
    // TODO: Implementar búsqueda en la API
  };

  return (
    <Card>
      <CardHeader>
        <div className="flex items-center justify-between">
          <div className="flex items-center space-x-3">
            <Button variant="outline" size="icon" onClick={onBack}>
              <ArrowLeft className="h-4 w-4" />
            </Button>
            <CardTitle>Planilla Docente Sin Suplencias con Licencias Sin Goce de Haberes</CardTitle>
          </div>
        </div>
      </CardHeader>
      <CardContent className="space-y-6">
        {/* Búsqueda por DNI */}
        <div className="flex gap-3">
          <div className="flex-1">
            <Label htmlFor="dni">N° D.N.I.:</Label>
            <Input id="dni" value={dni} onChange={(e) => setDni(e.target.value)} className="mt-1" />
          </div>
          <Button onClick={buscarPorDNI} className="mt-auto">
            Buscar
          </Button>
        </div>

        {/* Datos Personales */}
        <div className="grid gap-4">
          <div>
            <Label htmlFor="apellido">Apellido:</Label>
            <Input
              id="apellido"
              value={datosPersonales.apellido}
              onChange={(e) => setDatosPersonales({ ...datosPersonales, apellido: e.target.value })}
              className="mt-1"
            />
          </div>

          <div>
            <Label htmlFor="nombre">Nombre:</Label>
            <Input
              id="nombre"
              value={datosPersonales.nombre}
              onChange={(e) => setDatosPersonales({ ...datosPersonales, nombre: e.target.value })}
              className="mt-1"
            />
          </div>

          <div>
            <Label htmlFor="denominacion">Denominacion del Cargo:</Label>
            <Input
              id="denominacion"
              value={datosPersonales.denominacionCargo}
              onChange={(e) => setDatosPersonales({ ...datosPersonales, denominacionCargo: e.target.value })}
              className="mt-1"
            />
          </div>

          <div>
            <Label htmlFor="tipoTraslado">Tipo Traslado:</Label>
            <Select
              value={datosPersonales.tipoTraslado}
              onValueChange={(value) => setDatosPersonales({ ...datosPersonales, tipoTraslado: value })}
            >
              <SelectTrigger id="tipoTraslado" className="mt-1">
                <SelectValue />
              </SelectTrigger>
              <SelectContent>
                <SelectItem value="Ordinario">Ordinario</SelectItem>
                <SelectItem value="Extraordinario">Extraordinario</SelectItem>
              </SelectContent>
            </Select>
          </div>

          <div>
            <Label htmlFor="establecimiento">Establecimiento del que se Traslada:</Label>
            <Input
              id="establecimiento"
              value={datosPersonales.establecimiento}
              onChange={(e) => setDatosPersonales({ ...datosPersonales, establecimiento: e.target.value })}
              className="mt-1"
            />
          </div>
        </div>

        {/* Antigüedad */}
        <div className="space-y-4">
          {/* Headers */}
          <div className="grid grid-cols-4 gap-3 text-center font-medium">
            <div></div>
            <div>Años</div>
            <div>Meses</div>
            <div>Dias</div>
          </div>

          {/* Titular */}
          <div className="grid grid-cols-4 items-center gap-3">
            <Label className="text-left">Titular:</Label>
            <Input
              value={antiguedad.titular.años}
              onChange={(e) =>
                setAntiguedad({
                  ...antiguedad,
                  titular: { ...antiguedad.titular, años: e.target.value },
                })
              }
              className="bg-blue-50 text-center"
            />
            <Input
              value={antiguedad.titular.meses}
              onChange={(e) =>
                setAntiguedad({
                  ...antiguedad,
                  titular: { ...antiguedad.titular, meses: e.target.value },
                })
              }
              className="bg-blue-50 text-center"
            />
            <Input
              value={antiguedad.titular.dias}
              onChange={(e) =>
                setAntiguedad({
                  ...antiguedad,
                  titular: { ...antiguedad.titular, dias: e.target.value },
                })
              }
              className="bg-blue-50 text-center"
            />
          </div>

          {/* Licencias */}
          <div className="grid grid-cols-4 items-center gap-3">
            <Label className="text-left font-semibold text-red-600">Licencias:</Label>
            <Input
              value={antiguedad.licencias.años}
              onChange={(e) =>
                setAntiguedad({
                  ...antiguedad,
                  licencias: { ...antiguedad.licencias, años: e.target.value },
                })
              }
              className="text-center text-red-600"
            />
            <Input
              value={antiguedad.licencias.meses}
              onChange={(e) =>
                setAntiguedad({
                  ...antiguedad,
                  licencias: { ...antiguedad.licencias, meses: e.target.value },
                })
              }
              className="text-center text-red-600"
            />
            <Input
              value={antiguedad.licencias.dias}
              onChange={(e) =>
                setAntiguedad({
                  ...antiguedad,
                  licencias: { ...antiguedad.licencias, dias: e.target.value },
                })
              }
              className="text-center text-red-600"
            />
          </div>

          {/* Antigüedad para Traslado */}
          <div className="grid grid-cols-4 items-center gap-3">
            <Label className="text-left font-semibold">Antigüedad para Traslado:</Label>
            <Input
              value={antiguedad.traslado.años}
              onChange={(e) =>
                setAntiguedad({
                  ...antiguedad,
                  traslado: { ...antiguedad.traslado, años: e.target.value },
                })
              }
              className="bg-blue-50 text-center font-semibold"
            />
            <Input
              value={antiguedad.traslado.meses}
              onChange={(e) =>
                setAntiguedad({
                  ...antiguedad,
                  traslado: { ...antiguedad.traslado, meses: e.target.value },
                })
              }
              className="bg-blue-50 text-center font-semibold"
            />
            <Input
              value={antiguedad.traslado.dias}
              onChange={(e) =>
                setAntiguedad({
                  ...antiguedad,
                  traslado: { ...antiguedad.traslado, dias: e.target.value },
                })
              }
              className="bg-blue-50 text-center font-semibold"
            />
          </div>
        </div>
      </CardContent>
    </Card>
  );
}
