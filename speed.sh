#!/bin/bash
#!/bin/sh
#!/usr/bin/env bash

termux-setup-storage &&
pkg upgrade &&
pkg update &&
pkg install curl htop wget nano git gh php sqlite nodejs &&
npm install -g express-generator &&
npm install -g nodemon

alias ll='ls -la'
alias gs='git status'
alias commit='git commit -m'

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

echo "Termux speed scrpit Finalizado"
