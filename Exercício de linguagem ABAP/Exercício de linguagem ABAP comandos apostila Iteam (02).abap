* 2. Concatene duas palavras e o mês atual, unindo por “-“ e escreva o resultado.

REPORT Z_ALGJ_06.

DATA:
  palavra1     TYPE string,
  palavra2     TYPE string,
  mes          TYPE string,
  concatenacao TYPE string.

palavra1 = 'M�S'.
palavra2 = 'atual'.
mes      = sy-datum+4(2).


CONCATENATE palavra1
            palavra2
            mes
INTO concatenacao
SEPARATED BY '-'.

WRITE concatenacao.
