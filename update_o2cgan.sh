#!/bin/bash

while [ "$1" != "" ]; do
    case $1 in
    	-m | --module)		shift
								module=$1
								;;
		-e | --env)		shift
								env=$1
								;;
    esac
    shift
done

if [ -z "$module" ];
	then module="1"
fi

if [ -z "$env" ];
	then env="dev"
fi

if [ "$module" = "1" ];
	then mod="odoo-sistematika-module"
elif [ "$module" = "2" ];
	then mod="rest-api-o2cgan"
fi
sshpass -p 'q+3M&>@8' ssh golden@103.253.68.21 "/bin/bash /home/golden/gan_"$env"/addons/"$mod"/update-odoo.sh"