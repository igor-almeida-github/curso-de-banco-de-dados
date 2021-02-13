// Caso o banco de dados nao for especificado, o mongodb usará o branco de dados test

db.inscricoes.insert(
	{
		aluno: "Guilherme Dantas",
		data: new Date(),
		curso: {nome: "Programação para internet"},
		notas: [7, 8.5, 10]
	}
)


db.inscricoes.insert(
	{
		aluno: "Angelina Souza",
		data: new Date(),
		curso: {nome: "Programação para internet"},
		notas: [7.4, 9.5, 9.4]
	}
)


db.inscricoes.find(
	{
		"curso.nome": "Programação para Internet"
	}
).pretty()


// OBS:
// Update por padrão atualiza o primeiro documento que encontrar... (mudando tudo, perdendo dados)
db.inscricoes.update(
	{"curso.nome": "Programação para internet"},
	{"curso.nome": "Programação para Internet"}
)


// Deletando documento
db.inscricoes.remove({"_id" : ObjectId("5ff4edde6f2d3d7096f9ee9c")})


// Atualizando corretamente (mudando somente o campo) 
db.inscricoes.update(
	{"curso.nome": "Programação para internet"},
	{ 
		$set: {"curso.nome": "Programação para Internet"}
	}
)


db.inscricoes.insert(
	{
		aluno: "William Douglas",
		data: new Date(),
		curso: {nome: "Programação para internet"},
		notas: [6.4, 3.5, 6.4]
	}
)


// Utilizando o update para atualizar múltiplos documentos
db.inscricoes.update(
	{"curso.nome": "Programação para internet"},
	{ 
		$set: {"curso.nome": "Programação para Internet"}
	},
	{
		multi: true
	}
)

// Atualizando array dentro de documento OBS: (O push só adiciona um elemento no array)
db.inscricoes.update(
	{"_id" : ObjectId("5ff4fa3e6f2d3d7096f9eea0")},
	{
		$push: {notas: 6.7}
	}
)


// Inserindo mais de um elemento dentro de um array
db.inscricoes.update(
	{"_id" : ObjectId("5ff4f80c6f2d3d7096f9ee9e")},
	{
		$push: {
			notas: {
				$each: [9.2, 5]
			}
		}
	}
)
