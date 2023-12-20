REPORT z_algj_05.

DATA:
  palavra1     TYPE string,
  palavra2     TYPE string,
  concatenacao TYPE string.

palavra1 = 'Guarda'.
palavra2 = 'Roupas'.

CONCATENATE palavra1
            palavra2
INTO concatenacao.

WRITE concatenacao.
