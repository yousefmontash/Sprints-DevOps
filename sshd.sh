#!/bin/bash
echo Please Enter an Integer For The Port :
read PORT
CHANGE=0
while [ "$CHANGE" -eq 0 ]
do
        if [[ "$PORT" =~ ^[0-9] ]]
        then
                if [ "$PORT" -ge 1024  ] && [ "$PORT" -le 65535 ] ||  [ "$PORT" -eq 22 ]
                then
                        CHANGE=1
                        echo "Port $PORT" >> /etc/ssh/sshd_config
                        echo "The Port Has Been Changed"

                else
                        echo "Invalid port"
                        echo "Please Enter Another Number : "
                        read PORT

                fi
        else
                echo "Invalid"
                echo "Please enter an integer number : "
                read PORT
        fi
done


