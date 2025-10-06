// app/(main)/dashboard/configuracion/_components/layout-tab.tsx
"use client";

import { Layout, Monitor, Palette } from "lucide-react";

import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Label } from "@/components/ui/label";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Switch } from "@/components/ui/switch";
import { Button } from "@/components/ui/button";
import { Separator } from "@/components/ui/separator";

export function LayoutTab() {
  return (
    <div className="space-y-6">
      <Card>
        <CardHeader>
          <CardTitle className="flex items-center space-x-2">
            <Layout className="h-5 w-5" />
            <span>Configuración de Layout</span>
          </CardTitle>
          <CardDescription>
            Personaliza la apariencia y el comportamiento de la interfaz
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-6">
          {/* Tema */}
          <div className="space-y-4">
            <div className="flex items-center space-x-2">
              <Palette className="h-4 w-4" />
              <Label className="text-base font-medium">Tema</Label>
            </div>
            
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="modo-tema">Modo de Tema</Label>
                <Select defaultValue="light">
                  <SelectTrigger>
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="light">Claro</SelectItem>
                    <SelectItem value="dark">Oscuro</SelectItem>
                    <SelectItem value="system">Sistema</SelectItem>
                  </SelectContent>
                </Select>
              </div>

              <div className="space-y-2">
                <Label htmlFor="preset-tema">Preset de Colores</Label>
                <Select defaultValue="default">
                  <SelectTrigger>
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="default">Por Defecto</SelectItem>
                    <SelectItem value="orange">Naranja San Juan</SelectItem>
                    <SelectItem value="blue">Azul Gubernamental</SelectItem>
                  </SelectContent>
                </Select>
              </div>
            </div>
          </div>

          <Separator />

          {/* Sidebar */}
          <div className="space-y-4">
            <div className="flex items-center space-x-2">
              <Monitor className="h-4 w-4" />
              <Label className="text-base font-medium">Sidebar</Label>
            </div>

            <div className="space-y-4">
              <div className="flex items-center justify-between">
                <div className="space-y-0.5">
                  <Label className="text-base">Sidebar Colapsable</Label>
                  <p className="text-sm text-muted-foreground">
                    Permite contraer el menú lateral
                  </p>
                </div>
                <Switch defaultChecked />
              </div>

              <div className="flex items-center justify-between">
                <div className="space-y-0.5">
                  <Label className="text-base">Auto Colapsar en Móvil</Label>
                  <p className="text-sm text-muted-foreground">
                    Colapsa automáticamente en dispositivos pequeños
                  </p>
                </div>
                <Switch defaultChecked />
              </div>
            </div>
          </div>

          <Separator />

          {/* Otras opciones */}
          <div className="space-y-4">
            <div className="flex items-center justify-between">
              <div className="space-y-0.5">
                <Label className="text-base">Breadcrumbs</Label>
                <p className="text-sm text-muted-foreground">
                  Mostrar navegación de migas de pan
                </p>
              </div>
              <Switch defaultChecked />
            </div>

            <div className="flex items-center justify-between">
              <div className="space-y-0.5">
                <Label className="text-base">Animaciones</Label>
                <p className="text-sm text-muted-foreground">
                  Habilitar transiciones y animaciones
                </p>
              </div>
              <Switch defaultChecked />
            </div>
          </div>
        </CardContent>
      </Card>

      <div className="flex justify-end space-x-2">
        <Button variant="outline">Restablecer por Defecto</Button>
        <Button>Aplicar Cambios</Button>
      </div>
    </div>
  );
}