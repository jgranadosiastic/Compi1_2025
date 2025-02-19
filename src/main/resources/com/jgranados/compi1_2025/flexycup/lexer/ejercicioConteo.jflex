/* codigo de usuario */

%% //separador de area

/* opciones y declaraciones de jflex */

%class Contador
%standalone
%line
%column
LETRA = [a-zA-Z]
DIGITO = [0-9]
SEPARADORES = [ \n\r\t]

%{
  private int sumas = 0;
  private int restas = 0;
  private int multiplicaciones = 0;
  private int divisiones = 0;

  private void imprimirContadores() {
    System.out.println("Sumas: " + sumas);
    System.out.println("Restas: " + restas);
    System.out.println("Multiplicaciones: " + multiplicaciones);
    System.out.println("Divisiones: " + divisiones);
  
  }
%}

%eof{
  imprimirContadores();
%eof}

%% // separador de areas

/* reglas lexicas */
{SEPARADORES} {/* ignoramos */}
{LETRA}({LETRA}|{DIGITO})* {System.out.printf("*** Encontrado IDENTIFICADOR [%s]***\n", yytext());}
{DIGITO}({DIGITO}*|({DIGITO}*[.]{DIGITO}*)) {System.out.printf("*** Encontrado NUMERO [%s]***\n", yytext());}
"=" {System.out.printf("*** Encontrado IGUAL [%s]***\n", yytext());}
"+" {System.out.printf("*** Encontrado SUMA [%s]***\n", yytext()); sumas++;}
"*" {System.out.printf("*** Encontrado MULTIPLICACION [%s]***\n", yytext()); restas++;}
"-" {System.out.printf("*** Encontrado RESTA [%s]***\n", yytext()); multiplicaciones++;}
"/" {System.out.printf("*** Encontrado DIVISION [%s]***\n", yytext()); divisiones++;}
. {System.out.printf("*** Encontrado ERROR [%s]***\n", yytext());}
