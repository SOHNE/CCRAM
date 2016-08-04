#!/bin/sh
{
echo "Este script irá copiar o CCRAM para pasta /tmp e depois para /usr/bin"
echo "You will be prompted for your password by sudo."
sudo -k
sudo sh <<SCRIPT
cd /tmp
rm ccram* &> /dev/null
wget https://sohne.com.br/sh/ccram
sudo chmod +x ccram
sudo cp ccram /usr/bin
SCRIPT
echo "O ccram foi instalado. Para usar, utilize o comando ccram. (provavelmente a senha sudo sera requisitada)"
}
