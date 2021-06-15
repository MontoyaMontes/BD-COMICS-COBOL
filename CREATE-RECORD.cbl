       IDENTIFICATION DIVISION.
       PROGRAM-ID. CREATE-INDEXED-FILE.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
      * Physic file in dinamic mode.
       FILE-CONTROL.
       COPY "PHYSIC-FILE.cbl".

       DATA DIVISION.
       FILE SECTION.
       COPY "LOGIC-FILE.cbl".

       WORKING-STORAGE SECTION.
       COPY "CREATE-WS-ESP.cbl".

       01 YES-NO PIC X.
       01 USER-SELECTION PIC X.
       PROCEDURE DIVISION.
       MAIN-LOGIC SECTION.
       PROGRAM-BEGIN.

       PERFORM OPEN-FILE-PROCEDURE.
       MOVE "Y" TO YES-NO.
       PERFORM ADD-RECORD
       UNTIL YES-NO = "N".
       PERFORM CLOSE-FILE-PROCEDURE.

       END-PROGRAM.
        STOP RUN.

      * Change to OPEN to create the file and dont override.
       OPEN-FILE-PROCEDURE.
           OPEN I-O COMICS-FILE.

       CLOSE-FILE-PROCEDURE.
           CLOSE COMICS-FILE.

       ADD-RECORD.
           MOVE "N" TO USER-SELECTION.
           PERFORM GET-FIELDS
           UNTIL USER-SELECTION = "Y".
           PERFORM WRITE-RECORD.
           PERFORM RESTART.

       GET-FIELDS.
           MOVE SPACE TO COMIC-RECORD.
           DISPLAY IDENTIFIER.
           ACCEPT COMIC-ID.
           DISPLAY HOUSE.
           ACCEPT COMIC-HOUSE.
           DISPLAY ISSUE
           ACCEPT COMIC-ISSUE.
           DISPLAY CHAR.
           ACCEPT COMIC-CHARACTER.
           DISPLAY FULLNAME .
           ACCEPT COMIC-NAME.
           PERFORM CONTINUE-PROCEDURE.

      * Add more exceptions.
       CONTINUE-PROCEDURE.
           MOVE "Y" TO USER-SELECTION.
           IF COMIC-ID = SPACE
               DISPLAY ERROR-INVALID-ID
           MOVE "N" TO USER-SELECTION.

       WRITE-RECORD.
           WRITE COMIC-RECORD.

       RESTART.
           DISPLAY TEXT-RESTAR-CREATE.
           ACCEPT YES-NO.
           IF YES-NO = "y"
               MOVE "Y" TO YES-NO.
           IF YES-NO NOT = "Y"
               MOVE "N" TO YES-NO.

       END PROGRAM CREATE-INDEXED-FILE.
