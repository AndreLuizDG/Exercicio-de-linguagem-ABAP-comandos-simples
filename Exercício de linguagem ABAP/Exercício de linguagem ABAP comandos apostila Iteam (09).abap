REPORT z_algj_13.

DATA:
  v1   TYPE p,
  v2   TYPE p,
  flag TYPE flag.


PARAMETERS: p1 TYPE p,
            p2 TYPE p.

START-OF-SELECTION.

  v1 = p1.
  v2 = p2.

END-OF-SELECTION.

PERFORM zf_maior_valor USING: v1
                              v2
                              flag.

FORM zf_maior_valor USING:   v1
                             v2
                    CHANGING flag.

  IF v1 = v2.
    flag = abap_true.
    WRITE: 'A flag está marcada: ', flag.
  ELSE.
    flag = abap_false.
    WRITE: 'A flag não está marcada: ', flag.
  ENDIF.
ENDFORM.
