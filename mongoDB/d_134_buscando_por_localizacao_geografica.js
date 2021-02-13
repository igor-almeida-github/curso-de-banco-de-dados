// Inserir um novo campo em um documento existente
db.inscricoes.update(
	{"_id" : ObjectId("5ff4fa3e6f2d3d7096f9eea0")},
	{
		$set: {"localizacao.endereco": "Avenida Zulmira Borba, 1978"}
	}
)


// Utilizar campos com coordenadas geográficas.
// OBS: Quando trabalhamos com coordenadas geográficas com mongoDB, precisamos 
// ter um campo chamado coordinates e especificar o type.
db.inscricoes.update(
	{"_id" : ObjectId("5ff4fa3e6f2d3d7096f9eea0")},
	{
		$set: {
			localizacao: {
				endereco: "Avenida Zulmira Borba, 1978",
				coordinates: [-20.388008, -54.577545],
				type: "Point" 
			}
		}
	}
)

// Importar dados para mongoDB (comando no terminal)
// Abra o terminal no dir do arquivo json e execute:
// mongoimport -d meubanco -c inscricoes --jsonArray < inscricoes.json


// Como utilizar os recursos avançados do MongoDB para buscar dados por localização
// 1 - Devemos informar ao MongoDB qual é o campo que deve ser utilizado como indice de busca.
db.inscricoes.createIndex(
	{
		localizacao: "2dsphere",
	}
)
// 2 - Devemos realizar uma consulta por agregação para que os calculos sejam aplicados.
db.inscricoes.aggregate(
	[
		{
			$geoNear: {
				near: {
					coordinates: [-20.388008, -54.577546],
					type: "Point"
				},
				distanceField: "distancia.calculada",
				spherical: true,
			}

		},
		{ $limit : 5 }
	]
).pretty()

// Excluindo o próprio elemento da busca.

db.inscricoes.aggregate(
	[
		{
			$geoNear: {
				near: {
					coordinates: [-20.388008, -54.577546],
					type: "Point"
				},
				distanceField: "distancia.calculada",
				spherical: true,
			}

		},
		{ $limit : 5 },
		{ $skip: 1}
	]
).pretty()



