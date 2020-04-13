#!/bin/bash
echo "я Аскер Кисаев"
echo "имя ПО: пароли"
echo "запрашивает имя пользователя, мин время жизни пароля, макс время жизни пароля, пароль, устанавливает заданные ограничения пользователю"
while [[ $raketa != 4 ]]
do
	while [[ $imya = "" ]]
	do 
		echo "введите имя пользователя"
		read imya
	done
	echo ""
	echo "выберите нужное действие"
	echo "1. ввести мин время жизни пароля"
	echo "2. ввести макс время жизни пароля"
	echo "3. ввести пароль"
	echo "4. выход"
	echo ""
	read raketa
	if [[ $raketa = 1 ]]
	then 
		echo "введите мин время жизни"
		read min
		passwd --mindays $min $imya
	else 
		if [[ $raketa = 2 ]]
		then 
			
			while [[ $max < $min ]]
			do
				echo "введите макс время жизни"
				read max
				if [[ $max < $min ]]
				then 
					echo "выберите число побольше"
				fi
			done
			passwd --maxdays $max $imya
		else 
			if [[ $raketa = 3 ]]
			then
				passwd $imya
			else 
				if [[ $raketa != 4 ]]
				then 
					echo "ошибка я сделать это не могу"	
				fi
			fi
		fi
	fi
done
echo "пока"
exit 0
