"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import { Users, FileUser, Calendar, FileText, List, UserPlus, Search, X } from "lucide-react";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Textarea } from "@/components/ui/textarea";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog";

export default function Page() {
  const router = useRouter();
  const [activeTab, setActiveTab] = useState("titulares");
  const [showCargarForm, setShowCargarForm] = useState(false);
  const [showBuscarModal, setShowBuscarModal] = useState(false);
  const [showBuscarSuplenciaModal, setShowBuscarSuplenciaModal] = useState(false);
  const [buscarDni, setBuscarDni] = useState("");
  const [buscarSuplencia, setBuscarSuplencia] = useState("");

  return (
    <div className="flex flex-1 flex-col space-y-8 p-8">
      <div className="flex items-center justify-between space-y-2">
        <div>
          <div className="flex items-center space-x-2">
            <Users className="h-6 w-6" />
            <h2 className="text-3xl font-bold tracking-tight">Sistema de Junta Primaria</h2>
          </div>
          <p className="text-muted-foreground mt-2">Gestión de titulares, suplencias y administración del sistema.</p>
        </div>
      </div>

      <Tabs value={activeTab} onValueChange={setActiveTab} className="space-y-4">
        <TabsList className="grid w-full grid-cols-5">
          <TabsTrigger value="titulares" className="flex items-center space-x-2">
            <Users className="h-4 w-4" />
            <span>Titulares</span>
          </TabsTrigger>
          <TabsTrigger value="suplencias" className="flex items-center space-x-2">
            <FileUser className="h-4 w-4" />
            <span>Suplencias</span>
          </TabsTrigger>
          <TabsTrigger value="antiguedad" className="flex items-center space-x-2">
            <Calendar className="h-4 w-4" />
            <span>Antigüedad para Traslado</span>
          </TabsTrigger>
          <TabsTrigger value="planillas" className="flex items-center space-x-2">
            <FileText className="h-4 w-4" />
            <span>Impresión de Planillas</span>
          </TabsTrigger>
          <TabsTrigger value="listado" className="flex items-center space-x-2">
            <List className="h-4 w-4" />
            <span>Generar Listado</span>
          </TabsTrigger>
        </TabsList>

        <TabsContent value="titulares" className="space-y-4">
          {!showCargarForm ? (
            <Card>
              <CardHeader>
                <CardTitle>Gestión de Titulares</CardTitle>
                <CardDescription>Administrar y consultar información de titulares</CardDescription>
              </CardHeader>
              <CardContent className="space-y-4">
                <div className="flex flex-col items-start gap-4">
                  <Button className="flex items-center space-x-2" size="lg" onClick={() => setShowCargarForm(true)}>
                    <UserPlus className="h-5 w-5" />
                    <span>Cargar Titular</span>
                  </Button>

                  <Dialog open={showBuscarModal} onOpenChange={setShowBuscarModal}>
                    <DialogTrigger asChild>
                      <Button variant="outline" className="flex items-center space-x-2" size="lg">
                        <Search className="h-5 w-5" />
                        <span>Buscar Titular</span>
                      </Button>
                    </DialogTrigger>
                    <DialogContent className="sm:max-w-md">
                      <DialogHeader>
                        <DialogTitle>Introducir el valor del parámetro</DialogTitle>
                        <DialogDescription>Ingrese N° DNI</DialogDescription>
                      </DialogHeader>
                      <div className="space-y-4">
                        <div>
                          <Input
                            placeholder="N° DNI"
                            value={buscarDni}
                            onChange={(e) => setBuscarDni(e.target.value)}
                          />
                        </div>
                        <div className="flex justify-end space-x-2">
                          <Button variant="outline" onClick={() => setShowBuscarModal(false)}>
                            Cancelar
                          </Button>
                          <Button
                            onClick={() => {
                              // TODO: Aquí se agregará la lógica de búsqueda cuando tengamos la base de datos
                              console.log("Buscando DNI:", buscarDni);
                              setShowBuscarModal(false);
                              setBuscarDni(""); // Limpiar el campo
                            }}
                          >
                            Aceptar
                          </Button>
                        </div>
                      </div>
                    </DialogContent>
                  </Dialog>
                </div>
              </CardContent>
            </Card>
          ) : (
            <Card>
              <CardHeader>
                <div className="flex items-center justify-between">
                  <div>
                    <CardTitle>Cargar Antigüedad Titular</CardTitle>
                    <CardDescription>Complete todos los campos requeridos</CardDescription>
                  </div>
                  <Button variant="outline" size="sm" onClick={() => setShowCargarForm(false)}>
                    <X className="h-4 w-4" />
                  </Button>
                </div>
              </CardHeader>
              <CardContent className="space-y-6">
                <div className="grid grid-cols-1 gap-4 md:grid-cols-2">
                  <div className="space-y-2">
                    <Label htmlFor="dni">N° D.N.I.:</Label>
                    <Input id="dni" placeholder="Ingrese DNI" />
                  </div>
                  <div className="space-y-2">
                    <Label htmlFor="apellido">Apellido:</Label>
                    <Input id="apellido" placeholder="Ingrese apellido" />
                  </div>
                </div>

                <div className="grid grid-cols-1 gap-4 md:grid-cols-2">
                  <div className="space-y-2">
                    <Label htmlFor="nombre">Nombre:</Label>
                    <Input id="nombre" placeholder="Ingrese nombre" />
                  </div>
                  <div className="space-y-2">
                    <Label htmlFor="cargo">Denominación del Cargo:</Label>
                    <Input id="cargo" placeholder="Ingrese denominación del cargo" />
                  </div>
                </div>

                <div className="grid grid-cols-1 gap-4 md:grid-cols-2">
                  <div className="space-y-2">
                    <Label htmlFor="fecha-titularizacion">Fecha de Titularización:</Label>
                    <Input id="fecha-titularizacion" type="date" />
                  </div>
                  <div className="space-y-2">
                    <Label htmlFor="fecha-traslado">Fecha de Traslado-Baja:</Label>
                    <Input id="fecha-traslado" type="date" />
                  </div>
                </div>

                <div className="space-y-2">
                  <Label htmlFor="establecimiento">Establecimiento:</Label>
                  <Input id="establecimiento" placeholder="Ingrese establecimiento" />
                </div>

                <div className="space-y-4">
                  <h3 className="rounded bg-gray-100 p-2 text-lg font-medium">
                    Datos para conformar el Listado de Traslado
                  </h3>

                  <div className="grid grid-cols-1 gap-4 md:grid-cols-2">
                    <div className="space-y-2">
                      <Label htmlFor="tipo-traslado">Tipo de Traslado:</Label>
                      <Select>
                        <SelectTrigger>
                          <SelectValue placeholder="Seleccione tipo de traslado" />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="regular">Regular</SelectItem>
                          <SelectItem value="especial">Especial</SelectItem>
                          <SelectItem value="por-necesidad">Por Necesidad</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>
                    <div className="space-y-2">
                      <Label htmlFor="establecimiento-traslado">Establecimiento del que se traslada:</Label>
                      <Input id="establecimiento-traslado" placeholder="Ingrese establecimiento" />
                    </div>
                  </div>

                  <div className="grid grid-cols-1 gap-4 md:grid-cols-3">
                    <div className="space-y-2">
                      <Label htmlFor="categoria">Categoría:</Label>
                      <Select>
                        <SelectTrigger>
                          <SelectValue placeholder="Seleccione" />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="a">A</SelectItem>
                          <SelectItem value="b">B</SelectItem>
                          <SelectItem value="c">C</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>
                    <div className="space-y-2">
                      <Label htmlFor="turno">Turno:</Label>
                      <Select>
                        <SelectTrigger>
                          <SelectValue placeholder="Seleccione" />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="mañana">Mañana</SelectItem>
                          <SelectItem value="tarde">Tarde</SelectItem>
                          <SelectItem value="vespertino">Vespertino</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>
                    <div className="space-y-2">
                      <Label htmlFor="radio">Radio:</Label>
                      <Select>
                        <SelectTrigger>
                          <SelectValue placeholder="Seleccione" />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="urbano">Urbano</SelectItem>
                          <SelectItem value="rural">Rural</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>
                  </div>

                  <div className="space-y-2">
                    <Label htmlFor="observaciones">Observaciones:</Label>
                    <Textarea id="observaciones" placeholder="Ingrese observaciones" rows={4} />
                  </div>
                </div>

                <div className="flex justify-center space-x-4 pt-4">
                  <Button className="bg-blue-500 hover:bg-blue-600">Licencias</Button>
                  <Button className="bg-blue-500 hover:bg-blue-600">Cargar Suplencias</Button>
                </div>
              </CardContent>
            </Card>
          )}
        </TabsContent>

        <TabsContent value="suplencias" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Gestión de Suplencias</CardTitle>
              <CardDescription>Administrar y consultar información de suplencias</CardDescription>
            </CardHeader>
            <CardContent className="space-y-4">
              <div className="flex flex-col gap-4 items-start">                
                <Dialog open={showBuscarSuplenciaModal} onOpenChange={setShowBuscarSuplenciaModal}>
                  <DialogTrigger asChild>
                    <Button variant="outline" className="flex items-center space-x-2" size="lg">
                      <Search className="h-5 w-5" />
                      <span>Buscar Suplencia</span>
                    </Button>
                  </DialogTrigger>
                  <DialogContent className="sm:max-w-md">
                    <DialogHeader>
                      <DialogTitle>Introducir el valor del parámetro</DialogTitle>
                      <DialogDescription>
                        Ingrese término de búsqueda (DNI, nombre, establecimiento, etc.)
                      </DialogDescription>
                    </DialogHeader>
                    <div className="space-y-4">
                      <div>
                        <Input 
                          placeholder="Término de búsqueda"
                          value={buscarSuplencia}
                          onChange={(e) => setBuscarSuplencia(e.target.value)}
                          onKeyPress={(e) => {
                            if (e.key === 'Enter' && buscarSuplencia.trim()) {
                              router.push(`/dashboard/suplencias?search=${encodeURIComponent(buscarSuplencia.trim())}`);
                              setShowBuscarSuplenciaModal(false);
                              setBuscarSuplencia("");
                            }
                          }}
                        />
                      </div>
                      <div className="flex justify-end space-x-2">
                        <Button variant="outline" onClick={() => {
                          setShowBuscarSuplenciaModal(false);
                          setBuscarSuplencia("");
                        }}>
                          Cancelar
                        </Button>
                        <Button onClick={() => {
                          if (buscarSuplencia.trim()) {
                            router.push(`/dashboard/suplencias?search=${encodeURIComponent(buscarSuplencia.trim())}`);
                            setShowBuscarSuplenciaModal(false);
                            setBuscarSuplencia("");
                          }
                        }}>
                          Aceptar
                        </Button>
                      </div>
                    </div>
                  </DialogContent>
                </Dialog>
              </div>
            </CardContent>
          </Card>
        </TabsContent>

        <TabsContent value="antiguedad" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Antigüedad para Traslado</CardTitle>
              <CardDescription>Consultar y gestionar antigüedad para traslados</CardDescription>
            </CardHeader>
            <CardContent className="space-y-4">
              <p className="text-muted-foreground">Contenido de antigüedad - En desarrollo</p>
            </CardContent>
          </Card>
        </TabsContent>

        <TabsContent value="planillas" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Impresión de Planillas</CardTitle>
              <CardDescription>Generar e imprimir planillas del sistema</CardDescription>
            </CardHeader>
            <CardContent className="space-y-4">
              <p className="text-muted-foreground">Contenido de planillas - En desarrollo</p>
            </CardContent>
          </Card>
        </TabsContent>

        <TabsContent value="listado" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Generar Listado</CardTitle>
              <CardDescription>Crear y exportar listados del sistema</CardDescription>
            </CardHeader>
            <CardContent className="space-y-4">
              <p className="text-muted-foreground">Contenido de listados - En desarrollo</p>
            </CardContent>
          </Card>
        </TabsContent>
      </Tabs>
    </div>
  );
}
