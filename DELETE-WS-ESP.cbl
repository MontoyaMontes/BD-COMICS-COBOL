       01 TEXT-ID-TO-DELETE PIC X(37)
           VALUE "Introduce un numero de ID a eliminar.".
       01 TEXT-RANGE PIC X(34)
           VALUE "Introduce un valor entero".
       01 TEXT-ANOTHER-OPTION PIC X(41)
           VALUE "Introduce cualquier otra cosa para salir.".
       01 TEXT-ERROR-NO-FOUND PIC X(43)
           VALUE "No se encontró ningun registro con ese ID.".
       01 TEXT-SHOW-ID PIC X(4)
           VALUE "ID: ".
       01 TEXT-SHOW-HOUSE PIC X(6)
           VALUE "CASA: ".
       01 TEXT-SHOW-ISSUE PIC X(9)
           VALUE "NÚMERO: ".
       01 TEXT-SHOW-CHAR PIC X(12)
           VALUE "SUPERHEROE: ".
       01 TEXT-SHOW-NAME PIC X(8)
           VALUE "NOMBRE: ".
       01 TEXT-DELETE-QUESTION PIC X(44)
           VALUE "Seguro que quiere eliminar el registro (Y/N)".
       01 ERROR-INPUT PIC X(20)
           VALUE "Debes introducir Y/N".
       01 ERROR-CANT-DELETE PIC X(26)
           VALUE "ERROR ELIMINANDO REGISTRO.".
