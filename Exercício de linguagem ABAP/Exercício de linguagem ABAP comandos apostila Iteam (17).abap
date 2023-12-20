*--------------------------------------------------------------------*
*17. Faça uma rotina que receba dois números (base e expoente)
*obrigatórios (via parameters). Imprima o resultado da exponenciação.
*--------------------------------------------------------------------*
REPORT Z_ALGJ_21.

SELECTION-SCREEN: BEGIN OF BLOCK b1 WITH FRAME TITLE text-001.

  PARAMETERS: P_base TYPE p,
              p_expo TYPE p.

SELECTION-SCREEN: END OF BLOCK b1.

DATA: resultado  TYPE p.

PERFORM zf_calcula_exponenciacao USING    P_base
                                          p_expo
                                 CHANGING resultado.

WRITE: 'A exponenciação desses numeros é:', resultado.

FORM zf_calcula_exponenciacao USING    base      TYPE p
                                       expoente  TYPE p
                              CHANGING resultado TYPE p.

  resultado = base ** expoente.


ENDFORM.
