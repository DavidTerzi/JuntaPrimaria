"use client";

import { useState } from "react";

import { ArrowLeft, Search, FileText } from "lucide-react";

import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";

interface PlanillaSuplenciasProps {
  onBack: () => void;
}

export default function PlanillaSuplencias({ onBack }: PlanillaSuplenciasProps) {
  const [formData, setFormData] = useState({
    dni: "",
    apellido: "",
    nombre: "",
    denominacion_cargo: "",
    tipo_traslado: "Ordinario",
    establecimiento: "",
    suplente_anios: "0",
    suplente_meses: "8",
    suplente_dias: "28",
    titular_anios: "34",
    titular_meses: "5",
    titular_dias: "10",
    traslado_anios: "35",
    traslado_meses: "2",
    traslado_dias: "8",
  });

  const [buscando, setBuscando] = useState(false);

  const buscarPorDNI = async () => {
    if (!formData.dni.trim()) {
      return;
    }

    setBuscando(true);

    try {
      // TODO: Aquí irá la consulta a la base de datos
      // const response = await fetch(`/api/personas/planilla?dni=${formData.dni}`);
      // const data = await response.json();
      // if (data.success) {
      //   setFormData(prev => ({ ...prev, ...data.data }));
      // }

      console.log("Buscando DNI:", formData.dni);
      // Simulación de datos (remover cuando se implemente la API)
      setTimeout(() => {
        setFormData((prev) => ({
          ...prev,
          apellido: "PEREZ",
          nombre: "Maria del Valle",
          denominacion_cargo:
            "Maestro de Especialidades - Educación Inicial y/o Primario - Jornada Simple - ACTIVIDADES PRACTICAS(TECNOLOGIA)",
          establecimiento: "MIGUEL DE CERVANTES",
        }));
        setBuscando(false);
      }, 500);
    } catch (error) {
      console.error("Error al buscar:", error);
      setBuscando(false);
    }
  };

  const generarPlanilla = () => {
    console.log("Generar planilla con datos:", formData);
    // TODO: Aquí irá la lógica para generar el PDF
  };

  return (
    <Card>
      <CardHeader>
        <div className="flex items-center justify-between">
          <div className="flex items-center space-x-3">
            <Button variant="outline" size="icon" onClick={onBack}>
              <ArrowLeft className="h-4 w-4" />
            </Button>
            <CardTitle>Planilla Docente</CardTitle>
          </div>
        </div>
      </CardHeader>
      <CardContent className="space-y-6">
        {/* DNI Search */}
        <div className="space-y-2">
          <Label htmlFor="dni">N° D.N.I.:</Label>
          <div className="flex gap-2">
            <Input
              id="dni"
              type="text"
              placeholder="Ingrese DNI"
              value={formData.dni}
              onChange={(e) => setFormData((prev) => ({ ...prev, dni: e.target.value }))}
              className="max-w-xs"
              disabled={buscando}
            />
            <Button variant="outline" size="icon" onClick={buscarPorDNI} disabled={buscando}>
              {buscando ? (
                <div className="h-4 w-4 animate-spin rounded-full border-2 border-gray-500 border-t-transparent" />
              ) : (
                <Search className="h-4 w-4" />
              )}
            </Button>
          </div>
        </div>

        {/* Apellido */}
        <div className="space-y-2">
          <Label htmlFor="apellido">Apellido:</Label>
          <Input
            id="apellido"
            type="text"
            value={formData.apellido}
            onChange={(e) => setFormData((prev) => ({ ...prev, apellido: e.target.value }))}
          />
        </div>

        {/* Nombre */}
        <div className="space-y-2">
          <Label htmlFor="nombre">Nombre:</Label>
          <Input
            id="nombre"
            type="text"
            value={formData.nombre}
            onChange={(e) => setFormData((prev) => ({ ...prev, nombre: e.target.value }))}
          />
        </div>

        {/* Denominación del Cargo */}
        <div className="space-y-2">
          <Label htmlFor="cargo">Denominacion del cargo:</Label>
          <Input
            id="cargo"
            type="text"
            value={formData.denominacion_cargo}
            onChange={(e) => setFormData((prev) => ({ ...prev, denominacion_cargo: e.target.value }))}
          />
        </div>

        {/* Tipo de Traslado */}
        <div className="space-y-2">
          <Label htmlFor="tipo-traslado">Tipo de Traslado:</Label>
          <Select
            value={formData.tipo_traslado}
            onValueChange={(value) => setFormData((prev) => ({ ...prev, tipo_traslado: value }))}
          >
            <SelectTrigger id="tipo-traslado" className="max-w-xs">
              <SelectValue />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="Ordinario">Ordinario</SelectItem>
              <SelectItem value="Extraordinario">Extraordinario</SelectItem>
            </SelectContent>
          </Select>
        </div>

        {/* Establecimiento */}
        <div className="space-y-2">
          <Label htmlFor="establecimiento">Establecimiento del que se Traslada:</Label>
          <Input
            id="establecimiento"
            type="text"
            value={formData.establecimiento}
            onChange={(e) => setFormData((prev) => ({ ...prev, establecimiento: e.target.value }))}
          />
        </div>

        {/* Antigüedad Suplente */}
        <div className="space-y-2">
          <Label className="text-base font-semibold">Suplente:</Label>
          <div className="grid grid-cols-3 gap-4">
            <div className="space-y-2">
              <Label htmlFor="suplente-anios" className="text-muted-foreground text-sm">
                Años
              </Label>
              <Input
                id="suplente-anios"
                type="number"
                value={formData.suplente_anios}
                onChange={(e) => setFormData((prev) => ({ ...prev, suplente_anios: e.target.value }))}
                className="text-center"
              />
            </div>
            <div className="space-y-2">
              <Label htmlFor="suplente-meses" className="text-muted-foreground text-sm">
                Meses
              </Label>
              <Input
                id="suplente-meses"
                type="number"
                value={formData.suplente_meses}
                onChange={(e) => setFormData((prev) => ({ ...prev, suplente_meses: e.target.value }))}
                className="text-center"
              />
            </div>
            <div className="space-y-2">
              <Label htmlFor="suplente-dias" className="text-muted-foreground text-sm">
                Dias
              </Label>
              <Input
                id="suplente-dias"
                type="number"
                value={formData.suplente_dias}
                onChange={(e) => setFormData((prev) => ({ ...prev, suplente_dias: e.target.value }))}
                className="text-center"
              />
            </div>
          </div>
        </div>

        {/* Antigüedad Titular */}
        <div className="space-y-2">
          <Label className="text-base font-semibold">Titular:</Label>
          <div className="grid grid-cols-3 gap-4">
            <div className="space-y-2">
              <Label htmlFor="titular-anios" className="text-muted-foreground text-sm">
                Años
              </Label>
              <Input
                id="titular-anios"
                type="number"
                value={formData.titular_anios}
                onChange={(e) => setFormData((prev) => ({ ...prev, titular_anios: e.target.value }))}
                className="text-center"
              />
            </div>
            <div className="space-y-2">
              <Label htmlFor="titular-meses" className="text-muted-foreground text-sm">
                Meses
              </Label>
              <Input
                id="titular-meses"
                type="number"
                value={formData.titular_meses}
                onChange={(e) => setFormData((prev) => ({ ...prev, titular_meses: e.target.value }))}
                className="text-center"
              />
            </div>
            <div className="space-y-2">
              <Label htmlFor="titular-dias" className="text-muted-foreground text-sm">
                Dias
              </Label>
              <Input
                id="titular-dias"
                type="number"
                value={formData.titular_dias}
                onChange={(e) => setFormData((prev) => ({ ...prev, titular_dias: e.target.value }))}
                className="text-center"
              />
            </div>
          </div>
        </div>

        {/* Antigüedad para Traslado */}
        <div className="space-y-2">
          <Label className="text-base font-semibold">Antigüedad para Traslado:</Label>
          <div className="grid grid-cols-3 gap-4">
            <div className="space-y-2">
              <Label htmlFor="traslado-anios" className="text-muted-foreground text-sm">
                Años
              </Label>
              <Input
                id="traslado-anios"
                type="number"
                value={formData.traslado_anios}
                onChange={(e) => setFormData((prev) => ({ ...prev, traslado_anios: e.target.value }))}
                className="bg-blue-50 text-center font-semibold"
              />
            </div>
            <div className="space-y-2">
              <Label htmlFor="traslado-meses" className="text-muted-foreground text-sm">
                Meses
              </Label>
              <Input
                id="traslado-meses"
                type="number"
                value={formData.traslado_meses}
                onChange={(e) => setFormData((prev) => ({ ...prev, traslado_meses: e.target.value }))}
                className="bg-blue-50 text-center font-semibold"
              />
            </div>
            <div className="space-y-2">
              <Label htmlFor="traslado-dias" className="text-muted-foreground text-sm">
                Dias
              </Label>
              <Input
                id="traslado-dias"
                type="number"
                value={formData.traslado_dias}
                onChange={(e) => setFormData((prev) => ({ ...prev, traslado_dias: e.target.value }))}
                className="bg-blue-50 text-center font-semibold"
              />
            </div>
          </div>
        </div>

        {/* Botón de Generar Planilla */}
        <div className="flex justify-center pt-4">
          <Button onClick={generarPlanilla} className="min-w-[200px]" size="lg">
            <FileText className="mr-2 h-5 w-5" />
            Generar Planilla PDF
          </Button>
        </div>
      </CardContent>
    </Card>
  );
}
