       SELECT COMICS-FILE
      * The file must exist due to OPEN I-O
       ASSIGN TO "bd-comic.dat"
       ORGANIZATION IS INDEXED
      * PRIMARY-KEY is COMIC-ID
       RECORD KEY IS COMIC-ID
       ACCESS MODE IS DYNAMIC.
