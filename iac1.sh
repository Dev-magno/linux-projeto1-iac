#!/bin/bash


echo "Criando diretórios..."
mkdir -p /publico
mkdir -p /adm
mkdir -p /ven
mkdir -p /sec

echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e adicionando aos respectivos grupos..."
useradd carlos -c "Carlos Silva" -m -s /bin/bash  -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria -c "Maria Santos" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -c "João Lopes" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

useradd debora -c "Débora Coelho" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Rocha" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberto -c "Roberto Pires" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN

useradd josefina -c "Josefina Lima" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -c "Amanda Castro" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Alburque" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "Definindo root como dono de todos os diretórios e grupos..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Especificando permissões aos diretórios"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim!"
