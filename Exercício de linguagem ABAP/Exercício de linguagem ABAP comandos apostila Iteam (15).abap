*--------------------------------------------------------------------*
* 15. Faça uma rotina que receba uma tabela interna e imprima quantos
* campos estão em branco por linha (o tipo da tabela deve ter no
* mínimo 4 campos). Saída desejada deve ter o template:
* Linha [número da linha] =>[10 caracteres em branco] + [número de campos em * branco] + “ campos em branco”
*--------------------------------------------------------------------*
REPORT z_algj_19.

* Declarações
TYPES:
  BEGIN OF type_mara,
    matnr TYPE mara-matnr,
    mtart TYPE mara-mtart,
    mbrsh TYPE mara-mbrsh,
    matkl TYPE mara-matkl,
  END OF type_mara.

DATA:
  ti_mara          TYPE TABLE OF type_mara,
  wa_mara          TYPE type_mara,
  numero_em_branco TYPE i,
  numero_em_branco_aux TYPE string,
  campos_em_branco TYPE string,
  tabix            TYPE string,
  wa_saida         TYPE string,
  ti_saida         TYPE TABLE OF string.


SELECT matnr
       mtart
       mbrsh
       matkl
  FROM mara
  INTO TABLE ti_mara
  UP TO 4 ROWS.

  PERFORM zf_verica_campos.

* form
FORM zf_verica_campos.

  LOOP AT ti_mara INTO wa_mara.

    tabix =  sy-tabix.

    IF wa_mara-matnr IS INITIAL.

      CONCATENATE campos_em_branco 'matnr'
      INTO campos_em_branco SEPARATED BY space.

      numero_em_branco = numero_em_branco + 1.

    ENDIF.

    IF wa_mara-mtart IS INITIAL.

      CONCATENATE campos_em_branco 'mtart'
    INTO campos_em_branco SEPARATED BY space.

      numero_em_branco = numero_em_branco + 1.

    ENDIF.

    IF wa_mara-mbrsh IS INITIAL.

      CONCATENATE campos_em_branco 'mbrsh'
      INTO campos_em_branco SEPARATED BY space.

      numero_em_branco = numero_em_branco + 1.

    ENDIF.

    IF wa_mara-matkl IS INITIAL.

      CONCATENATE campos_em_branco 'matkl'
    INTO campos_em_branco SEPARATED BY space.

      numero_em_branco = numero_em_branco + 1.


    ENDIF.
    numero_em_branco_aux = numero_em_branco.
    CONCATENATE 'Linha' tabix '          ' 'Quantidade de campos em branco 'numero_em_branco_aux 'Nomes dos campos em branco'campos_em_branco INTO wa_saida SEPARATED BY space.
    APPEND wa_saida TO ti_saida.
*    CLEAR wa_saida.
  ENDLOOP.
  WRITE wa_saida.

* exibe estrutura de saida
ENDFORM.
