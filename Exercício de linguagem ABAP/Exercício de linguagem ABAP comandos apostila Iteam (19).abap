*---------------------------------------------------------------------------*
*19. Faça uma rotina que contenha um select-option para um campo numérico e
*imprimir o resultado da multiplicação de cada número dentro do range por 3.
*---------------------------------------------------------------------------*

REPORT z_algj_23.

TABLES mseg.

SELECTION-SCREEN: BEGIN OF BLOCK b1 WITH FRAME TITLE text-001.
SELECT-OPTIONS s_num FOR  mseg-KDPOS.
SELECTION-SCREEN: END OF BLOCK b1.

DATA: w_sum     LIKE LINE OF s_num,
      resultado TYPE p.

PERFORM zf_rotina USING s_num.

FORM zf_rotina USING numero LIKE s_num.

  LOOP AT s_num INTO w_sum.

    resultado = w_sum-low * 3.

    WRITE: / 'Resultado:', resultado.

  ENDLOOP.

ENDFORM.
