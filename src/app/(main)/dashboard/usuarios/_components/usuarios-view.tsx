"use client";

import * as React from "react";
import { Plus, Search, Filter, Download, RefreshCw } from "lucide-react";
import { toast } from "sonner";

import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";

import { UsuariosTable } from "./usuarios-table";
import { UsuarioForm } from "./usuario-form";
import type { Usuario, Rol, UsuarioFilters } from "./types";

export function UsuariosView() {
  const [usuarios, setUsuarios] = React.useState<Usuario[]>([]);
  const [roles, setRoles] = React.useState<Rol[]>([]);
  const [isLoading, setIsLoading] = React.useState(true);
  const [isRefreshing, setIsRefreshing] = React.useState(false);

  // Estados para formulario
  const [formOpen, setFormOpen] = React.useState(false);
  const [editingUsuario, setEditingUsuario] = React.useState<Usuario | null>(null);

  // Estados para filtros
  const [filters, setFilters] = React.useState<UsuarioFilters>({
    search: "",
    rol_id: undefined,
    activo: undefined,
  });

  // Cargar roles al montar el componente
  React.useEffect(() => {
    fetchRoles();
  }, []);

  // Cargar usuarios cuando cambian los filtros
  React.useEffect(() => {
    fetchUsuarios();
  }, [filters]);

  const fetchRoles = async () => {
    try {
      const response = await fetch("/api/roles?activo=true");
      if (response.ok) {
        const data = await response.json();
        setRoles(data);
      } else {
        toast.error("Error al cargar roles");
      }
    } catch (error) {
      console.error("Error:", error);
      toast.error("Error de conexión al cargar roles");
    }
  };

  const fetchUsuarios = async () => {
    try {
      setIsLoading(true);

      const params = new URLSearchParams();
      if (filters.search) params.append("search", filters.search);
      if (filters.rol_id) params.append("rol_id", filters.rol_id.toString());
      if (filters.activo !== undefined) params.append("activo", filters.activo.toString());

      const response = await fetch(`/api/usuarios?${params.toString()}`);

      if (response.ok) {
        const data = await response.json();
        setUsuarios(data.usuarios || []);
      } else {
        toast.error("Error al cargar usuarios");
        setUsuarios([]);
      }
    } catch (error) {
      console.error("Error:", error);
      toast.error("Error de conexión");
      setUsuarios([]);
    } finally {
      setIsLoading(false);
    }
  };

  const handleRefresh = async () => {
    setIsRefreshing(true);
    await fetchUsuarios();
    setIsRefreshing(false);
  };

  const handleCreate = () => {
    setEditingUsuario(null);
    setFormOpen(true);
  };

  const handleEdit = (usuario: Usuario) => {
    setEditingUsuario(usuario);
    setFormOpen(true);
  };

  const handleDelete = (id: number) => {
    setUsuarios((prev) => prev.filter((u) => u.id !== id));
  };

  const handleFormSuccess = () => {
    fetchUsuarios();
  };

  const handleSearchChange = (value: string) => {
    setFilters((prev) => ({ ...prev, search: value }));
  };

  const handleRolFilterChange = (value: string) => {
    setFilters((prev) => ({
      ...prev,
      rol_id: value === "all" ? undefined : parseInt(value),
    }));
  };

  const handleActivoFilterChange = (value: string) => {
    setFilters((prev) => ({
      ...prev,
      activo: value === "all" ? undefined : value === "true",
    }));
  };

  const handleExportUsers = () => {
    // Implementar exportación (CSV, Excel, etc.)
    toast.info("Funcionalidad de exportación en desarrollo");
  };

  return (
    <div className="space-y-6">
      {/* Header */}
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-3xl font-bold tracking-tight">Gestión de Usuarios</h1>
          <p className="text-muted-foreground">Administra los usuarios del sistema y sus permisos</p>
        </div>
        <div className="flex items-center gap-2">
          <Button variant="outline" size="sm" onClick={handleRefresh} disabled={isRefreshing}>
            <RefreshCw className={`h-4 w-4 ${isRefreshing ? "animate-spin" : ""}`} />
            Actualizar
          </Button>
          <Button variant="outline" size="sm" onClick={handleExportUsers}>
            <Download className="h-4 w-4" />
            Exportar
          </Button>
          <Button onClick={handleCreate}>
            <Plus className="h-4 w-4" />
            Nuevo Usuario
          </Button>
        </div>
      </div>

      {/* Estadísticas */}
      <div className="grid gap-4 md:grid-cols-4">
        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">Total Usuarios</CardTitle>
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{usuarios.length}</div>
          </CardContent>
        </Card>
        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">Usuarios Activos</CardTitle>
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{usuarios.filter((u) => u.activo).length}</div>
          </CardContent>
        </Card>
        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">Usuarios Inactivos</CardTitle>
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{usuarios.filter((u) => !u.activo).length}</div>
          </CardContent>
        </Card>
        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">Roles Disponibles</CardTitle>
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{roles.length}</div>
          </CardContent>
        </Card>
      </div>

      {/* Filtros */}
      <Card>
        <CardHeader>
          <CardTitle className="text-lg">Filtros de Búsqueda</CardTitle>
          <CardDescription>Utiliza los filtros para encontrar usuarios específicos</CardDescription>
        </CardHeader>
        <CardContent>
          <div className="flex flex-col space-y-4 md:flex-row md:space-y-0 md:space-x-4">
            <div className="flex-1">
              <div className="relative">
                <Search className="text-muted-foreground absolute top-1/2 left-3 h-4 w-4 -translate-y-1/2" />
                <Input
                  placeholder="Buscar por nombre, email, usuario o documento..."
                  value={filters.search}
                  onChange={(e) => handleSearchChange(e.target.value)}
                  className="pl-9"
                />
              </div>
            </div>
            <div className="min-w-[150px]">
              <Select value={filters.rol_id?.toString() || "all"} onValueChange={handleRolFilterChange}>
                <SelectTrigger>
                  <SelectValue placeholder="Filtrar por rol" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="all">Todos los roles</SelectItem>
                  {roles.map((rol) => (
                    <SelectItem key={rol.id} value={rol.id.toString()}>
                      {rol.nombre}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>
            <div className="min-w-[140px]">
              <Select value={filters.activo?.toString() || "all"} onValueChange={handleActivoFilterChange}>
                <SelectTrigger>
                  <SelectValue placeholder="Estado" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="all">Todos</SelectItem>
                  <SelectItem value="true">Activos</SelectItem>
                  <SelectItem value="false">Inactivos</SelectItem>
                </SelectContent>
              </Select>
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Tabla */}
      <Card>
        <CardHeader>
          <CardTitle>
            Lista de Usuarios
            {usuarios.length > 0 && (
              <span className="text-muted-foreground ml-2 text-sm font-normal">
                ({usuarios.length} {usuarios.length === 1 ? "usuario" : "usuarios"})
              </span>
            )}
          </CardTitle>
        </CardHeader>
        <CardContent>
          <UsuariosTable
            usuarios={usuarios}
            isLoading={isLoading}
            onEdit={handleEdit}
            onDelete={handleDelete}
            onRefresh={handleRefresh}
          />
        </CardContent>
      </Card>

      {/* Formulario */}
      <UsuarioForm
        usuario={editingUsuario}
        roles={roles}
        open={formOpen}
        onOpenChange={setFormOpen}
        onSuccess={handleFormSuccess}
      />
    </div>
  );
}
