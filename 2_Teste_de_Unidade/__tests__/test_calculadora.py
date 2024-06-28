import pytest
from Calculadora.calculadora import area_do_cubo,area_do_paralelogramo,area_piramide_base_quadrada
from utils.utils import read_csv

def test_area_do_cubo_positivo():

    val1 = 5
    resultado_esperado = 150

    resultado_obtido = area_do_cubo(val1)

    assert resultado_esperado == resultado_obtido

def test_area_do_cubo_neg():
    val1 = 100
    resultado_esperado = 324

    resultado_obtido = area_do_cubo(val1)

    assert resultado_esperado == resultado_obtido

def test_area_do_paralelogramo():

    base = 10
    altura = 7
    resultado_esperado = 70

    resultado_obtido = area_do_paralelogramo(base,altura)

    assert resultado_esperado == resultado_obtido

def test_area_da_piramide():
    a = 3
    h_l = 4
    resultado_esperado = 33

    resultado_obtido = area_piramide_base_quadrada(a,h_l)

    assert resultado_esperado == resultado_obtido


@pytest.mark.parametrize('a,h_l,resultado_esperado',
                         read_csv('./fixtures/csv/massa_piramide.csv'))


def test_area_da_piramide_massa(a,h_l,resultado_esperado):

    resultado_obtido = area_piramide_base_quadrada(float(a),float(h_l))

    assert float(resultado_esperado) == resultado_obtido
