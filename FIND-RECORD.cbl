       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIND-RECORD.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
      * Physic file in dinamic mode.
       FILE-CONTROL.
       COPY "PHYSIC-FILE.cbl".

       DATA DIVISION.
       FILE SECTION.
       COPY "LOGIC-FILE.cbl".

       WORKING-STORAGE SECTION.
       77 RECORD-FOUND PIC X.
       77 ID-COMIC-FIELD PIC Z(5).

       COPY "FIND-WS-ESP.cbl".

       PROCEDURE DIVISION.
       START-PROGRAM.
           OPEN I-O COMICS-FILE.
           PERFORM GET-COMICS-RECORDS.
           PERFORM DELETE-RECORDS
           UNTIL COMIC-ID = ZEROES.
           CLOSE COMICS-FILE.
           END-PROGRAM.
               STOP RUN.

       GET-COMICS-RECORDS.
           PERFORM INITIATE-COMICS-RECORDS.
           PERFORM GET-COMIC-ID.
           MOVE "N" TO RECORD-FOUND.
               PERFORM FIND-COMIC-RECORD
               UNTIL RECORD-FOUND = "Y" OR
               COMIC-ID = ZEROES.

       INITIATE-COMICS-RECORDS.
           MOVE SPACE TO COMIC-RECORD.
           MOVE ZEROES TO COMIC-ID.

       GET-COMIC-ID.
           DISPLAY " ".
           DISPLAY TEXT-ID-TO-FIND.
           DISPLAY TEXT-RANGE.
           DISPLAY TEXT-ANOTHER-OPTION.
           ACCEPT ID-COMIC-FIELD.
           MOVE ID-COMIC-FIELD TO COMIC-ID.

       FIND-COMIC-RECORD.
           PERFORM READ-COMIC-RECORD.
           IF RECORD-FOUND = "N"
               DISPLAY ERROR-NO-FOUND
           PERFORM GET-COMIC-ID.

       READ-COMIC-RECORD.
           MOVE "Y" TO RECORD-FOUND.
           READ COMICS-FILE RECORD
           INVALID KEY
           MOVE "N" TO RECORD-FOUND.
           READ COMICS-FILE RECORD WITH LOCK
           INVALID KEY
           MOVE "N" TO RECORD-FOUND.
           READ COMICS-FILE RECORD
           INVALID KEY
           MOVE "N" TO RECORD-FOUND.

       DELETE-RECORDS.
           PERFORM SHOW-ALL-FIELDS.
           PERFORM GET-COMICS-RECORDS.

       SHOW-ALL-FIELDS.
           DISPLAY " ".
           DISPLAY TEXT-SHOW-ID COMIC-ID.
           DISPLAY TEXT-SHOW-HOUSE COMIC-HOUSE.
           DISPLAY TEXT-SHOW-ISSUE COMIC-ISSUE.
           DISPLAY TEXT-SHOW-CHAR COMIC-CHARACTER.
           DISPLAY TEXT-SHOW-NAME COMIC-NAME.
           DISPLAY " ".

        END PROGRAM FIND-RECORD.
