import { Home, Users, Settings, type LucideIcon } from "lucide-react";

export interface NavSubItem {
  title: string;
  url: string;
  icon?: LucideIcon;
  comingSoon?: boolean;
  newTab?: boolean;
  isNew?: boolean;
}

export interface NavMainItem {
  title: string;
  url: string;
  icon?: LucideIcon;
  subItems?: NavSubItem[];
  comingSoon?: boolean;
  newTab?: boolean;
  isNew?: boolean;
}

export interface NavGroup {
  id: number;
  label?: string;
  items: NavMainItem[];
}

export const sidebarItems: NavGroup[] = [
  {
    id: 1,
    items: [
      {
        title: "Inicio",
        url: "/dashboard",
        icon: Home,
      },
    ],
  },
  {
    id: 2,
    label: "Gestión Educativa",
    items: [
      {
        title: "Suplencias",
        url: "/dashboard/suplencias",
        icon: Users,
      },
    ],
  },
  {
    id: 3,
    label: "Administración",
    items: [
      {
        title: "Usuarios",
        url: "/dashboard/usuarios",
        icon: Settings,
      },
    ],
  },
];
