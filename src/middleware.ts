import { NextRequest, NextResponse } from "next/server";
import { authMiddleware } from "./middleware/auth-middleware";

export function middleware(req: NextRequest) {
  console.log("🔒 Middleware ejecutándose para:", req.nextUrl.pathname);

  // Ejecutar middleware de autenticación
  const response = authMiddleware(req);
  if (response) {
    return response;
  }

  return NextResponse.next();
}

export const config = {
  matcher: [
    /*
     * Match all request paths except for the ones starting with:
     * - api (API routes)
     * - _next/static (static files)
     * - _next/image (image optimization files)
     * - favicon.ico (favicon file)
     */
    "/((?!api|_next/static|_next/image|favicon.ico).*)",
  ],
};
