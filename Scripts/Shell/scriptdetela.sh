#!/usr/bin/env bash

############################################
# Esse script, feito por um iniciante, tem #
# por objetivo acertar a tela de dois mo-  #
# nitores, para que ao inves de espelhar a #
# tela, as telas sejam extendidas; e um    #
# dos monitores esta com a resolução erra- #
# da, sendo também corrigida...            #
############################################


#========== Funções =======================#

acertartela () {	#Aqui reajusta a tela
	xrandr --newmode "1368x768_60.00"   85.25  1368 1440 1576 1784  768 771 781 798 -hsync +vsync
	xrandr --addmode DP1 1368x768_60.00
	xrandr --output DP1 --mode 1368x768_60.00
}

doismon () {		#Aqui acerta os mon
	xrandr --output DP1 --primary --mode 1366x768 --output eDP1 --mode 1366x768 --left-of DP1
}

doismonresodefault () {	#Aqui acerta os mon, com uma reso padrao
	xrandr --output DP1 --primary --mode 1024x768 --output eDP1 --mode 1366x768 --left-of DP1
}

#========= Variaveis =======================#

doismon=$( xrandr | grep -w 'DP1' ) #Descobre se há doi mon
resomon=$( xrandr | tail -n 16 | grep "1366x768" ) #Descobre se precisa reajustar tela

#========= Codigo =========================#

if [ ${#doismon[@]} -gt 0 ]; 
then
	if [ ${#resomon[@]} -gt 0 ]
	then
		acertartela 2>/dev/null && doismon 2>/dev/null
	else
		doismonresodefault
	fi
else
	exit 0
fi
## FIM ##
