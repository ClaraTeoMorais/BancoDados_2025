from django.shortcuts import render

import pyodbc

#conexão com o banco de dados
def obter_conexao():
    # define os parametros de conexao
    driver   = '{ODBC Driver 17 for SQL Server}'
    servidor = '.\SQLEXPRESS'
    banco    = 'Aulas_BD'
    usuario  = 'sa'
    senha    = 'Senha@123' # poder ser também: "senha", "senha@123", "Senha@123"

    # realiza conexao com o BD
    string_conexao = f'Driver={driver};Server={servidor};Database={banco};UID={usuario};PWD={senha}'
    conexao = pyodbc.connect(string_conexao)
    
    # retorna a conexao  
    return conexao

#exibe a página inicial
def home(request):
    # define a página HTML (template) que deverá será carregada
    template = 'home.html'
    return render(request, template)

def exercicio_1(request):
    # define a página HTML (template) que deverá será carregada
    template = 'exercicio_1.html'
    try:
        # obtem a conexao com o BD
        conexao = obter_conexao()

        # define um cursor para executar comandos SQL
        cursor = conexao.cursor()

        # define o comando SQL que será executado
        sql = '''
            SELECT  dep.nome as 'departamento',
                    fun.nome, 
                    fun.telefones

            FROM Funcionario fun
            INNER JOIN Departamento dep ON dep.id = fun.departamento_id

            ORDER BY dep.nome, fun.nome
        '''
        
        # usa o cursor para executar o SQL
        cursor.execute(sql)
        # obtem todos os registros retornados
        registros = cursor.fetchall()

        # define a pagina a ser carregada, adicionando os registros das tabelas 
        return render(request, template, context={'registros': registros})
    
    # se ocorreu algunm erro, insere a mensagem para ser exibida no contexto da página 
    except Exception as err:
        return render(request, template, context={'ERRO': err})


def exercicio_2(request):
    # define a página HTML (template) que deverá será carregada
    template = 'exercicio_2.html'
    try:
        # obtem a conexao com o BD
        conexao = obter_conexao()

        # define um cursor para executar comandos SQL
        cursor = conexao.cursor()

        # define o comando SQL que será executado
        sql = '''
            SELECT  t.nome as 'turma',
                    a.nome, 
                    a.idade

            FROM Aluno a
            INNER JOIN Turma t ON t.id = a.turma_id

            ORDER BY t.nome, a.nome
        '''
        
        # usa o cursor para executar o SQL
        cursor.execute(sql)
        # obtem todos os registros retornados
        registros = cursor.fetchall()

        # define a pagina a ser carregada, adicionando os registros das tabelas 
        return render(request, template, context={'registros': registros})
    
    # se ocorreu algunm erro, insere a mensagem para ser exibida no contexto da página 
    except Exception as err:
        return render(request, template, context={'ERRO': err})


def exercicio_3(request):
    # define a página HTML (template) que deverá será carregada
    template = 'exercicio_3.html'
    try:
        # obtem a conexao com o BD
        conexao = obter_conexao()

        # define um cursor para executar comandos SQL
        cursor = conexao.cursor()

        # define o comando SQL que será executado
        sql = '''
            SELECT  e.nome as 'estado',
                    c.nome as 'cidade', 
                    b.nome 
            
            INNER JOIN Turma t ON t.id = a.turma_id

            FROM Bairro b
            INNER JOIN Cidade c ON c.id = b.cidade_id
            INNER JOIN Etsado e ON e.id = c.estado_id

            ORDER BY e.nome, c.nome, b.nome
        '''
        
        # usa o cursor para executar o SQL
        cursor.execute(sql)
        # obtem todos os registros retornados
        registros = cursor.fetchall()

        # define a pagina a ser carregada, adicionando os registros das tabelas 
        return render(request, template, context={'registros': registros})
    
    # se ocorreu algunm erro, insere a mensagem para ser exibida no contexto da página 
    except Exception as err:
        return render(request, template, context={'ERRO': err})


def exercicio_4(request):
    # define a página HTML (template) que deverá será carregada
    template = 'exercicio_4.html'
    try:
        # obtem a conexao com o BD
        conexao = obter_conexao()

        # define um cursor para executar comandos SQL
        cursor = conexao.cursor()

        # define o comando SQL que será executado
        sql = '''
            SELECT  f.descricao as 'fabricante',
                    m.descricao as 'modelo', 
                    c.descricao as 'categoria',
                    carro.cor,
                    carro.placa,
                    carro.ano_fabricacao,
                    carro.preco

            FROM Carro carro
            INNER JOIN Modelo m ON m.id = carro.modelo_id
            INNER JOIN Categoria c ON m.id = c.categoria_id
            INNER JOIN Fabricante f ON f.id = m.fabricante_id

            ORDER BY f.descricao, m.descricao, carro.ano_fabricacao, carro.cor, carro.placa, carro.preco, c.descricao 
        '''
        
        # usa o cursor para executar o SQL
        cursor.execute(sql)
        # obtem todos os registros retornados
        registros = cursor.fetchall()

        # define a pagina a ser carregada, adicionando os registros das tabelas 
        return render(request, template, context={'registros': registros})
    
    # se ocorreu algunm erro, insere a mensagem para ser exibida no contexto da página 
    except Exception as err:
        return render(request, template, context={'ERRO': err})