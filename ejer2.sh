#!/bin/bash

# Prints system information using different enviroment variables

echo "Hola $USER:"
echo "Soy $0, con PID: $$"
echo "mi padre  es el proceso con ID $PPID"
echo "Me has invocado con $# argumentos, que son:"

echo "$*"
var_proc="$(cat /proc/cpuinfo | grep "model name" | cut -c 14-)"
var_os="$(hostnamectl | grep "Operating System:" | cut -c 21-)"
var_os_version="$(hostnamectl | grep "Kernel:" | cut -c 21-)"

echo "Estás en el ordenador $HOSTNAME,"
echo "con procesador $var_proc," 
echo "usando el sistema operativo $var_os,"
echo "version $var_os_version." 

var_uid="$(id -u)"
var_current="$(pwd)"
echo  -e "Tu identificador es $var_uid y tu directorio personal es $HOME,\ntu PATH es $PATH,\nestás trabajando en el directorio $var_current, y la shell utilizada es $SHELL"

	
