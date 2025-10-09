"use client";

import { useState } from "react";

import { FileText } from "lucide-react";

import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";

import PlanillaLicencias from "./planilla-licencias";
import PlanillaObservaciones from "./planilla-observaciones";
import PlanillaSinSuplencias from "./planilla-sin-suplencias";
import PlanillaSuplencias from "./planilla-suplencias";
import PlanillaValorados from "./planilla-valorados";

export default function ImpresionPlanillas() {
  const [vistaActual, setVistaActual] = useState<string | null>(null);

  const handlePlanillaConSuplencias = () => {
    setVistaActual("suplencias");
  };

  const handlePlanillaSinSuplencias = () => {
    setVistaActual("sin-suplencias");
  };

  const handlePlanillaConLicencias = () => {
    setVistaActual("licencias");
  };

  const handleDocentesObservaciones = () => {
    setVistaActual("observaciones");
  };

  const handleDocentesValorados = () => {
    setVistaActual("valorados");
  };

  // Si hay una vista activa, mostrar el componente correspondiente
  if (vistaActual === "suplencias") {
    return <PlanillaSuplencias onBack={() => setVistaActual(null)} />;
  }

  if (vistaActual === "sin-suplencias") {
    return <PlanillaSinSuplencias onBack={() => setVistaActual(null)} />;
  }

  if (vistaActual === "licencias") {
    return <PlanillaLicencias onBack={() => setVistaActual(null)} />;
  }

  if (vistaActual === "observaciones") {
    return <PlanillaObservaciones onBack={() => setVistaActual(null)} />;
  }

  if (vistaActual === "valorados") {
    return <PlanillaValorados onBack={() => setVistaActual(null)} />;
  }

  return (
    <Card>
      <CardHeader>
        <div className="flex items-center justify-between">
          <div>
            <CardTitle className="flex items-center space-x-2">
              <FileText className="h-6 w-6" />
              <span>Impresión de Planillas</span>
            </CardTitle>
            <CardDescription>Seleccione el tipo de planilla que desea generar</CardDescription>
          </div>
        </div>
      </CardHeader>
      <CardContent className="space-y-6">
        <div className="flex flex-wrap justify-center gap-3">
          <Button onClick={handlePlanillaConSuplencias} variant="outline" className="min-w-[200px]">
            Antigüedad para Traslado Docentes con Suplencias
          </Button>
          <Button onClick={handlePlanillaSinSuplencias} variant="outline" className="min-w-[200px]">
            Antigüedad para Traslado Docentes Sin Suplencias
          </Button>
          <Button onClick={handlePlanillaConLicencias} variant="outline" className="min-w-[200px]">
            Antigüedad para Traslado Docentes con Licencias
          </Button>
          <Button onClick={handleDocentesObservaciones} variant="outline" className="min-w-[200px]">
            Docentes con Observaciones
          </Button>
          <Button onClick={handleDocentesValorados} variant="outline" className="min-w-[200px]">
            Docentes Valorados
          </Button>
        </div>
      </CardContent>
    </Card>
  );
}
