* 6. Faça uma rotina (FORM) que imprima o username de todas as pessoas de do 
* treinamento (Veja a tabela USR04 na SE11 e seu conteúdo)

REPORT Z_ALGJ_09.

DATA: ti_usr04 TYPE TABLE OF usr04,
      wa_usr04 TYPE usr04.

START-OF-SELECTION.

PERFORM zf_select_usr04.

FORM zf_select_usr04.

  select *
    FROM usr04
    INTO TABLE ti_usr04.

    SORT ti_usr04 by bname.

    LOOP AT ti_usr04 INTO wa_usr04.

      WRITE / wa_usr04-bname.

    ENDLOOP.

ENDFORM.
