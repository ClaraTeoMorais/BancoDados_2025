from sqlite3 import Cursor
from django.shortcuts import render

import pyodbc
from .util_conexao import *


def home(request):
    # define a página HTML (template) que deverá será carregada
    template = 'home.html'
    return render(request, template)


def dados_gerais(request):
    # define a página HTML (template) que deverá será carregada
    template = 'dados_gerais.html'
    try:
        # obtem a conexao com o BD
        conexao = obter_conexao()

        # define um cursor para executar comandos SQL
        cursor = conexao.cursor()

        # obtem a quantidade de registros de Instituicoes Financeiras
        sql = 'SELECT count(*) FROM IES '
        # obtem o valor retornado usando "fetchval"
        count_ies = cursor.execute(sql).fetchval()

        # obtem a quantidade de registros de Cursos
        sql = 'SELECT count(*) FROM campus '
        count_campus = cursor.execute(sql).fetchval()

        # obtem a quantidade de registros de Cursos
        sql = 'SELECT count(*) FROM curso '
        count_cursos = cursor.execute(sql).fetchval()

        # obtem a quantidade de registros de Cursos
        sql = 'SELECT count(*) FROM cursos_oferecidos_por_campus '
        count_ofertas = cursor.execute(sql).fetchval()

        # obtem a quantidade de registros de Cursos
        sql = 'SELECT count(*) FROM area '
        count_areas = cursor.execute(sql).fetchval()

        # define a pagina a ser carregada, adicionando os registros das tabelas 
        return render(request, template, 
                    context={
                          'count_ies': count_ies,
                          'count_campus': count_campus,
                          'count_cursos': count_cursos,
                          'count_ofertas': count_ofertas,
                          'count_areas': count_areas,
                    })
    
    # se ocorreu algunm erro, insere a mensagem para ser exibida no contexto da página 
    except Exception as err:
        return render(request, template, context={'ERRO': err})


def campi_uf(request):
    template = 'campi_uf.html'
    try:
        conexao = obter_conexao()
        cursor = conexao.cursor()
        sql = """
                SELECT 
                m.uf as uf,
                COUNT(DISTINCT(c.id_campus)) as quantidade

                from Campus c
                INNER JOIN Municipio m
                    ON m.id_municipio = c.id_municipio

                group by m.uf
                order by m.uf asc
              """
        count = cursor.execute(sql).fetchall()

        ufs = [{'uf': uf, 'quantidade': qtd} for uf, qtd in count]

        return render(request, template, {'ufs': ufs})
    
    except Exception as err:
        return render(request, template, context={'ERRO': err})

def ranking_municipio(request):
    template = 'ranking_municipio.html'
    try:
        conexao = obter_conexao()
        cursor = conexao.cursor()
        sql = """
                SELECT top (15)
                m.nome as municipio,
                m.uf as uf,
                COUNT(c.id_campus) as quantidade

                from Campus c
                INNER JOIN Municipio m
                    ON m.id_municipio = c.id_municipio

                group by m.nome, m.uf
                order by COUNT(c.id_campus) desc, m.nome asc
              """
        count = cursor.execute(sql).fetchall()

        resultado = [{'nome': nome,'uf': uf, 'quantidade': qtd} for nome, uf, qtd in count]

        return render(request, template, {'resultado': resultado})
    
    except Exception as err:
        return render(request, template, context={'ERRO': err})