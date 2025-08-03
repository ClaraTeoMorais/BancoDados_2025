from django import forms
from django.http import HttpResponseRedirect
from django.shortcuts import render


from .util_conexao import *
from .util_views import *


# DEFINE O PREFIXO DA PÁGINA HTML (TEMPLATE) QUE DEVERÁ SERÁ CARREGADA
#    - Exemplo: 'categorias', 'funcionarios'
TEMPLATE_PREFIXO = 'turma'


# COMANDO SELECT GERAL PARA RETORNAR OS REGISTROS
SQL_SELECT_GERAL = """
    SELECT  t.id,
            t.nome,
    
    FROM    Turma t
""" 

# COMANDO SQL PARA RETORNAR TODOS OS REGISTROS DEFININDO A ORDENAÇÃO
SQL_LISTAGEM = SQL_SELECT_GERAL + '\n    ' \
             + 'ORDER BY t.nome'


# COMANDO SQL PARA SELECIONAR O REGISTRO PELO "id" INFORMADO
SQL_OBTER_REGISTRO = SQL_SELECT_GERAL + '\n    ' \
                   + 'WHERE   t.id = {}'



# ======================================================================== #
# COMANDO SQL PARA EXCLUIR UM REGISTRO
# ======================================================================== #
SQL_EXCLUSAO = """ 
    DELETE FROM Turma 
    WHERE id = {}
"""


# ======================================================================== #
# COMANDO SQL PARA INCLUIR UM REGISTRO
# 
# ATENÇÃO: observe o tipo de campo (VARCHAR, INT, DATE...) e 
#          se o seu valor deve estar entre aspas-simples ('')
# ======================================================================== #
SQL_INCLUSAO = """ 
    INSERT INTO TABELA(nome) 
    VALUES('{}')
"""


# ======================================================================== #
# COMANDO SQL PARA ALTERAR UM REGISTRO
# 
# ATENÇÃO-1: insira os campos na MESMA ORDEM utilizada no SQL_INCLUSAO
# 
# ATENÇÃO-2: observe o tipo de campo (VARCHAR, INT, DATE...) e 
#            se o seu valor deve estar entre aspas-simples ('')
# ======================================================================== #
SQL_ALTERACAO = """
    UPDATE Turma 

    SET nome = '{}'
    WHERE id = {}
"""

# CLASSE QUE HERDA DE "ViewGenericCRUD"
class ViewCRUD (ViewGenericCRUD):
    # metodo para obter os dados informados no <form> HTML
    def obter_campos_formulario(self):
        return [    
            # OBS-1: INFORME OS NOMES DOS CAMPOS NA ORDEM 
            #        QUE APARECEM NO SQL DE INCLUSAO/ALTERACAO 
            'nome',
            # 0BS-2: DEIXAR O ID POR ULTIMO
            'id',
        ]

    
# =============================================================
# FORMULÁRIO - EXEMPLO 1
# =============================================================
class Formulario(forms.Form):
    # ID (DEIXAR ASSIM, NÃO ALTERAR)
    id = forms.IntegerField(label='ID', 
            widget=forms.TextInput(attrs={'readonly': 'readonly'}), required=False)
    # campos do formulario
    nome = forms.CharField(label='Nome', max_length=30, required=True)
        

# ============================================================= #
# OBS: NÃO PRECISA ALTERAR ESTA PARTE DO CÓDIGO                 #
# ============================================================= #
# classe que será utilizada como VIEW e que contem os 
# métodos listar(), editar() e salvar()
VIEW_CRUD = ViewCRUD(
    TEMPLATE_PREFIXO=TEMPLATE_PREFIXO, 
    SQL_LISTAGEM=SQL_LISTAGEM, 
    SQL_OBTER_REGISTRO=SQL_OBTER_REGISTRO, 
    SQL_INCLUSAO=SQL_INCLUSAO, 
    SQL_ALTERACAO=SQL_ALTERACAO,
    SQL_EXCLUSAO=SQL_EXCLUSAO, 
    FORMULARIO_CLASS=Formulario, 
)


