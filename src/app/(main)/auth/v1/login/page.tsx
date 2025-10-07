import Image from "next/image";

import { LoginForm } from "../../_components/login-form";

export default function LoginV1() {
  return (
    <div className="flex h-dvh">
      <div className="bg-primary hidden lg:block lg:w-1/3">
        <div className="flex h-full flex-col items-center justify-center p-12 text-center">
          <div className="space-y-6">
            <div className="space-y-2">
              <h1 className="text-primary-foreground text-4xl font-bold">Junta Primaria</h1>
              <p className="text-primary-foreground/90 text-lg">Ministerio de Educación</p>
            </div>
          </div>
        </div>
      </div>

      <div className="bg-background flex w-full items-center justify-center p-8 lg:w-2/3">
        <div className="w-full max-w-md space-y-10 py-24 lg:py-32">
          <div className="space-y-4 text-center">
            <div className="text-2xl font-bold tracking-tight">Iniciar Sesión</div>
            <div className="text-muted-foreground mx-auto max-w-xl">
              Ingrese sus credenciales para acceder al sistema de Junta Primaria.
            </div>
          </div>
          <div className="space-y-6">
            <LoginForm />

            {/* Footer con logo */}
            <div className="border-border flex flex-col items-center space-y-3 border-t pt-6">
              <Image
                src="/logos/LogosDireccionesME.png"
                alt="Logo Ministerio de Educación"
                width={460}
                height={360}
                className="opacity-80"
              />
              {/* <p className="text-muted-foreground text-center text-sm font-medium">Ministerio de Educación</p> */}
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
