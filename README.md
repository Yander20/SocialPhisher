# Social Phisher v1.0

Social Phisher es una herramienta de phishing diseñada para crear páginas de phishing para varias redes sociales. Permite a los usuarios configurar páginas de phishing para servicios como Instagram, Facebook, Twitter, y más. El script facilita el alojamiento de estas páginas usando localhost.run para el túnel, facilitando la captura de credenciales de usuario.

**Versión en español para latinos**

# Características

1. Crear páginas de phishing para múltiples redes sociales.

2. Alojar páginas de phishing usando localhost.run para fácil acceso.

3. Creación de páginas de phishing personalizables para un enfoque a medida.

4. Capturar credenciales ingresadas en las páginas de phishing para análisis.

5. Opción para elegir usar el puerto por defecto o personalizado.

6. El enlace de phishing generado se mostrará, junto con su código QR para fácil acceso.

# Redes Sociales Soportadas

- Instagram
- Facebook
- Twitter
- Snapchat
- LinkedIn
- Messenger
- Pinterest
- Badoo
- Personalizada (crea tu propia página)

# Dependencias

• PHP: Requerido para alojar las páginas de phishing localmente.

• SSH: Necesario para crear túneles SSH usando localhost.run.

• XTERM: Necesario para generar el enlace y código QR.

• Nota: `setup.sh` instala esas dependencias por ti

# Entornos Soportados

## • Kali Linux

## • Parrot security os

## • Debian

## • Ubuntu

## • Arch

# Uso

1. Clona el repositorio: `git clone https://github.com/usuario/SocialPhisher.git`
2. Navega al directorio del script: `cd SocialPhisher`
3. Asegúrate de que todas las dependencias estén instaladas y configuradas (ver sección Dependencias).
4. Otorga permisos de ejecución al script social_phisher: `chmod +x  social_phisher.sh`
5. Otorga permisos de ejecución al script de configuración: `chmod +x  setup.sh`
6. El script instala las dependencias necesarias para ejecutar Social Phisher: `sudo ./setup.sh`
7. Ejecuta el script: `sudo ./social_phisher.sh`
8. Sigue el menú en pantalla para seleccionar un objetivo de phishing y comenzar el proceso de phishing. NOTA: El enlace se genera en la terminal xterm con un código QR también.

# Descargo de Responsabilidad

Este script está diseñado únicamente con fines educativos. El uso indebido de esta herramienta para actividades ilegales está estrictamente prohibido. El autor no asume ninguna responsabilidad por el mal uso de este script.

# Autor

Versión adaptada al español para latinos

Basado en MedusaPhisher por Adrilaw

# Licencia

SocialPhisher está licenciado bajo la [GNU General Public License](LICENSE) - ver el archivo LICENSE para más detalles.
