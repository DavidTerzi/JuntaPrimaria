// app/(main)/dashboard/configuracion/_components/seguridad-tab.tsx
"use client";

import { Shield, Lock, Key, History, AlertTriangle } from "lucide-react";

import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Label } from "@/components/ui/label";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Switch } from "@/components/ui/switch";
import { Separator } from "@/components/ui/separator";
import { Alert, AlertDescription } from "@/components/ui/alert";

export function SeguridadTab() {
  return (
    <div className="space-y-6">
      {/* Cambio de Contraseña */}
      <Card>
        <CardHeader>
          <CardTitle className="flex items-center space-x-2">
            <Lock className="h-5 w-5" />
            <span>Cambiar Contraseña</span>
          </CardTitle>
          <CardDescription>
            Actualiza tu contraseña para mantener tu cuenta segura
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-4">
          <div>
            <Label htmlFor="current-password">Contraseña Actual</Label>
            <Input
              id="current-password"
              type="password"
              placeholder="Ingresa tu contraseña actual"
              className="mt-1"
            />
          </div>

          <div>
            <Label htmlFor="new-password">Nueva Contraseña</Label>
            <Input
              id="new-password"
              type="password"
              placeholder="Ingresa tu nueva contraseña"
              className="mt-1"
            />
          </div>

          <div>
            <Label htmlFor="confirm-password">Confirmar Nueva Contraseña</Label>
            <Input
              id="confirm-password"
              type="password"
              placeholder="Confirma tu nueva contraseña"
              className="mt-1"
            />
          </div>

          <Alert>
            <AlertTriangle className="h-4 w-4" />
            <AlertDescription>
              La contraseña debe tener al menos 8 caracteres, incluir una mayúscula, una minúscula y un número.
            </AlertDescription>
          </Alert>

          <Button>Cambiar Contraseña</Button>
        </CardContent>
      </Card>

      {/* Configuración de Seguridad */}
      <Card>
        <CardHeader>
          <CardTitle className="flex items-center space-x-2">
            <Shield className="h-5 w-5" />
            <span>Configuración de Seguridad</span>
          </CardTitle>
          <CardDescription>
            Opciones de seguridad para tu cuenta
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-6">
          <div className="flex items-center justify-between">
            <div className="space-y-0.5">
              <Label className="text-base">Autenticación de Dos Factores</Label>
              <p className="text-sm text-muted-foreground">
                Añade una capa extra de seguridad a tu cuenta
              </p>
            </div>
            <Switch />
          </div>

          <Separator />

          <div className="flex items-center justify-between">
            <div className="space-y-0.5">
              <Label className="text-base">Notificaciones de Inicio de Sesión</Label>
              <p className="text-sm text-muted-foreground">
                Recibe alertas cuando alguien acceda a tu cuenta
              </p>
            </div>
            <Switch defaultChecked />
          </div>

          <Separator />

          <div className="flex items-center justify-between">
            <div className="space-y-0.5">
              <Label className="text-base">Cerrar Sesiones Inactivas</Label>
              <p className="text-sm text-muted-foreground">
                Cierra automáticamente sesiones después de 30 minutos de inactividad
              </p>
            </div>
            <Switch defaultChecked />
          </div>
        </CardContent>
      </Card>

      {/* API Keys */}
      <Card>
        <CardHeader>
          <CardTitle className="flex items-center space-x-2">
            <Key className="h-5 w-5" />
            <span>Claves API</span>
          </CardTitle>
          <CardDescription>
            Administra las claves de API para integraciones
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-4">
          <div className="flex items-center justify-between p-4 border rounded-lg">
            <div>
              <p className="font-medium">API Principal</p>
              <p className="text-sm text-muted-foreground">sk-••••••••••••••••••••••••••••••••</p>
              <p className="text-xs text-muted-foreground">Creada el 15 de enero, 2024</p>
            </div>
            <Button variant="outline" size="sm">Regenerar</Button>
          </div>

          <Button variant="outline">
            <Key className="h-4 w-4 mr-2" />
            Crear Nueva Clave API
          </Button>
        </CardContent>
      </Card>

      {/* Historial de Actividad */}
      <Card>
        <CardHeader>
          <CardTitle className="flex items-center space-x-2">
            <History className="h-5 w-5" />
            <span>Actividad Reciente</span>
          </CardTitle>
          <CardDescription>
            Últimas actividades de seguridad en tu cuenta
          </CardDescription>
        </CardHeader>
        <CardContent>
          <div className="space-y-3">
            <div className="flex items-center justify-between p-3 border rounded-lg">
              <div>
                <p className="text-sm font-medium">Inicio de sesión exitoso</p>
                <p className="text-xs text-muted-foreground">IP: 192.168.1.100 • Hace 2 horas</p>
              </div>
              <div className="h-2 w-2 bg-green-500 rounded-full"></div>
            </div>

            <div className="flex items-center justify-between p-3 border rounded-lg">
              <div>
                <p className="text-sm font-medium">Contraseña modificada</p>
                <p className="text-xs text-muted-foreground">IP: 192.168.1.100 • Hace 1 día</p>
              </div>
              <div className="h-2 w-2 bg-blue-500 rounded-full"></div>
            </div>

            <div className="flex items-center justify-between p-3 border rounded-lg">
              <div>
                <p className="text-sm font-medium">Nuevo dispositivo detectado</p>
                <p className="text-xs text-muted-foreground">IP: 10.0.0.25 • Hace 3 días</p>
              </div>
              <div className="h-2 w-2 bg-yellow-500 rounded-full"></div>
            </div>
          </div>
        </CardContent>
      </Card>

      <div className="flex justify-end space-x-2">
        <Button variant="outline">Descargar Log de Seguridad</Button>
        <Button>Guardar Configuración</Button>
      </div>
    </div>
  );
}