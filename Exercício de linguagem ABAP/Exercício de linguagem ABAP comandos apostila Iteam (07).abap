REPORT z_algj_10.

DATA: gv_var1 TYPE string VALUE 'A',
      gv_var2 TYPE string VALUE 'B',
      gv_var3 TYPE string VALUE 'C',
      gv_var4 TYPE string VALUE 'D'.

WRITE: / 'Antes da chamada da rotina:', gv_var1, gv_var2, gv_var3, gv_var4.

PERFORM my_form    USING gv_var1
                         gv_var3
                CHANGING gv_var2
                         gv_var4.

WRITE: / 'Ap�s a chamada da rotina:', gv_var1, gv_var2, gv_var3, gv_var4.

FORM my_form  USING    p_var1
                       p_var3
              CHANGING p_var2
                       p_var4.
  WRITE: / 'No in�cio da rotina:', p_var1, p_var2, p_var3, p_var4.
  CONCATENATE p_var1 'X' INTO p_var1.
  CONCATENATE p_var2 'Y' INTO p_var2.
  CONCATENATE p_var3 'Z' INTO p_var3.
  CONCATENATE p_var4 'W' INTO p_var4.
  WRITE: / 'No final da rotina:', p_var1, p_var2, p_var3, p_var4.
ENDFORM.
