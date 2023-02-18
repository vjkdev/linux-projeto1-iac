#!/bin/bash

echo "*******************************"
echo "Criando diretórios de trabalho"
echo "*******************************"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "**************************"
echo "Criando grupos de trabalho"
echo "**************************"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "****************************"
echo "Criando usuários de trabalho"
echo "****************************"

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -c "João" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogério" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "**************************************"
echo "Especificando permissões de diretórios"
echo "**************************************"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "*************************************************"
echo "Fim do processo de criação do sistema de trabalho"
echo "*************************************************"






