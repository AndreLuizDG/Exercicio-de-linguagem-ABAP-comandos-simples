REPORT Z_ALGJ_17.

types:

BEGIN OF type_pesoa,
  nome_completo   TYPE string,
  sobrenome       TYPE string,
  dinheiro_banco1 TYPE p,
  dinheiro_banco2 TYPE p,
  dinheiro_banco3 TYPE p,
END OF type_pesoa.

DATA:
      ti_pessoa TYPE TABLE OF type_pesoa,
      wa_pessoa TYPE type_pesoa,
      soma TYPE p.

wa_pessoa-dinheiro_banco1 = 10.
wa_pessoa-dinheiro_banco2 = 10.
wa_pessoa-dinheiro_banco3 = 10.

PERFORM zf_soma_dinheiro USING wa_pessoa.

FORM zf_soma_dinheiro USING wa_pessoa TYPE type_pesoa.

  soma = wa_pessoa-dinheiro_banco1 +
         wa_pessoa-dinheiro_banco2 +
         wa_pessoa-dinheiro_banco3.

  WRITE: 'A soma do dinheiro nas três contas bancarias é: ', soma.

ENDFORM.
