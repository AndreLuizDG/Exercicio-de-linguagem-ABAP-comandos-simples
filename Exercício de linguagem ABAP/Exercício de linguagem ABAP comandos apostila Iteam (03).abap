* 3. Leia a data atual do sistema e escreva em português a data por extenso.

 REPORT z_algj_08.

 DATA: lv_user    TYPE sy-uname,
       lv_vowels  TYPE i VALUE 0,
       lv_index   TYPE sy-index,
       lv_char(1) TYPE c.

 lv_user = sy-uname.

 CLEAR lv_index.
 DO strlen( lv_user ) TIMES.

   lv_char = lv_user+lv_index(1).
   ADD 1 TO lv_index.

   IF lv_char CO '[AEIOUaeiou]*'.
     ADD 1 TO lv_vowels.
   ENDIF.
 ENDDO.

 WRITE: / 'O nome do usu�rio cont�m', lv_vowels, 'vogais'.
