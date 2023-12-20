*--------------------------------------------------------------------*
* 16. Fa�a uma rotina que receba dois n�meros (via parameters).
* O primeiro representa um n�mero a ser impresso e o segundo representa
* o n�mero de casas a serem impressas. Coloque zeros a esquerda caso
* necess�rio. Exemplos:
* a. p_numero = 15 p_casas = 2. Sa�da = 15
* b. p_numero = 15 p_casas = 4. Sa�da = 0015
* c. p_numero = 15 p_casas = 6. Sa�da = 000015
* d. p_numero = 2011 p_casas = 2. Sa�da = 20
* e. p_numero = 123456789 p_casas = 10. Sa�da = 0123456789
* f. p_numero = 123456789 p_casas = 4. Sa�da = 1234
*--------------------------------------------------------------------*
REPORT z_algj_20.

* Declara��es
DATA: saida      TYPE i,
      numero     TYPE string,
      casas      TYPE string,
      resultado  TYPE string,
      numero_stg TYPE string,
      vl_lenght  TYPE i.
* tela
SELECTION-SCREEN: BEGIN OF BLOCK b1 WITH FRAME TITLE text-001. "Tela de sele��o

PARAMETERS: p_numero TYPE p,
            p_casas  TYPE p.

SELECTION-SCREEN: END OF BLOCK b1.

END-OF-SELECTION.

  PERFORM zf_numeros.

* Rotina
FORM zf_numeros.

  numero = p_numero.
  casas  = p_casas.

  vl_lenght = strlen( numero ).

  IF vl_lenght > casas.

    WRITE numero(casas).

  ELSE.

    numero_stg = vl_lenght.

    DO casas - numero TIMES.
      CONCATENATE '0' numero_stg
      INTO numero_stg.
    ENDDO.

    WRITE numero_stg.
  ENDIF.

ENDFORM.
