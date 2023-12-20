REPORT z_algj_07.

DATA:
  data_atual TYPE sy-datum,
  data_exten TYPE TABLE OF casdayattr WITH HEADER LINE.

data_atual = sy-datlo.

CALL FUNCTION 'DAY_ATTRIBUTES_GET'
  EXPORTING
    date_from      = data_atual
    date_to        = data_atual
    language       = sy-langu
  TABLES
    day_attributes = data_exten.

WRITE: data_exten-day_string.
