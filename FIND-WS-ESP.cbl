       01 TEXT-ID-TO-FIND PIC X(37)
           VALUE "Introduce un numero de ID a buscar.".
       01 TEXT-RANGE PIC X(34)
           VALUE "Introduce un valor entero".
       01 TEXT-ANOTHER-OPTION PIC X(41)
           VALUE "Introduce cualquier otra cosa para salir.".
       01 ERROR-NO-FOUND PIC X(43)
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
