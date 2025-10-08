"use client";

import { ReactNode, useEffect } from "react";

export default function AuthLayout({ children }: Readonly<{ children: ReactNode }>) {
  useEffect(() => {
    // Anular las clases dark en el elemento html para páginas de auth
    const htmlElement = document.documentElement;
    const originalClass = htmlElement.className;

    // Remover la clase 'dark' si existe
    htmlElement.classList.remove("dark");

    // Cleanup al desmontar el componente
    return () => {
      htmlElement.className = originalClass;
    };
  }, []);

  return <div className="min-h-screen bg-white">{children}</div>;
}
