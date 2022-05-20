Executável para iniciar instancias do Whaticket automaticamente.

Clone:

```bash
git clone https://github.com/henriquevpf/start-instancia.git
```

Execute: 
```bash
cd start-instancia && chmod +x start.sh && chmod +x restart.sh && ./start.sh
```

Para descobrir qual instancia é, faça o login com usuário vespertinewebot:
```bash
su vespertinewebot && cd && ls
```

Para reiniciar a instancia:
```bash
cd && cd ./start-instancia && sudo ./restart.sh
```

by Henrique
