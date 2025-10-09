// components/logo.tsx
"use client";

import Image from "next/image";

interface LogoProps {
  className?: string;
  size?: "sm" | "md" | "lg";
  showText?: boolean;
  collapsed?: boolean;
}

export function Logo({ className = "", size = "md", showText = true, collapsed = false }: LogoProps) {
  const sizeConfig = {
    sm: {
      height: "h-8",
      width: collapsed ? "w-8" : "w-28",
      textSize: "text-sm",
    },
    md: {
      height: "h-12",
      width: collapsed ? "w-12" : "w-40",
      textSize: "text-base",
    },
    lg: {
      height: "h-16",
      width: collapsed ? "w-16" : "w-48",
      textSize: "text-xl",
    },
  };

  const config = sizeConfig[size];

  // Seleccionar el logo apropiado según el estado colapsado
  const lightLogo = collapsed ? "/logos/san-juan-gob-light-corto.png" : "/logos/san-juan-gob-light.png";
  const darkLogo = collapsed ? "/logos/san-juan-gob-dark-corto.png" : "/logos/san-juan-gob-dark.png";

  return (
    <div className={`flex items-center ${collapsed ? "justify-center" : "space-x-3"} ${className}`}>
      {/* Logo oficial de San Juan con cambio automático por CSS */}
      <div
        className={`${config.height} ${config.width} relative flex-shrink-0 ${collapsed ? "aspect-square overflow-hidden rounded-full bg-transparent" : ""}`}
      >
        {/* Logo para tema claro - se oculta en dark mode */}
        <Image
          src={lightLogo}
          alt="San Juan Gobierno"
          fill
          className={`${collapsed ? "scale-110 object-cover" : "object-contain"} dark:hidden`}
          priority
        />
        {/* Logo para tema oscuro - se oculta en light mode */}
        <Image
          src={darkLogo}
          alt="San Juan Gobierno"
          fill
          className={`${collapsed ? "scale-110 object-cover" : "object-contain"} hidden dark:block`}
          priority
        />
      </div>

      {/* Texto opcional para casos donde se necesite solo el logo */}
      {showText && !collapsed && (
        <div className="flex min-w-0 flex-col leading-tight">
          <span className={`${config.textSize} text-foreground truncate font-bold`}>Junta Primaria</span>
          <span className="text-muted-foreground truncate text-xs font-medium">Sistema de Gestión</span>
        </div>
      )}
    </div>
  );
}
