"use client";

import * as React from "react";
import { Plus, CircleCheck, Loader, EllipsisVertical } from "lucide-react";
import { toast } from "sonner";
import type { ColumnDef } from "@tanstack/react-table";

import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Checkbox } from "@/components/ui/checkbox";
import { Label } from "@/components/ui/label";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";

import { useDataTableInstance } from "@/hooks/use-data-table-instance";
import { DataTable as DataTableNew } from "@/components/data-table/data-table";
import { DataTablePagination } from "@/components/data-table/data-table-pagination";
import { DataTableViewOptions } from "@/components/data-table/data-table-view-options";
import { DataTableColumnHeader } from "@/components/data-table/data-table-column-header";
import { withDndColumn } from "@/components/data-table/table-utils";

// Esquema de datos para suplencias
interface Suplencia {
  id: number;
  dni: string;
  nombre_completo: string;
  establecimiento: string;
  cargo: string;
  radio: string;
  fecha_inicio: string;
  fecha_baja: string | null;
  primera_titularizacion: string | null;
  segunda_titularizacion: string | null;
  status: "Activa" | "Finalizada" | "1° Titularización" | "2° Titularización";
}

// Datos de ejemplo
const suplenciasData: Suplencia[] = [
  {
    id: 1,
    dni: "25123456",
    nombre_completo: "María Elena García",
    establecimiento: "Escuela Provincial N° 1",
    cargo: "Maestro de Grado",
    radio: "I",
    fecha_inicio: "2025-03-01",
    fecha_baja: null,
    primera_titularizacion: null,
    segunda_titularizacion: null,
    status: "Activa",
  },
  {
    id: 2,
    dni: "30987654",
    nombre_completo: "Juan Carlos Rodríguez",
    establecimiento: "Escuela Provincial N° 25",
    cargo: "Director",
    radio: "II",
    fecha_inicio: "2025-02-15",
    fecha_baja: null,
    primera_titularizacion: "2025-04-01",
    segunda_titularizacion: null,
    status: "1° Titularización",
  },
  {
    id: 3,
    dni: "28456789",
    nombre_completo: "Ana Sofía López",
    establecimiento: "Escuela Provincial N° 50",
    cargo: "Maestro Especial de Educación Física",
    radio: "III",
    fecha_inicio: "2024-06-01",
    fecha_baja: "2024-12-15",
    primera_titularizacion: "2024-08-01",
    segunda_titularizacion: "2024-12-01",
    status: "2° Titularización",
  },
  {
    id: 4,
    dni: "35789123",
    nombre_completo: "Pedro José Martínez",
    establecimiento: "Escuela Provincial N° 75",
    cargo: "Profesor de Matemática",
    radio: "IV",
    fecha_inicio: "2024-01-15",
    fecha_baja: "2024-06-30",
    primera_titularizacion: null,
    segunda_titularizacion: null,
    status: "Finalizada",
  },
];

// Definición de columnas
const suplenciasColumns: ColumnDef<Suplencia>[] = [
  {
    id: "select",
    header: ({ table }) => (
      <div className="flex items-center justify-center">
        <Checkbox
          checked={table.getIsAllPageRowsSelected() || (table.getIsSomePageRowsSelected() && "indeterminate")}
          onCheckedChange={(value) => table.toggleAllPageRowsSelected(!!value)}
          aria-label="Select all"
        />
      </div>
    ),
    cell: ({ row }) => (
      <div className="flex items-center justify-center">
        <Checkbox
          checked={row.getIsSelected()}
          onCheckedChange={(value) => row.toggleSelected(!!value)}
          aria-label="Select row"
        />
      </div>
    ),
    enableSorting: false,
    enableHiding: false,
  },
  {
    accessorKey: "dni",
    header: ({ column }) => <DataTableColumnHeader column={column} title="DNI" />,
    cell: ({ row }) => (
      <div className="font-medium">
        {row.original.dni}
      </div>
    ),
    enableSorting: false,
  },
  {
    accessorKey: "nombre_completo",
    header: ({ column }) => <DataTableColumnHeader column={column} title="Nombre y Apellido" />,
    cell: ({ row }) => (
      <div className="min-w-[200px]">
        {row.original.nombre_completo}
      </div>
    ),
    enableSorting: false,
  },
  {
    accessorKey: "establecimiento",
    header: ({ column }) => <DataTableColumnHeader column={column} title="Establecimiento" />,
    cell: ({ row }) => (
      <div className="min-w-[180px]">
        <Badge variant="outline" className="text-muted-foreground px-1.5">
          {row.original.establecimiento}
        </Badge>
      </div>
    ),
    enableSorting: false,
  },
  {
    accessorKey: "cargo",
    header: ({ column }) => <DataTableColumnHeader column={column} title="Cargo" />,
    cell: ({ row }) => (
      <div className="min-w-[150px]">
        {row.original.cargo}
      </div>
    ),
    enableSorting: false,
  },
  {
    accessorKey: "radio",
    header: ({ column }) => <DataTableColumnHeader column={column} title="Radio" />,
    cell: ({ row }) => (
      <div className="w-16 text-center">
        {row.original.radio}
      </div>
    ),
    enableSorting: false,
  },
  {
    accessorKey: "fecha_inicio",
    header: ({ column }) => <DataTableColumnHeader column={column} title="Fecha Inicio" />,
    cell: ({ row }) => (
      <div className="w-24">
        {new Date(row.original.fecha_inicio).toLocaleDateString('es-ES')}
      </div>
    ),
    enableSorting: false,
  },
  {
    accessorKey: "status",
    header: ({ column }) => <DataTableColumnHeader column={column} title="Estado" />,
    cell: ({ row }) => (
      <Badge variant="outline" className="text-muted-foreground px-1.5">
        {row.original.status === "2° Titularización" || row.original.status === "Finalizada" ? (
          <CircleCheck className="stroke-border fill-green-500 dark:fill-green-400" />
        ) : (
          <Loader />
        )}
        {row.original.status}
      </Badge>
    ),
    enableSorting: false,
  },
  {
    id: "actions",
    cell: ({ row }) => {
      return (
        <DropdownMenu>
          <DropdownMenuTrigger asChild>
            <Button variant="ghost" className="h-8 w-8 p-0">
              <span className="sr-only">Open menu</span>
              <EllipsisVertical className="h-4 w-4" />
            </Button>
          </DropdownMenuTrigger>
          <DropdownMenuContent align="end">
            <DropdownMenuItem onClick={() => toast("Editar suplencia")}>
              Editar
            </DropdownMenuItem>
            <DropdownMenuItem onClick={() => toast("Ver detalles")}>
              Ver detalles
            </DropdownMenuItem>
            <DropdownMenuSeparator />
            <DropdownMenuItem 
              onClick={() => toast("Eliminar suplencia")}
              className="text-destructive"
            >
              Eliminar
            </DropdownMenuItem>
          </DropdownMenuContent>
        </DropdownMenu>
      );
    },
  },
];

export default function SuplenciasPage() {
  const [data, setData] = React.useState(() => suplenciasData);
  const [searchTerm, setSearchTerm] = React.useState("");
  const [filteredData, setFilteredData] = React.useState(() => suplenciasData);
  
  // Función para normalizar texto quitando acentos
  const normalizeText = (text: string) => {
    return text
      .toLowerCase()
      .normalize("NFD")
      .replace(/[\u0300-\u036f]/g, ""); // Remueve diacríticos (acentos)
  };
  
  // Filtrar datos cuando cambie el término de búsqueda
  React.useEffect(() => {
    const normalizedSearchTerm = normalizeText(searchTerm);
    
    const filtered = data.filter(suplencia =>
      normalizeText(suplencia.dni).includes(normalizedSearchTerm) ||
      normalizeText(suplencia.nombre_completo).includes(normalizedSearchTerm) ||
      normalizeText(suplencia.establecimiento).includes(normalizedSearchTerm) ||
      normalizeText(suplencia.cargo).includes(normalizedSearchTerm) ||
      normalizeText(suplencia.radio).includes(normalizedSearchTerm)
    );
    setFilteredData(filtered);
  }, [data, searchTerm]);

  const columns = withDndColumn(suplenciasColumns);
  const table = useDataTableInstance({ 
    data: filteredData, 
    columns, 
    getRowId: (row) => row.id.toString() 
  });

  return (
    <div className="@container/main flex flex-col gap-4 md:gap-6">
      {/* Header Superior */}
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-4">
          <Button variant="ghost" size="sm" className="gap-2" onClick={() => window.history.back()}>
            <svg className="h-4 w-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 19l-7-7 7-7" />
            </svg>
            Volver
          </Button>
          <div>
            <h1 className="text-2xl font-bold">Registros de Suplencias</h1>
            <p className="text-sm text-muted-foreground">
              Mostrando {filteredData.length} de {data.length} registros
            </p>
          </div>
        </div>
        <div className="flex items-center gap-2">
          <Button variant="outline" size="sm" className="gap-2">
            <svg className="h-4 w-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
            </svg>
            Descargar Excel
          </Button>
          <Button size="sm" className="gap-2">
            <Plus className="h-4 w-4" />
            Agregar Registro
          </Button>
        </div>
      </div>

      {/* Barra de búsqueda */}
      <div className="flex items-center gap-4 py-4">
        <div className="relative flex-1 max-w-sm">
          <svg className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
          </svg>
          <input
            placeholder="Buscar..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
            className="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 pl-10 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
          />
        </div>
      </div>

      {/* Tabla de Suplencias */}
      <div className="relative flex flex-col gap-4 overflow-auto">
        <div className="overflow-hidden rounded-lg border">
          <DataTableNew 
            dndEnabled 
            table={table} 
            columns={columns} 
            onReorder={(newData) => {
              setData(newData);
              // Aplicar filtro inmediatamente después del reorder usando normalización
              const normalizedSearchTerm = normalizeText(searchTerm);
              const filtered = newData.filter(suplencia =>
                normalizeText(suplencia.dni).includes(normalizedSearchTerm) ||
                normalizeText(suplencia.nombre_completo).includes(normalizedSearchTerm) ||
                normalizeText(suplencia.establecimiento).includes(normalizedSearchTerm) ||
                normalizeText(suplencia.cargo).includes(normalizedSearchTerm) ||
                normalizeText(suplencia.radio).includes(normalizedSearchTerm)
              );
              setFilteredData(filtered);
            }} 
          />
        </div>
        <DataTablePagination table={table} />
      </div>
    </div>
  );
}