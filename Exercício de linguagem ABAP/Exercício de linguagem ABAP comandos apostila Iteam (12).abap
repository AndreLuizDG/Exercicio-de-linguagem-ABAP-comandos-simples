* 12. Faça uma rotina que receba uma workarea contendo 5 tipos de dados 
* diferentes e conte quantos campos não estão preenchidos. Imprimir resultado.

REPORT z_algj_16.

TYPES:

  BEGIN OF types_mara,
    matnr TYPE mara-matnr,
    ersda TYPE mara-ersda,
    ernam TYPE mara-ernam,
    laeda TYPE mara-laeda,
    aenam TYPE mara-aenam,
  END OF types_mara.

DATA:
  ti_mara  TYPE TABLE OF types_mara,
  wa_mara  TYPE types_mara,
  contador TYPE p.

PERFORM zf_popula_mara CHANGING wa_mara.

FORM zf_popula_mara CHANGING wa_mara TYPE types_mara.

  wa_mara-matnr  = '000000000000000188'.
*  wa_mara-ersda = '23.01.2004'.
  wa_mara-ernam  = 'MICHALSKY'.
*  wa_mara-laeda = '11.06.1997'.
  wa_mara-aenam  = 'ASCHE'.

  IF wa_mara-matnr IS INITIAL.
    contador = contador + 1.
  ENDIF.

  IF wa_mara-ersda IS INITIAL.
    contador = contador + 1.
  ENDIF.

  IF wa_mara-ernam IS INITIAL.
    contador = contador + 1.
  ENDIF.

  IF wa_mara-laeda IS INITIAL.
    contador = contador + 1.
  ENDIF.

  IF wa_mara-aenam IS INITIAL.
    contador = contador + 1.
  ENDIF.

  WRITE contador.

ENDFORM.
