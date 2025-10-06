"use client";

import { useState } from "react";
import { Settings, Layout, User, Shield } from "lucide-react";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Switch } from "@/components/ui/switch";
import { Button } from "@/components/ui/button";

export default function Page() {
  const [activeTab, setActiveTab] = useState("general");

  return (
    <div className="flex flex-1 flex-col space-y-8 p-8">
      <div className="flex items-center justify-between space-y-2">
        <div>
          <div className="flex items-center space-x-2">
            <Settings className="h-6 w-6" />
            <h2 className="text-3xl font-bold tracking-tight">Configuración</h2>
          </div>
          <p className="text-muted-foreground mt-2">
            Gestiona la configuración del sistema y tus preferencias personales.
          </p>
        </div>
      </div>

      <Tabs value={activeTab} onValueChange={setActiveTab} className="space-y-4">
        <TabsList className="grid w-full grid-cols-4">
          <TabsTrigger value="general" className="flex items-center space-x-2">
            <Settings className="h-4 w-4" />
            <span>General</span>
          </TabsTrigger>
          <TabsTrigger value="layout" className="flex items-center space-x-2">
            <Layout className="h-4 w-4" />
            <span>Layout</span>
          </TabsTrigger>
          <TabsTrigger value="usuario" className="flex items-center space-x-2">
            <User className="h-4 w-4" />
            <span>Usuario</span>
          </TabsTrigger>
          <TabsTrigger value="seguridad" className="flex items-center space-x-2">
            <Shield className="h-4 w-4" />
            <span>Seguridad</span>
          </TabsTrigger>
        </TabsList>

        <TabsContent value="general" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Información del Sistema</CardTitle>
              <CardDescription>Configuración básica del sistema</CardDescription>
            </CardHeader>
            <CardContent className="space-y-4">
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <Label htmlFor="nombre">Nombre del Sistema</Label>
                  <Input id="nombre" defaultValue="Sistema de Junta Primaria de San Juan" />
                </div>
                <div>
                  <Label htmlFor="version">Versión</Label>
                  <Input id="version" defaultValue="2.0.0" disabled />
                </div>
              </div>
            </CardContent>
          </Card>
        </TabsContent>

        <TabsContent value="layout" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Configuración de Tema</CardTitle>
              <CardDescription>Personaliza la apariencia del sistema</CardDescription>
            </CardHeader>
            <CardContent className="space-y-4">
              <div className="flex items-center justify-between">
                <div>
                  <Label>Modo Oscuro</Label>
                  <p className="text-muted-foreground text-sm">Activar tema oscuro</p>
                </div>
                <Switch />
              </div>
            </CardContent>
          </Card>
        </TabsContent>

        <TabsContent value="usuario" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Información del Perfil</CardTitle>
              <CardDescription>Gestiona tu información personal</CardDescription>
            </CardHeader>
            <CardContent className="space-y-4">
              <div className="grid gap-4">
                <div className="space-y-2">
                  <Label htmlFor="nombre-usuario">Nombre Completo</Label>
                  <Input id="nombre-usuario" defaultValue="Administrator" />
                </div>
                <div className="space-y-2">
                  <Label htmlFor="email-usuario">Correo Electrónico</Label>
                  <Input id="email-usuario" type="email" defaultValue="admin@sanjuan.gov.ar" />
                </div>
              </div>
            </CardContent>
          </Card>
        </TabsContent>

        <TabsContent value="seguridad" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Cambiar Contraseña</CardTitle>
              <CardDescription>Actualiza tu contraseña de acceso</CardDescription>
            </CardHeader>
            <CardContent className="space-y-4">
              <div>
                <Label htmlFor="current-password">Contraseña Actual</Label>
                <Input id="current-password" type="password" />
              </div>
              <div>
                <Label htmlFor="new-password">Nueva Contraseña</Label>
                <Input id="new-password" type="password" />
              </div>
              <div>
                <Label htmlFor="confirm-password">Confirmar Contraseña</Label>
                <Input id="confirm-password" type="password" />
              </div>
              <Button>Cambiar Contraseña</Button>
            </CardContent>
          </Card>
        </TabsContent>
      </Tabs>
    </div>
  );
}
