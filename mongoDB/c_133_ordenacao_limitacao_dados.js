
// Possuem notas maior que 8
db.inscricoes.find(
	{
		notas: {$gt: 8.0}
	}

).pretty()


// Possuem notas maior ou igual que 8
db.inscricoes.find(
	{
		notas: {$gte: 8.0}
	}

).pretty()


// insercao comum
db.inscricoes.insert(
	{
		aluno: "jair Rodrigues",
		data_nascimento: new Date(1981, 6, 19),
		curso: {nome: "História"},
		notas: [6, 7, 8, 5.5]
	}
)

db.inscricoes.insert(
	{
		aluno: "Bruna Marquezi",
		data_nascimento: new Date(1995, 2, 6),
		curso: {nome: "História"},
		notas: [10, 9.7, 6.5, 8.7]
	}
)


// Como fazer para buscar apenas um resultado dentre possíveis vários?
db.inscricoes.findOne(
	{
		notas: {$gt: 7.7}
	}
)


// Ordenando pelo nome (ordem alfabética) 
// sort recebe um dado no estilo chave: valor. 
// 1 -> Crescente. 
// -1 -> Decrescente.
db.inscricoes.find().sort({aluno: 1})
db.inscricoes.find().sort({aluno: -1})


// Limitando os resultados
db.inscricoes.find().sort({aluno: 1}).limit(3)




