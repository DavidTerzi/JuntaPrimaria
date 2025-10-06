// app/(main)/dashboard/configuracion/_components/usuario-tab.tsx
"use client";

import { useState } from "react";
import { User, Upload, Bell } from "lucide-react";

import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Switch } from "@/components/ui/switch";
import { Separator } from "@/components/ui/separator";

export function UsuarioTab() {
  const [notificacionesEmail, setNotificacionesEmail] = useState(true);
  const [notificacionesPush, setNotificacionesPush] = useState(false);

  return (
    <div className="space-y-6">
      {/* Información del Perfil */}
      <Card>
        <CardHeader>
          <CardTitle className="flex items-center space-x-2">
            <User className="h-5 w-5" />
            <span>Información del Perfil</span>
          </CardTitle>
          <CardDescription>Gestiona tu información personal y foto de perfil</CardDescription>
        </CardHeader>
        <CardContent className="space-y-6">
          {/* Foto de Perfil */}
          <div className="flex items-center space-x-6">
            <div className="flex-shrink-0">
              <div className="flex h-20 w-20 items-center justify-center rounded-full bg-gradient-to-br from-orange-400 to-red-500 text-2xl font-bold text-white">
                SDS
              </div>
            </div>
            <div className="flex-1 space-y-2">
              <div>
                <Label className="text-sm font-medium">Actualiza tu Foto de perfil</Label>
                <p className="text-muted-foreground text-xs">Formatos soportados: JPG, PNG, GIF (máx. 5MB)</p>
              </div>
              <Button variant="outline" size="sm" className="flex items-center space-x-2">
                <Upload className="h-4 w-4" />
                <span>Subir Imagen</span>
              </Button>
            </div>
          </div>

          <Separator />

          {/* Información Personal */}
          <div className="grid grid-cols-1 gap-4">
            <div className="space-y-2">
              <Label htmlFor="nombre">Nombre Completo</Label>
              <Input id="nombre" defaultValue="Superadministrador del Sistema" className="max-w-md" />
            </div>

            <div className="space-y-2">
              <Label htmlFor="email">Correo Electrónico</Label>
              <Input id="email" type="email" defaultValue="admin@fiestadelsol.com" className="max-w-md" />
            </div>

            <div className="space-y-2">
              <Label htmlFor="telefono">Teléfono</Label>
              <Input id="telefono" defaultValue="+54 9 xxx xxx xxx" className="max-w-md" />
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Notificaciones */}
      <Card>
        <CardHeader>
          <CardTitle className="flex items-center space-x-2">
            <Bell className="h-5 w-5" />
            <span>Notificaciones</span>
          </CardTitle>
        </CardHeader>
        <CardContent className="space-y-4">
          <div className="flex items-center justify-between">
            <div className="space-y-0.5">
              <Label className="text-base">Notificaciones por Email</Label>
              <p className="text-muted-foreground text-sm">Recibe actualizaciones por correo</p>
            </div>
            <Switch checked={notificacionesEmail} onCheckedChange={setNotificacionesEmail} />
          </div>

          <div className="flex items-center justify-between">
            <div className="space-y-0.5">
              <Label className="text-base">Notificaciones Push</Label>
              <p className="text-muted-foreground text-sm">Notificaciones en el navegador</p>
            </div>
            <Switch checked={notificacionesPush} onCheckedChange={setNotificacionesPush} />
          </div>
        </CardContent>
      </Card>

      {/* Botones de Acción */}
      <div className="flex justify-end space-x-2">
        <Button variant="outline">Cancelar</Button>
        <Button>Guardar Cambios</Button>
      </div>
    </div>
  );
}
