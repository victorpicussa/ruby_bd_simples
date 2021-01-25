# arquivos-objeto
tables = estados pessoas documentos municipios esportes pessoas_esportes
data = in_estados in_pessoas in_documentos in_municipios in_esportes in_pessoas_esportes

all: create insert

create: $(tables)

insert: $(data)

estados:
	ruby tables/estados.rb

pessoas:
	ruby tables/pessoas.rb

documentos:
	ruby tables/documentos.rb

municipios:
	ruby tables/municipios.rb

esportes:
	ruby tables/esportes.rb

pessoas_esportes:
	ruby tables/pessoasEsportes.rb

in_estados:
	ruby base/iniciaEstados.rb

in_pessoas:
	ruby base/iniciaPessoas.rb

in_documentos:
	ruby base/iniciaPessoasD.rb

in_municipios:
	ruby base/iniciaMunicipios.rb

in_esportes:
	ruby base/iniciaEsportes.rb

in_pessoas_esportes:
	ruby base/iniciaPessoasEsportes.rb

purge:
	-rm -f