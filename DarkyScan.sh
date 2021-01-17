#!/usr/bin/env bash

# SCRIPT CRIADA POR: Darky harry | Pai Nux
# TOOL INSPIRED BY NMAP
# SHOW: https://nmap.org
# Pai-Map V1.0
# Um simples NMAP para iniciantes

if [ `whoami` == 'root' ]; then
	echo -e $verdeClaro'Acesso Garantido | you are root'
else
	echo -e $vermelho'Acesso Negado tenha roor'
fi

echo

echo ' --> MANTENHA SIMPLES IDIOTA <-- '
sleep 0.3
echo
#------------------#
vermelho='\033[1;31m'
amarelo='\033[1;33m'
azul='\033[1;34m'
ciano='\033[1;36m'
rosa='\033[1;35m'
branco='\033[1;37m'
cor='\033[1;30m'
#----------------#

# Não pule essa dependencia idiota:

echo -e $amarelo'[1]INSTALL NMAP: ubuntu'
echo -e $branco'[2]INSTALL NMAP: termux'
echo -e $rosa'[3]INSTALL NMAP: arch Linux'
echo -e $ciano'[4]INSTALL NMAP: fedora'
echo -e $azul'[0]INSTALL NMAP: sair'
echo -e $cor'[99]Baixado'
echo
echo
read -p 'Qual sistema está usando acima: ' resposta 


if [ $resposta = "ubuntu" ]; then
	echo "Ubutu"
	apt install nmap -y && apt install figlet -y 
	sleep 0.5
	clear
elif [ $resposta = "termux" ]; then
	echo "Termux"
	pkg install nmap -y && pkg install figlet -y 
	sleep 0.5
	clear
elif [ $resposta = "arch linux" ]; then
	echo "Arch Linux"
	pacman -S nmap && pacman -S figlet
	sleep 0.5
	clear
elif [ $resposta = "fedora" ]; then
	echo "Fedora"
	dnf install nmap -y && dnf install figlet -y 
	sleep 0.5
	clear
elif [ $resposta = 99 ]; then
	sleep 0.3

else
	if [ $resposta = "sair" ]; then
	sleep 0.7
	exit
 fi
fi

#----------------- Nmap action -----------------------#--------------#...:

sleep 2

echo -e $ciano'	 _   _             ____'
echo -e $rosa'	| \ | |_   ___  __/ ___|  ___ __ _ _ __'
echo -e $ciano'	|  \| | | | \ \/ /\___ \ / __/ _` |  _ \'
echo -e $rosa'	| |\  | |_| |>  <  ___) | (_| (_| | | | |'
echo -e $ciano'	|_| \_|\__,_/_/\_\|____/ \___\__,_|_| |_|'
echo -e $vermelho':..Tool criada em fim de testes | Cuidado Idiota..:'

echo

sleep 0.3

#-------------------------MENU----------------------#


verdeClaro='\033[1;32m'
azulClaro='\033[1;34m'
pretoCinza='\033[1;30m'


echo -e $verdeClaro'[1]Scan simples..:'
echo -e $rosa'[2]Scan intenso..:'
echo -e $verdeClaro'[3]Varredura intensa mais UDP..:'
echo -e $rosa'[4]Varredura intensa, todas as portas TCP..:'
echo -e $verdeClaro'[5]Scan intenso, Sem pingar..:'
echo -e $rosa'[6]Scan ping..:'
echo -e $verdeClaro'[7]Escaneamento rápido..:'
echo -e $rosa'[8]Verificação rápida mais..:'
echo -e $verdeClaro'[9]Traceroute rápido..:'
echo -e $rosa'[10]Varredura regular..:'
echo -e $verdeClaro'[11]Varredura abrangente lenta..:'

echo
read -p "Qual seu alvo: " alvo_attack
read -p "Qual seu attack: " attack_alvo

if [ $attack_alvo = 1 ]; then
	echo -e $vermelho "Inciando attack em: $alvo_attack"
	nmap $alvo_attack
elif [ $attack_alvo = 2 ]; then
	echo -e $vermelho "Inciando attack  em: $alvo_attack"
	nmap -T4 -A -v $alvo_attack
elif [ $attack_alvo = 3 ]; then
	echo -e $vermelho "Iniciando attack em: $alvo_attack"
	nmap -sS -sU -T4 -A -v $alvo_attack
elif [ $attack_alvo = 4 ]; then
	echo -e $vemelho "Iniciando  attack  em: $alvo_attack"
	nmap -p 1-65535 -T4 -A -v $alvo_attack
elif [ $attac_alvo = 5 ];  then
	echo -e $vermelho "Inciando  attack  em: $alvo_attack"
	nmap -T4 -A -v -Pn $alvo_attack
elif [ $attack_alvo = 6 ]; then
	echo -e $vermelho "Iniciando attack em: $alvo_attack"
	nmap -sn $alvo_attack
elif [ $attack_alvo = 7 ]; then
	echo -e $vermelho "Iniciando  attack  em: $alvo_attack"
	nmap -T4 -F $alvo_attack
elif [ $attack_alvo = 8 ]; then
	echo -e $vermelho "Iniciando  attack em: $alvo_attack"
	nmap -sV -T4 -O -F --version-light $alvo_attack
elif [ $attack_alvo = 9 ]; then
	echo -e $vermelho "Iniciando attack em: $alvo_attack"
	nmap -sn --traceroute $alvo_attack
elif [ $attack_alvo = 10 ]; then
	echo -e $vermelho "Iniciando attack em: $alvo_attack"
	nmap $alvo_attack
elif [ $attack_alov = 11 ]; then
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script $alvo_attack
	echo
	echo -e $vermelho "Iniciando attack em: $alvo_attack"
else
	echo -e $azul'Desculpe não recebi a orden'
exit

fi

sleep 1

echo -e $azul'    _       _                             ____'
echo -e $rosa'   / \   __| |_   ____ _ _ __   ___ ___  / ___|  ___ __ _ _ __'
echo -e $azul'  / _ \ / _` \ \ / / _` |  _ \ / __/ _ \ \___ \ / __/ _` |  _ \'
echo -e $rosa' / ___ \ (_| |\ V / (_| | | | | (_|  __/  ___) | (_| (_| | | | |'
echo -e $azul'/_/   \_\__,_| \_/ \__,_|_| |_|\___\___| |____/ \___\__,_|_| |_|'

echo
echo -e $rosa'Àrea de escaneamento avançado..:'
read -p "Deseja fazer scan agressivo Y/N: " scan

if [ $scan = 'y' ]; then
echo -e $ciano"Bem Vindo"

elif [ $scan = 'n' ]; then
	exit
fi

echo -e $azul'[1]Firewall Proteção'
echo -e $vermelho'[2]Host Firewall'
echo -e $azul'[3]Sistema Versão'
echo -e $vermelho'[4]Scan IPv6'
echo -e $azul'[5]Scan Servidor & Dispositivo'
echo -e $vermelho'[6]Sistema Remoto'
echo -e $azul'[7]Sistema Operacional'
echo -e $vemelho'[8]Firewall Falha'
echo
read -p "Digite seu alvo: " alvo
read -p "Digite seu attacke: " atacar

if [ $atacar = 1 ]; then
	echo -e $vermelho "Iniciando ataque: $alvo"
	nmap -PN $alvo
elif [ $atacar = 2 ]; then
	echo -e $vermelho "Iniciando ataque em: $alvo"
	nmap -PN $alvo
elif [ $atacar = 3 ]; then
	echo -e $vermelho "Iniciando ataque em: $alvo"
	nmap -A $alvo
else
	if [ $atacar = 4 ]; then
	read -p "Digite o IPv6 alvo: " IP
	nmap -6 $IP

elif [ $atacar = 5 ]; then
	echo -e $vermelho "Iniciando ataque em: $alvo"
	nmap -sP $alvo
elif [ $atacar = 6 ]; then
	echo -e $verdeClaro "Iniciando ataque em: $alvo"
	nmap -sV $alvo
elif [ $atacar = 7 ]; then
	echo -e $verdeClaro "Iniciando ataque em: $alvo"
	nmap -O $alvo
elif [ $atacar = 8 ]; then
	echo -e $verdeClaro "Iniciando ataque em: $alvo"
	nmap -sN $alvo

 fi
fi

whois $alvo 


# SIM USO ECHO E NÃO PRINTF ANIMAL.
