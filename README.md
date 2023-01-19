# Projeto Space Flight News Api
Neste projeto foi desenvolvida um REST API que utiliza os dados do projeto Open Food Facts.

[Apresentação do desafio](https://lab.coodesh.com/elvisserrao1/products-parser-20230105)

## Tecnologias usadas

* Ruby: 3.0.0
* Rails: 7.0.4
* PostgreSQL

## Setup
#### No console:
```console
# clone o repositório
git clone git@github.com:elvisserrao/coodesh_challenge.git

# entre no diretorio do projeto
cd coodesh_challenge

# instale as dependências do projeto
bundle

# inicie o servidor
rails server
```

### A REST API

Na REST API teremos os seguintes endpoints:

 - `GET /`: Detalhes da API, se conexão leitura e escritura com a base de dados está OK, horário da última vez que o CRON foi executado, tempo online e uso de memória.
 - `PUT /products/:code`: Será responsável por receber atualizações do Projeto Web
 - `DELETE /products/:code`: Mudar o status do produto para `trash`
 - `GET /products/:code`: Obter a informação somente de um produto da base de dados
 - `GET /products`: Listar todos os produtos da base de dados, adicionar sistema de paginação para não sobrecarregar o `REQUEST`.

>  Este é um desafio por [Coodesh](https://coodesh.com/)
