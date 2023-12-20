*-------------------------------------------------------------------------------*
*18. Faça uma rotina que receba uma string e um número (Z) menor ou igual a 20.
*O programa deve imprimir a string Z vezes com a seguinte saída conforme exemplo:
*a. String = “Good Food, Good Life”. Z = 20. Saída:
*b. Linha [sy-?????]: G
*c. Linha [sy-?????]:Go
*d. Linha [sy-?????]:Goo
*e. Linha [sy-?????]:Good
*f. Linha [sy-?????]:Good (aqui tem um espaço)
*g. Linha [sy-?????]:Good F
*h. (...)
*i. Linha [Z]: Good Food, Good Life
*Caso Z seja maior que 20 imprimir uma mensagem de erro usando o comando WRITE.
*-------------------------------------------------------------------------------*
REPORT Z_ALGJ_22.

DATA: tabix TYPE sy-tabix,
      contador TYPE i.

SELECTION-SCREEN: BEGIN OF BLOCK b1 WITH FRAME TITLE text-001.

  PARAMETERS: p_string TYPE string,
              p_numero TYPE p.

SELECTION-SCREEN: END OF BLOCK b1.

PERFORM zf_rotina USING p_numero
                        p_string.

FORM zf_rotina USING numero TYPE p
                     string TYPE string.

  IF numero > 20.

    WRITE: / 'Escreva um numero menor que 20'.

  ELSE. "IF numero > 20.

    DO p_numero TIMES.
      contador = contador + 1.
      WRITE: / 'Linha', contador, p_string(contador).
    ENDDO.



  ENDIF. "IF numero > 20.



ENDFORM.
