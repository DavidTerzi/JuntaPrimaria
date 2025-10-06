import packageJson from "../../package.json";

const currentYear = new Date().getFullYear();

export const APP_CONFIG = {
  name: "San Juan",
  subtitle: "Gobierno",
  version: packageJson.version,
  copyright: `© ${currentYear}, Gobierno de San Juan.`,
  meta: {
    title: "Sistema de Gestión - Junta Primaria San Juan",
    description:
      "Sistema de gestión administrativa para la Junta Primaria de San Juan. Plataforma integral para la administración de personal, registros y reportes.",
  },
};
