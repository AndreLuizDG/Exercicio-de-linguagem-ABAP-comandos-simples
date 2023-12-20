REPORT z_algj_15.

TYPES:

  BEGIN OF types_mara,
    matnr TYPE mara-matnr,
    ersda TYPE mara-ersda,
    ernam TYPE mara-ernam,
    laeda TYPE mara-laeda,
    aenam TYPE mara-aenam,
  END OF types_mara.

DATA:
  ti_mara TYPE TABLE OF types_mara,
  wa_mara TYPE types_mara.

PERFORM zf_popula_mara CHANGING wa_mara.

FORM zf_popula_mara CHANGING wa_mara TYPE types_mara.

  wa_mara-matnr = '000000000000000188'.
  wa_mara-ersda = '23.01.2004'.
  wa_mara-ernam = 'MICHALSKY'.
  wa_mara-laeda = '11.06.1997'.
  wa_mara-aenam = 'ASCHE'.

  FORMAT COLOR COL_NORMAL INTENSIFIED OFF.
  WRITE:
        wa_mara-matnr,
        wa_mara-ersda,
        wa_mara-ernam,
        wa_mara-laeda,
        wa_mara-aenam.

ENDFORM.
