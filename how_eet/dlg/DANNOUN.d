BEGIN ~DANNOUN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @23104
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @23105
  IF ~~ THEN EXTERN ~DWYLF~ 0
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 2
  SAY @23106
  IF ~~ THEN REPLY @9150 EXIT
END