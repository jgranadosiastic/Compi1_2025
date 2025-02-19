package com.jgranados.compi1_2025.flexycup.lexer;

import java_cup.runtime.*;
import com.jgranados.compi1_2025.flexycup.parser.sym;

%%

%class ContadorOperacionesLexer
%cup
%public
%line
%column

LineTerminator = \r|\n|\r\n

WhiteSpace = {LineTerminator} | [ \t\f]

/* integer literals */
entero = 0 | [1-9][0-9]*


%{
  
  private Symbol symbol(int type) {
    return new Symbol(type, yyline+1, yycolumn+1);
  }

  private Symbol symbol(int type, Object value) {
    return new Symbol(type, yyline+1, yycolumn+1, value);
  }


  private void error(String message) {
    System.out.println("Error en linea line "+(yyline+1)+", columna "+(yycolumn+1)+" : "+message);
  }
%}

%% // separador de areas

/* reglas lexicas */


	";"		{ return symbol(sym.P_COMA); }

	{entero}	{ return symbol(sym.ENTERO, Integer.parseInt(yytext()));}

	"+"		{ return symbol(sym.SUMA);}

	"-"		{ return symbol(sym.RESTA);}

        "/"		{ return symbol(sym.DIVISION);}

        "*"		{ return symbol(sym.MULTIPLICACION);}

	{WhiteSpace} 	{/* ignoramos */}



/* error fallback */
[^]                     { error("Simbolo invalido <"+ yytext()+">"); }
<<EOF>>                 { return symbol(sym.EOF); }