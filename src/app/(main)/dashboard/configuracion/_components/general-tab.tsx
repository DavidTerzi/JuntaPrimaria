// app/(main)/dashboard/configuracion/_components/general-tab.tsx
"use client";

import { Settings } from "lucide-react";

import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Textarea } from "@/components/ui/textarea";
import { Button } from "@/components/ui/button";

export function GeneralTab() {
  return (
    <div className="space-y-6">
      <Card>
        <CardHeader>
          <CardTitle className="flex items-center space-x-2">
            <Settings className="h-5 w-5" />
            <span>Configuración General del Sistema</span>
          </CardTitle>
          <CardDescription>Configuración básica del sistema y preferencias generales</CardDescription>
        </CardHeader>
        <CardContent className="space-y-4">
          <div className="grid grid-cols-1 gap-4 md:grid-cols-2">
            <div className="space-y-2">
              <Label htmlFor="sistema-nombre">Nombre del Sistema</Label>
              <Input id="sistema-nombre" defaultValue="Sistema Junta Primaria San Juan" />
            </div>

            <div className="space-y-2">
              <Label htmlFor="sistema-version">Versión</Label>
              <Input id="sistema-version" defaultValue="1.0.0" disabled />
            </div>

            <div className="space-y-2">
              <Label htmlFor="timezone">Zona Horaria</Label>
              <Select defaultValue="america-argentina">
                <SelectTrigger>
                  <SelectValue />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="america-argentina">América/Argentina/San_Juan</SelectItem>
                  <SelectItem value="america-buenos-aires">América/Buenos_Aires</SelectItem>
                </SelectContent>
              </Select>
            </div>

            <div className="space-y-2">
              <Label htmlFor="idioma">Idioma</Label>
              <Select defaultValue="es">
                <SelectTrigger>
                  <SelectValue />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="es">Español</SelectItem>
                  <SelectItem value="en">English</SelectItem>
                </SelectContent>
              </Select>
            </div>
          </div>

          <div className="space-y-2">
            <Label htmlFor="descripcion">Descripción del Sistema</Label>
            <Textarea
              id="descripcion"
              defaultValue="Sistema de gestión administrativa para la Junta Primaria de San Juan"
              rows={3}
            />
          </div>
        </CardContent>
      </Card>

      <div className="flex justify-end space-x-2">
        <Button variant="outline">Restablecer</Button>
        <Button>Guardar Configuración</Button>
      </div>
    </div>
  );
}
