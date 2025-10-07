from sqlite3 import Cursor
from django.shortcuts import render

import pyodbc
from .util_conexao import *


def home(request):
    # define a página HTML (template) que deverá será carregada
    template = 'home.html'
    return render(request, template)

def exercicio1(request):
    template = 'exercicio1.html'
    try:
        conexao = obter_conexao()
        cursor = conexao.cursor()
        sql = """
                select * from view_uf
                    order by UF
              """
        resultado = cursor.execute(sql).fetchall()
        return render(request, template, context={'resultado': resultado})
    
    except Exception as err:
        return render(request, template, context={'ERRO': err})


def exercicio3(request):
    template = 'exercicio3.html'
    try:
        conexao = obter_conexao()
        cursor = conexao.cursor()
        sql = """
                select * from view_enade
	                order by area, curso
              """
        resultado = cursor.execute(sql).fetchall()
        return render(request, template, context={'resultado': resultado})
    
    except Exception as err:
        return render(request, template, context={'ERRO': err})