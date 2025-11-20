#!/bin/bash

# Función para instalar dependencias para sistemas basados en Debian
install_debian_dependencies() {
    sudo apt update
    sudo apt install -y xterm php openssh-client
}

# Función para instalar dependencias para sistemas basados en Arch
install_arch_dependencies() {
    sudo pacman -Syu --noconfirm
    sudo pacman -S --noconfirm xterm php openssh
}

# Función para determinar el sistema operativo del usuario
get_os() {
    if [ -e "/etc/os-release" ]; then
        source /etc/os-release
        if [ "$ID" = "debian" ] || [ "$ID_LIKE" = "debian" ]; then
            echo "debian"
        elif [ "$ID" = "arch" ]; then
            echo "arch"
        else
            echo "unsupported"
        fi
    else
        echo "unsupported"
    fi
}

# El script principal comienza aquí

# Verificar el SO e instalar dependencias en consecuencia
os=$(get_os)
if [ "$os" = "debian" ]; then
    install_debian_dependencies
elif [ "$os" = "arch" ]; then
    install_arch_dependencies
else
    echo "Sistema operativo no soportado. Por favor instala las dependencias manualmente."
fi
