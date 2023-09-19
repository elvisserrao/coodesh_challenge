# Projeto Open Food Facts
Neste projeto foi desenvolvida um REST API que utiliza os dados do projeto Open Food Facts.

[Apresentação do desafio](https://www.loom.com/embed/137ff0baa7144ca49914b79ce322d541)

## Tecnologias usadas

* [Ruby: 3.0.0](https://www.ruby-lang.org/pt/documentation/installation/)
* [Rails: 7.0.4](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails-installing-rails)
* [PostgreSQL: 13.9](https://www.postgresql.org/download/)

## Setup

#### Variáveis de ambiente

Faça uma cópia do arquivo: `.env.example` e renomeie para `.env`, neste arquivo, deverão ser definidas as credenciais de acesso ao Banco de Dados.

#### No console:
```console
## Clone o repositório
$ git clone git@github.com:elvisserrao/coodesh_challenge.git

## Entre no diretorio do projeto
$ cd coodesh_challenge

## Instale as dependências do projeto
$ bundle

## Crie o banco de dados e execute as migrations
$ rails db:create db:migrate

## Inicie o servidor
$ rails server
```

#### Gere uma chave para autenticar na API
```console
## Rode o comando
$ rails api_key:generate
```

#### Cron job


- Para definir o melhor horário para que os dados sejam importados, altere no arquivo `config/schedule.rb`

```console
## Execute o seguinte comando para atualizar o crontab
$ whenever --update-crontab
```

### A REST API

Na REST API teremos os seguintes endpoints:

 - `GET /`: Detalhes da API, se conexão leitura e escritura com a base de dados está OK, horário da última vez que o CRON foi executado, tempo online e uso de memória.
 - `PUT /products/:code`: Será responsável por receber atualizações do Projeto Web
 - `DELETE /products/:code`: Mudar o status do produto para `trash`
 - `GET /products/:code`: Obter a informação somente de um produto da base de dados
 - `GET /products`: Listar todos os produtos da base de dados, adicionar sistema de paginação para não sobrecarregar o `REQUEST`.

>  Este é um desafio por [Coodesh](https://coodesh.com/)
