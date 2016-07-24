#!/bin/sh
{
    echo "Este script irá 'instalar' o ccram (Clean Cache RAM)."
    echo "You will be prompted for your password by sudo."

    sudo -k

    sudo sh <<SCRIPT
   cd /tmp
   wget https://sohne.com.br/sh/ccram
   sudo chmod +x ccram
   sudo cp ccram /usr/bin

SCRIPT
echo "O ccram foi instalado. Para usar, utilize o comando ccram. (provavelmente a senha sudo sera requisitada)"
}
