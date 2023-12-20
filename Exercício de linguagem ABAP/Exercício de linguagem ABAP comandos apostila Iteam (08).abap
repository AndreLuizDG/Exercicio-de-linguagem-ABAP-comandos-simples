REPORT z_algj_11.

DATA:
  v1 TYPE p,
  v2 TYPE p.


PARAMETERS: p1 TYPE p,
            p2 TYPE p.

START-OF-SELECTION.

  v1 = p1.
  v2 = p2.



END-OF-SELECTION.

  PERFORM zf_maior_valor USING: v1
                                v2.

FORM zf_maior_valor USING: v1
                           v2.

  IF v1 > v2.
    WRITE: 'O primeiro valor é o maior: ', v1.
  ELSEIF v1 = v2.
    WRITE: 'Os valores são iguais: ', v1, v2.
  ELSE.
    WRITE: 'O segundo valor é o maior: ',v2.
  ENDIF.
ENDFORM.
