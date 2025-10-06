// components/logo.tsx
"use client";

import Image from "next/image";
import { useTheme } from "next-themes";
import { APP_CONFIG } from "@/config/app-config";

interface LogoProps {
  className?: string;
  size?: "sm" | "md" | "lg";
  showText?: boolean;
}

export function Logo({ className = "", size = "md", showText = true }: LogoProps) {
  const { theme } = useTheme();
  
  const heightClasses = {
    sm: "h-6",
    md: "h-8", 
    lg: "h-12"
  };

  const textSizeClasses = {
    sm: "text-sm",
    md: "text-base",
    lg: "text-xl"
  };

  // Seleccionar logo según el tema
  const logoSrc = theme === "dark" 
    ? "/logos/san-juan-gob-dark.png" 
    : "/logos/san-juan-gob-light.png";

  return (
    <div className={`flex items-center space-x-3 ${className}`}>
      {/* Logo oficial de San Juan */}
      <div className={`${heightClasses[size]} relative`}>
        <Image
          src={logoSrc}
          alt="San Juan Gobierno"
          width={120}
          height={40}
          className={`${heightClasses[size]} w-auto object-contain`}
          priority
        />
      </div>
      
      {/* Texto opcional para casos donde se necesite solo el logo */}
      {showText && (
        <div className="flex flex-col leading-tight">
          <span className={`${textSizeClasses[size]} font-bold text-foreground`}>
            Junta Primaria
          </span>
          <span className={`text-xs text-muted-foreground font-medium`}>
            Sistema de Gestión
          </span>
        </div>
      )}
    </div>
  );
}