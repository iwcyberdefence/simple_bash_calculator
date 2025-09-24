#!/bin/bash

function calculator {
	echo "Select Operator Type >"
	echo "A) for Addition"
	echo "B) for Substraction"
	echo "C) for Multiplication"
	echo "D) for Division"
	read -p "Enter Letter : " lettr 
	lettr=${lettr^^}
	if [[ "$lettr" == "A" || "$lettr" == "B" || "$lettr" == "C" || "$lettr" == "D" ]]
	then
		read -p "Enter 1st Value : " valO
		read -p "Enter 2nd Value : " valT
	fi
	case $lettr in
		A)
			echo "Result: $((valO + valT)) " ;;
		B)
			echo "Result: $((valO - valT)) " ;;
		C)
			echo "Result: $((valO * valT)) " ;;
		D)

			echo "Result: $((valO / valT)) " ;;
		*)
			echo "Enter a Valid Value"
	esac
	

}

calculator
