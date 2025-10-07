"use client";

import { zodResolver } from "@hookform/resolvers/zod";
import { useForm } from "react-hook-form";
import { toast } from "sonner";
import { z } from "zod";
import { useState } from "react";
import { useRouter } from "next/navigation";

import { Button } from "@/components/ui/button";
import { Checkbox } from "@/components/ui/checkbox";
import { Form, FormControl, FormField, FormItem, FormLabel, FormMessage } from "@/components/ui/form";
import { Input } from "@/components/ui/input";

const FormSchema = z.object({
  username: z.string().min(1, { message: "Usuario o email es requerido." }),
  password: z.string().min(1, { message: "Contraseña es requerida." }),
  remember: z.boolean().optional(),
});

type FormData = z.infer<typeof FormSchema>;

export function LoginForm() {
  const [isLoading, setIsLoading] = useState(false);
  const router = useRouter();

  const form = useForm<FormData>({
    resolver: zodResolver(FormSchema),
    defaultValues: {
      username: "",
      password: "",
      remember: false,
    },
  });

  const onSubmit = async (data: FormData) => {
    setIsLoading(true);

    try {
      const response = await fetch("/api/auth/login", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          username: data.username,
          password: data.password,
        }),
      });

      const result = await response.json();

      if (result.success) {
        toast.success("¡Login exitoso!", {
          description: `Bienvenido, ${result.user.nombre} ${result.user.apellido}`,
        });

        // Redireccionar al dashboard
        router.push("/dashboard/default");
      } else {
        toast.error("Error de autenticación", {
          description: result.message,
        });
      }
    } catch (error) {
      console.error("Error en login:", error);
      toast.error("Error de conexión", {
        description: "No se pudo conectar con el servidor",
      });
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <Form {...form}>
      <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
        <FormField
          control={form.control}
          name="username"
          render={({ field }) => (
            <FormItem>
              <FormLabel>Usuario o Email</FormLabel>
              <FormControl>
                <Input
                  id="username"
                  type="text"
                  placeholder="admin o admin@juntaprimaria.gov.ar"
                  autoComplete="username"
                  disabled={isLoading}
                  {...field}
                />
              </FormControl>
              <FormMessage />
            </FormItem>
          )}
        />
        <FormField
          control={form.control}
          name="password"
          render={({ field }) => (
            <FormItem>
              <FormLabel>Contraseña</FormLabel>
              <FormControl>
                <Input
                  id="password"
                  type="password"
                  placeholder="••••••••"
                  autoComplete="current-password"
                  disabled={isLoading}
                  {...field}
                />
              </FormControl>
              <FormMessage />
            </FormItem>
          )}
        />
        <FormField
          control={form.control}
          name="remember"
          render={({ field }) => (
            <FormItem className="flex flex-row items-center">
              <FormControl>
                <Checkbox
                  id="login-remember"
                  checked={field.value || false}
                  onCheckedChange={field.onChange}
                  className="size-4"
                  disabled={isLoading}
                />
              </FormControl>
              <FormLabel htmlFor="login-remember" className="text-muted-foreground ml-1 text-sm font-medium">
                Recordarme por 30 días
              </FormLabel>
            </FormItem>
          )}
        />
        <Button className="w-full" type="submit" disabled={isLoading}>
          {isLoading ? "Iniciando sesión..." : "Iniciar Sesión"}
        </Button>
      </form>
    </Form>
  );
}
