#!/bin/sh

while read line
do
    echo $line > tempo
    v=$(cut -d ' ' -f 5 tempo)
    emp=$(cut -d ' ' -f 1 tempo)
    echo $v

    if echo $v | egrep -q '^[0-9]+$'
    then
        if [ $v -gt 60000 ]
        then
            da=$((v * 25 / 100))
        else
            da=$((v * 30 / 100))
        fi
        hra=$((v * 10 / 100))
        gs=$((v + da + hra))

        echo "$line"
        echo "Employee: $emp"
        echo "Basic Salary: $v"
        echo "DA: $da"
        echo "HRA: $hra"
        echo "Gross Salary: $gs\n"
    fi
done < empn.lst

# output:-
# 61000
# emp1 1/1/2003 1 manager 61000
# Employee: emp1
# Basic Salary : 61000
# DA: 15250
# HRA: 6100
# Gross Salary: 82350

# 72000
# emp2 1/2/2003 2 manager 72000
# Employee: emp2
# Basic Salary : 72000
# DA: 18000
# HRA: 7200
# Gross Salary: 97200

# 34000
# emp3 1/3/2003 3 manager 34000
# Employee: emp3
# Basic Salary : 34000
# DA: 10200
# HRA: 3400
# Gross Salary: 47600

# 20000
# emp4 1/4/2003 4 employee 20000
# Employee: emp4
# Basic Salary : 20000
# DA: 6000
# HRA: 2000
# Gross Salary: 28000
