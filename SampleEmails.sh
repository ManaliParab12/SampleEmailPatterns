#!/bin/bash -x

function Q1 () {

read value

#abc@yahoo.com

pattern="([a-z]+)@([a-z]+)\.([a-z]{2,4})$"

if [[ $value =~ $pattern ]]
then
    echo "true"
else
    echo "false"
fi
}

function Q2 () {

read value

#abc-100@yahoo.com,

pattern="([A-Za-z-]+[0-9]+)@([a-z]+)\.([a-z,]{2,4})$"

if [[ $value =~ $pattern ]]
then
    echo "true"
else
    echo "false"
fi
}

function Q3 () {

read value

#abc.100@yahoo.com

pattern="([A-Za-z.]+[0-9]+)@([a-z]+)\.([a-z]{2,4})$"

if [[ $value =~ $pattern ]]
then
    echo "true"
else
    echo "false"
fi
}

function Q4 () {

read value

#abc111@abc.com,

pattern="([A-Za-z0-9]+)@([a-z]+)\.([a-z,]{2,4})$"

if [[ $value =~ $pattern ]]
then
    echo "true"
else
    echo "false"
fi
}

function Q5 () {

read value

#abc-100@abc.net,

pattern="([A-Za-z]+[-][0-9]+)@(([a-z]{3})+)\.([a-z,]{2,4})$"

if [[ $value =~ $pattern ]]
then
    echo "true"
else
    echo "false"
fi
}

function Q6 () {

read value

#abc.100@abc.com.au

pattern="([A-Za-z]+[.][0-9]+)@([a-z]+)\.([a-z,]+)\.([a-z]{2,4})$"

if [[ $value =~ $pattern ]]
then
    echo "true"
else
    echo "false"
fi
}

function Q7 () {

read value

#abc@1.com,

pattern="[A-Za-z]+@(1)+\.([a-z,]{2,4})$"

if [[ $value =~ $pattern ]]
then
    echo "true"
else
    echo "false"
fi
}

function Q8 () {

read value

#abc@gmail.com.com

pattern="[A-Za-z]+@[a-z]+\.([a-z])+\.([a-z,]{2,4})$"

if [[ $value =~ $pattern ]]
then
    echo "true"
else
    echo "false"
fi
}

function Q9 () {

read value

#abc+100@gmail.com

pattern="[A-Za-z]+[+]((100){1})+@[a-z]+\.([a-z,]{2,4})$"

if [[ $value =~ $pattern ]]
then
    echo "true"
else
    echo "false"
fi
}

function All () {

read value

#All Sample Emails

pattern="^(([A-Za-z0-9]+((\.|\-|\_|\+)?[A-Za-z0-9]?)*[A-Za-z0-9]+)|[A-Za-z0-9]+)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$"

if [[ $value =~ $pattern ]]
then
    echo "true"
else
    echo "false"
fi
}

function main () {

Q1
Q2
Q3
Q4
Q5
Q6
Q7
Q8
Q9
All

}
main
