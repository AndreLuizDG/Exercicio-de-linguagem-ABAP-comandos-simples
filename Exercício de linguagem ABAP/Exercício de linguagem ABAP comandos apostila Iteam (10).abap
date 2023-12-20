REPORT z_algj_14.

DATA:
  v1        TYPE p,
  v2        TYPE p,
  resultado TYPE p.


PARAMETERS: p1 TYPE p,
            p2 TYPE p.

START-OF-SELECTION.

  v1 = p1.
  v2 = p2.

END-OF-SELECTION.

  PERFORM zf_maior_valor USING: v1
                                v2.

FORM zf_maior_valor USING:   v1
                             v2.

  IF v1 <> v2.

    IF v1 > v2.
      resultado = v1 / v2.
      WRITE: 'Resultado', resultado.
    ELSE.
      resultado = v2 / v1.
      WRITE: 'Resultado', resultado.
    ENDIF.

  ELSE.

    resultado = v1 ** v1.
    WRITE: 'Resultado', resultado.

  ENDIF.
ENDFORM.
