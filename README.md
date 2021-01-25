## Banco de dados simples com Ruby e ActiveRecord

O programa *cli.rb* é uma interface para a execução de comandos utilizando o banco criado após o *make*. As funções disponíveis são:
- insert - para inserir os dados deve-se especificar a tabela, e os dados devem ser separados por virgula (dados com espaço devem estar entre aspas);
	```ruby
		$ ruby cli.rb insere estados PR,Paraná
	```
- altera - para alterar os dados deve-se especificar a tabela, a diferença para o comando anterior é que deve-se colocar o id da entrada a ser alterada por primeiro;
	```ruby
		$ ruby cli.rb altera estados 7,PR,PARANA
	```
- exclui - para excluir os dados deve-se especificar a tabela e o id da entrada a ser excluida;
	```ruby
		$ ruby cli.rb exclui estados 7
	```
- lista - para listar os dados deve-se especificar a tabela;
	```ruby
		$ ruby cli.rb lista estados
	```

## INSTALAÇÃO

Para poder rodar o programa é necessário ter as gemas descritas no arquivo Gemfile. Para instalar essas gemas basta rodar *bundle install*. Se tudo correu bem, executar *ruby cli.rb* deve retornar um helper do programa.

## INICIALIZAÇÃO

Para criar as tabelas e seus dados iniciais basta utilizar o comando *make* que executará o Makefile. Com isso o banco estará criado em *tables.sqlite3* e é acessivel com *sqlite3 tables.sqlite3*. O banco criado serão as tabelas: estados, pessoas, documentos, esportes, esportes_pessoas.

