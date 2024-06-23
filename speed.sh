#!/bin/bash
#!/bin/sh
#!/usr/bin/env bash

# Permissões de armazenamento
termux-setup-storage &&
# Atualizações do sistema
pkg upgrade &&
pkg update &&
# Instalação de ferramentas essenciais
pkg install curl htop wget nano git gh php sqlite3 nodejs &&
npm install -g express-generator &&
npm install -g nodemon

# Criação do arquivo .bashrc e inclusão dos aliases
echo "Criando .bashrc com os aliases úteis..."

cat <<EOT >> ~/.bashrc

# Alias úteis
alias ll='ls -la'
alias gs='git status'
alias commit='git commit -m'
alias php-server='php -S 0.0.0.0:3000'
alias cls='clear'
EOT

# Carregar o arquivo .bashrc para que os aliases fiquem disponíveis imediatamente
source ~/.bashrc

echo "Vamos configurar o git"

# Solicita o nome do usuário
read -p "Digite seu nome: " nome

# Solicita o email do usuário
read -p "Digite seu email: " email

# Configura o Git com os valores fornecidos
git config --global user.name "$nome"
git config --global user.email "$email"

# Confirmação da configuração
echo "Git configurado com:"
git config --global user.name
git config --global user.email

echo "Termux speed script finalizado"
