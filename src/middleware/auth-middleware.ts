import { NextResponse, type NextRequest } from "next/server";

export function authMiddleware(req: NextRequest) {
  const { pathname } = req.nextUrl;
  const token = req.cookies.get("auth-token")?.value;

  console.log('🛡️ Auth middleware - Ruta:', pathname, 'Token:', token ? 'Presente' : 'Ausente');

  // Rutas públicas que no requieren autenticación
  const publicRoutes = ['/auth/v1/login', '/auth/v2/login', '/auth/v1/register', '/auth/v2/register'];
  
  // Verificar si la ruta actual es pública
  const isPublicRoute = publicRoutes.some(route => pathname.startsWith(route));
  
  // Si es la raíz, redirigir según el estado de autenticación
  if (pathname === '/') {
    if (token) {
      console.log('🏠 Raíz con token - Redirigiendo a dashboard');
      return NextResponse.redirect(new URL("/dashboard/default", req.url));
    } else {
      console.log('🏠 Raíz sin token - Redirigiendo a login');
      return NextResponse.redirect(new URL("/auth/v1/login", req.url));
    }
  }

  // Si no hay token y la ruta requiere autenticación
  if (!token && !isPublicRoute && pathname.startsWith("/dashboard")) {
    console.log('🚫 Sin token en ruta protegida - Redirigiendo a login');
    return NextResponse.redirect(new URL("/auth/v1/login", req.url));
  }

  // Si hay token y trata de acceder a rutas de auth
  if (token && isPublicRoute) {
    console.log('✅ Con token en ruta pública - Redirigiendo a dashboard');
    return NextResponse.redirect(new URL("/dashboard/default", req.url));
  }

  console.log('✅ Permitiendo acceso a:', pathname);
  return NextResponse.next();
}
