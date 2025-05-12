# postgres-pgadmin-service-docker

## Ricardo Marques

### Conteiner com Serviços Postgres e PgAdmin.


Arquivo docker-compose com configurações para criar um ambiente com dois conteiners integrados, um banco postgres e um cliente pgadmin.


Contêineres/Serviços
- teste-postgres-compose
Usa a imagem oficial do PostgreSQL.

- Define a variável de ambiente POSTGRES_PASSWORD (vinda do .env).

- Expõe a porta interna 5432 na porta externa 15432.

- Armazena os dados do banco em um volume nomeado pgdata.

- Está conectado à rede postgres-compose-network.

teste-pgadmin-compose
Usa a imagem do pgAdmin4.

- Recebe email e senha do administrador via .env.

- Acessível na porta externa 16543 (porta interna 80).

- Tem dependência declarada do serviço de banco (depends_on).

- Também está na rede postgres-compose-network.