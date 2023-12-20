* 8. Faça uma rotina que receba dois números e retorne o maior deles (caso os 
* números sejam iguais retorne o próprio número).

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
    WRITE: 'O primeiro valor � o maior: ', v1.
  ELSEIF v1 = v2.
    WRITE: 'Os valores s�o iguais: ', v1, v2.
  ELSE.
    WRITE: 'O segundo valor � o maior: ',v2.
  ENDIF.
ENDFORM.
