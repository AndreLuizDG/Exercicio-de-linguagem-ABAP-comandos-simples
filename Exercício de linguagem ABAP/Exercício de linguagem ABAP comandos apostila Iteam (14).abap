*--------------------------------------------------------------------*
* 14. Faça uma rotina que receba uma workarea com 3 campos string ou
* caracteres e 3 campos numéricos (usar 3 tipos numéricos diferentes) e
* limpe o conteúdo de seus campos de acordo com as seguintes regras:
*
* A. Limpar somente os campos texto caso a soma dos campos numéricos for
* ímpar (desconsiderar possíveis casas decimais);
* B. Limpar somente campos numéricos caso a soma de vogais dos 3 campos
* texto for par;
*--------------------------------------------------------------------*
REPORT z_algj_18.

TYPES:
  BEGIN OF type_estrutura,
    campo1 TYPE string,
    campo2 TYPE string,
    campo3 TYPE string,
    campo4 TYPE p,
    campo5 TYPE p,
    campo6 TYPE p,
  END OF type_estrutura.

DATA:
  wa_estrutura TYPE type_estrutura,
  soma         TYPE p,
  soma_vogais  TYPE p,
  lv_vowels    TYPE i VALUE 0,
  lv_index     TYPE sy-index,
  lv_char(1)   TYPE c,
  flag         TYPE flag.

wa_estrutura-campo1 = 'Rafael'.
wa_estrutura-campo2 = 'Caaio'.
wa_estrutura-campo3 = 'Leticia'.
wa_estrutura-campo4 = 123.
wa_estrutura-campo5 = 456.
wa_estrutura-campo6 = 789.

soma = wa_estrutura-campo4 + wa_estrutura-campo5 + wa_estrutura-campo6.

IF soma MOD 2 EQ 0.

  CLEAR: wa_estrutura-campo1,
         wa_estrutura-campo2,
         wa_estrutura-campo3.
  flag = abap_true.
ENDIF.

IF flag IS INITIAL.

  PERFORM somar_vogais USING: wa_estrutura-campo1 soma_vogais,
                              wa_estrutura-campo2 soma_vogais,
                              wa_estrutura-campo3 soma_vogais.

  IF soma_vogais MOD 2 EQ 0.

    CLEAR: wa_estrutura-campo4,
           wa_estrutura-campo5,
           wa_estrutura-campo6.
  ENDIF.

ENDIF.

WRITE: wa_estrutura-campo1,'|',
       wa_estrutura-campo2,'|',
       wa_estrutura-campo3,'|',
       wa_estrutura-campo4,'|',
       wa_estrutura-campo5,'|',
       wa_estrutura-campo6,'|'.

FORM somar_vogais USING lv_var CHANGING soma_vogais.
  CLEAR lv_index.
  DO strlen( lv_var ) TIMES.

    lv_char = lv_var+lv_index(1).
    ADD 1 TO lv_index.

    IF lv_char CO '[AEIOUaeiou]*'.
      ADD 1 TO soma_vogais.
    ENDIF.
  ENDDO.
ENDFORM.
