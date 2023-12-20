*----------------------------------------------------------------------------*
*20. Faça uma rotina que contenha um select-option para um campo numérico sem
*o botão de seleção de ranges múltiplos e, que imprima os números deste range
*separados por “, “.
*----------------------------------------------------------------------------*
REPORT Z_ALGJ_24.

TABLES mseg.

SELECTION-SCREEN: BEGIN OF BLOCK b1 WITH FRAME TITLE text-001.
SELECT-OPTIONS s_num FOR  mseg-KDPOS NO DATABASE SELECTION.
SELECTION-SCREEN: END OF BLOCK b1.

DATA: w_sum     LIKE LINE OF s_num,
      resultado TYPE p,
      diferenca TYPE p,
      mult      TYPE p,
      contador  TYPE i.

PERFORM zf_rotina USING s_num.

FORM zf_rotina USING numero LIKE s_num.

  diferenca = numero-high - numero-low.

  contador = numero-low - 1.
  mult     = numero-low.
WHILE numero-high > contador.
    resultado = mult * 3.
    contador = contador + 1.
    mult     = mult + 1.
    WRITE: / 'Resultado:', resultado.
ENDWHILE.

ENDFORM.
