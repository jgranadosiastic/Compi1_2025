#! /bin/bash 
#echo "STARTING JFLEX COMPILING"
java -jar ~/CUNOC/bin/jflex-full-1.9.1.jar -d ~/CUNOC/Compi1/01\ 2025/Compi1_2025/src/main/resources/com/jgranados/compi1_2025/flexycup/lexer/ lexer/ContadorOperacionesLexer.jflex
mv ~/CUNOC/Compi1/01\ 2025/Compi1_2025/src/main/resources/com/jgranados/compi1_2025/flexycup/lexer/ContadorOperacionesLexer.java ~/CUNOC/Compi1/01\ 2025/Compi1_2025/src/main/java/com/jgranados/compi1_2025/flexycup/lexer/

#echo "STARTING CUP COMPILING"
java -jar ~/CUNOC/bin/java-cup-11b.jar -parser ContadorOperacionesParser parser/ContadorOperacionesParser.cup
mv ContadorOperacionesParser.java ~/CUNOC/Compi1/01\ 2025/Compi1_2025/src/main/java/com/jgranados/compi1_2025/flexycup/parser/
mv sym.java ~/CUNOC/Compi1/01\ 2025/Compi1_2025/src/main/java/com/jgranados/compi1_2025/flexycup/parser/sym.java