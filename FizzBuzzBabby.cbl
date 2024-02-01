      ******************************************************************
      * Author:WSG-Chase Kuykendall
      * Date:2/1/2024
      * Purpose:idk..So i dont have to code multplayer server interations at 7am I guess
      * Tectonics: cobc <- I dont even know what that word means
      ******************************************************************

      *TODO now that I can comment, let get rolling

      *Following a git page for a test question that is 75 years younger
      *than the language it's written in.

       IDENTIFICATION DIVISION.
      *---------------
       PROGRAM-ID. FizzBuzz.
      *--------------
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
        CONSOLE IS TERM.

       DATA DIVISION.
      *------------


       FILE SECTION.
      *-------------


       WORKING-STORAGE SECTION.
      *-----------------------
       77  COUNTER                                PIC 9(04).
       77  QUOTIENT                               PIC 9(03).
       77  REST3                                  PIC 9(03).
       77  REST5                                  PIC 9(03).

       77  TOTAL_FIZZ              PIC 9999.
       77  TOTAL_BUZZ              PIC 9999.
       77  TOTAL_FIZZBUZZ          PIC 9999.
       77  TIMES_TO_SIMULATE       PIC 9999 VALUE 10.


       PROCEDURE DIVISION.
      *-----------------------
      * loops through fizzbuzz routine till counter >= tts
0000       MAIN.
               PERFORM FIZZBUZZ VARYING COUNTER FROM 1 BY 1
                    UNTIL COUNTER >= TIMES_TO_SIMULATE.



9999       EXIT.
               DISPLAY " End of simulation".

               DISPLAY " TOTAL_FIZZ:" WITH NO ADVANCING UPON TERM.
               DISPLAY TOTAL_FIZZ WITH NO ADVANCING UPON TERM.
               DISPLAY " TOTAL_BUZZ:" WITH NO ADVANCING UPON TERM.
               DISPLAY TOTAL_BUZZ WITH NO ADVANCING UPON TERM.
               DISPLAY " TOTAL_FIZZBUZZ:" WITH NO ADVANCING UPON TERM.
               DISPLAY TOTAL_FIZZBUZZ.


           STOP RUN.

      *-------------
      *THE NUMBERS MASON, WHAT DO THEY MEAN

       FIZZBUZZ SECTION.
      *    Hey this kinda looks like a function block in python

      *    Divide the counter by 3 giving the remainder to the rest3 variable
           DIVIDE COUNTER BY 3 GIVING QUOTIENT REMAINDER REST3.
      *    same as above but for 5
           DIVIDE COUNTER BY 5 GIVING QUOTIENT REMAINDER REST5.

      *    basically a ye' olde for xyz match statement with the given fizzbuzz conditions and functions
           EVALUATE REST3 ALSO REST5
               WHEN 0 ALSO 0
                   DISPLAY "FIZZBUZZ" WITH NO ADVANCING UPON TERM
                   ADD 1 TO TOTAL_FIZZBUZZ
               WHEN 0 ALSO NOT 0
                   DISPLAY "FIZZ" WITH NO ADVANCING UPON TERM
                   ADD 1 TO TOTAL_FIZZ
               WHEN NOT 0 ALSO 0
                   DISPLAY "BUZZ" WITH NO ADVANCING UPON TERM
                   ADD 1 TO TOTAL_BUZZ
               WHEN NOT 0 ALSO NOT 0
                   DISPLAY COUNTER WITH NO ADVANCING UPON TERM
           END-EVALUATE.



      *    this actually evaluates the remainders from dividing the counter by 3 or 5... why?


           EXIT.
