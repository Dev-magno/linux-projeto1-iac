#!/bin/bash

echo "Criando usuários do sistemas..."

useradd guest10 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest10 -e

useradd guest11 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest11 -e


useradd guest12 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest11 -e

useradd guest13 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest13 -e

echo "Finalizado!!"

