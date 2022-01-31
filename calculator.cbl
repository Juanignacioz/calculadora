       IDENTIFICATION DIVISION.
       PROGRAM-ID. calculator.
       AUTHOR: Juani.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NUM1 PIC 999.
       01 NUMERO2 PIC 999.
       01 Opcion  pic 9.
       01 RESULTADO PIC 999999.
       01 SALIDA PIC X.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           INICIO.
            DISPLAY"ingrese un numero".
            ACCEPT NUM1.
            DISPLAY " ingrese un numero"
            ACCEPT NUMERO2.

            DISPLAY " "
            DISPLAY "1. SUMA".
            DISPLAY "2. RESTA".
            DISPLAY "3. MULTIPLICACION"
            DISPLAY "4. DIVISION".
           ret.
            DISPLAY "Ingrese la operacion que deasea realizar".
            ACCEPT Opcion.

            if opcion = "1"
               perform suma.

            if Opcion = "2"
               PERFORM resta.

           if Opcion = "3"
               PERFORM multiplicacion.

            if Opcion = "4"
                PERFORM div.
            if opcion > 4
                DISPLAY " ERROR,Ingrese una opcion valida!"
                PERFORM ret.

            STOP RUN.


           Suma.
              ADD NUM1 to NUMERO2 GIVING RESULTADO.
              DISPLAY RESULTADO.
              go to consulta.


           Resta.
           SUBTRACT NUM1 FROM NUMERO2 GIVING RESULTADO.
              DISPLAY RESULTADO.
                  go to consulta.


           Div.
           DIVIDE NUM1 BY NUMERO2 GIVING RESULTADO.
              DISPLAY RESULTADO.
              go to consulta.


           Multiplicacion.
               MULTIPLY NUM1 BY NUMERO2 GIVING RESULTADO.
                  DISPLAY RESULTADO.
                  go to consulta.


           consulta.
            DISPLAY "desea continuar?".
            ACCEPT salida.
            if salida = "s" or salida = "S"
            go to inicio.


       END PROGRAM calculator.
