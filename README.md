# Sistema_cade_meu_bicho_com_lavarel_bootstrap
Sistema de Cadastro de Animais perdidos, com níveis de acesso a usuário, onde o dono pode cadastrar seus animais perdidos e qualquer pessoa consegui entrar em contato com o dono passando informações como Tel, nome etc. 

Sistema Desenvolvido com as tecnologias laravel e bootstrap com Api Integrada.

Como executar o Sistema cade meu Bicho:

1) Para executar o projeto em Lavarel precisa ter o gerenciador de pacotes Composer installado.
2) execute o arquivo sql cade_meu_bicho.sql em algum sgbd de sua preferencia, eu utilizo o heidisql.
3) abra o projeto em algum editor de texto de sua preferencia, e procure pelo arquivo .env, nele estará todas as configurações da conexão com o banco de dados.
4) utilize as suas configurações do seu banco de dados, o projeto é rodado em mysql. 
5) Use um terminal de comandos de preferência o terminal do editor de texto visual studio code, acessa até a pagina do projeto chamada de cade_meu_bicho.
6) Logo depois execute a criação das Migrations, no seu terminal execute a linha de comando php artisan migrate.
7) Agora já pode abrir o porjeto, crie com a linha de comando php artisan serve para gerar um servidor local, e entrar no link gerado: http://127.0.0.1:8000/
8) terá acesso a plataforma



Como executar a Api Sistema cade meu Bicho:
1) Para executar o projeto em Lavarel precisa ter o gerenciador de pacotes Composer installado.
2) execute o arquivo sql cade_meu_bicho.sql em algum sgbd de sua preferencia, eu utilizo o heidisql.
3) abra o projeto em algum editor de texto de sua preferencia, e procure pelo arquivo .env, nele estará todas as configurações da conexão com o banco de dados.
4) utilize as suas configurações do seu banco de dados, o projeto é rodado em mysql. 
5) Use um terminal de comandos de preferência o terminal do editor de texto visual studio code, acessa até a pagina do projeto chamada de cade_meu_bicho.
6) Logo depois execute a criação das Migrations, no seu terminal execute a linha de comando php artisan migrate.
7) utilize qualquer programa para teste de api, eu utilizei uma extensão do proprio visual studio code chamado de thunder client
8) as rotas para teste são: 
List global =  method get  http://127.0.0.1:8000/api/animals
listagem show = method get    http://127.0.0.1:8000/api/animals/id
create store = method post    http://127.0.0.1:8000/api/animal/
update update = method put    http://127.0.0.1:8000/api/animal/id
update delete = method delete    http://127.0.0.1:8000/api/animal/id
10) pronto para teste
