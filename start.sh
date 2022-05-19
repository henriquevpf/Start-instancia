get_instancia_add() {
  
  print_banner
  printf "${WHITE} 💻 Digite o nome da instancia a ser reiniciada (Utilizar Letras minusculas):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " instancia_add
}

backend_start_pm2() {
  print_banner
  printf "${WHITE} 💻 Iniciando pm2 (backend)...${GRAY_LIGHT}"
  printf "\n\n"

  sleep 2

  sudo su - vespertinewebot <<EOF
  cd /home/vespertinewebot/${instancia_add}/backend
  pm2 start dist/server.js --name ${instancia_add}-vespertinewebot-backend
EOF

  sleep 2
}

frontend_start_pm2() {
  print_banner
  printf "${WHITE} 💻 Iniciando pm2 (frontend)...${GRAY_LIGHT}"
  printf "\n\n"

  sleep 2

  sudo su - vespertinewebot <<EOF
  cd /home/vespertinewebot/${instancia_add}/frontend
  pm2 start server.js --name ${instancia_add}-vespertinewebot-frontend
  pm2 save
EOF

  sleep 2
}
