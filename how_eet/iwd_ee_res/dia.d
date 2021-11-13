//BLOCK DANGAAR
ADD_TRANS_ACTION DANGAAR BEGIN 14 END BEGIN 0 END ~AddJournalEntry(@40680,QUEST)~
ADD_TRANS_ACTION DANGAAR BEGIN 17 END BEGIN 0 END ~AddJournalEntry(@23550,QUEST)~
ADD_TRANS_ACTION DANGAAR BEGIN 19 END BEGIN 0 END ~AddJournalEntry(@23549,QUEST)~
ADD_TRANS_TRIGGER DANGAAR 23 ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 0
EXTEND_BOTTOM DANGAAR 23
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40799 GOTO an39
END
APPEND DANGAAR
  IF ~~ THEN BEGIN an39
    SAY @40800
    IF ~CheckStatLT(LastTalkedToBy,10,CHR)~ THEN REPLY @24031 DO ~SetGlobal("Passed_Test","GLOBAL",1)~ GOTO 26
    IF ~CheckStatGT(LastTalkedToBy,9,CHR)~  THEN REPLY @24031 DO ~SetGlobal("Passed_Test","GLOBAL",1)~ GOTO 25
  END
END
//BLOCKEND

//BLOCK DEMMRCH
ADD_TRANS_TRIGGER DEMMRCH 17 ~!Global("ID9200_revealed","GLOBAL",1)
                              !Global("ID9200_visited","GLOBAL",1)~ DO 0
ADD_TRANS_ACTION  DEMMRCH BEGIN 17 END BEGIN 0 END ~SetGlobal("ID9200_revealed","GLOBAL",1)~
EXTEND_TOP DEMMRCH 17
  IF ~OR(2)
        Global("ID9200_revealed","GLOBAL",1)
        Global("ID9200_visited","GLOBAL",1)~ THEN REPLY @25711 GOTO 18
END
//BLOCKEND

//BLOCK DHJOLLDE
ADD_TRANS_TRIGGER DHJOLLDE 6 ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 0 3
EXTEND_TOP DHJOLLDE 2
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40801 GOTO 4
END
EXTEND_TOP DHJOLLDE 6
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40802 GOTO 7
END
EXTEND_BOTTOM DHJOLLDE 6
  IF ~Kit(LastTalkedToBy,OHTEMPUS)
      GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY @40803 EXIT
END
//BLOCKEND

//BLOCK DRAWL
ADD_TRANS_TRIGGER DRAWL 1  ~!Global("ID9200_revealed","GLOBAL",1)      
                            !Global("ID9200_visited","GLOBAL",1)~ DO 2 
ADD_TRANS_TRIGGER DRAWL 2  ~!Global("ID9200_revealed","GLOBAL",1)      
                            !Global("ID9200_visited","GLOBAL",1)~ DO 0 
ADD_TRANS_TRIGGER DRAWL 4  ~!Global("ID9200_revealed","GLOBAL",1)      
                            !Global("ID9200_visited","GLOBAL",1)~ DO 0 
ADD_TRANS_TRIGGER DRAWL 8  ~!Global("ID9200_revealed","GLOBAL",1)      
                            !Global("ID9200_visited","GLOBAL",1)~ DO 1 
ADD_TRANS_TRIGGER DRAWL 9  ~!Global("ID9200_revealed","GLOBAL",1)      
                            !Global("ID9200_visited","GLOBAL",1)~ DO 0 
ADD_TRANS_TRIGGER DRAWL 11 ~!Global("ID9200_revealed","GLOBAL",1)
                            !Global("ID9200_visited","GLOBAL",1)~ DO 1
ADD_TRANS_ACTION  DRAWL BEGIN 1   END BEGIN 2 END ~SetGlobal("ID9200_revealed","GLOBAL",1)~
ADD_TRANS_ACTION  DRAWL BEGIN 2   END BEGIN 0 END ~SetGlobal("ID9200_revealed","GLOBAL",1)~
ADD_TRANS_ACTION  DRAWL BEGIN 4 9 END BEGIN 0 END ~RevealAreaOnMap("ID9200")
                                                   SetGlobal("ID9200_revealed","GLOBAL",1)~
ADD_TRANS_ACTION  DRAWL BEGIN 8   END BEGIN 1 END ~SetGlobal("ID9200_revealed","GLOBAL",1)~
ADD_TRANS_ACTION  DRAWL BEGIN 11  END BEGIN 1 END ~RevealAreaOnMap("ID9200")
                                                   SetGlobal("ID9200_revealed","GLOBAL",1)~
ALTER_TRANS DRAWL BEGIN 5 END BEGIN 0 END BEGIN "ACTION" ~~ END
EXTEND_TOP DRAWL 1 #2
  IF ~OR(2)
        Global("ID9200_revealed","GLOBAL",1)
        Global("ID9200_visited","GLOBAL",1)~ THEN REPLY @21662 GOTO 3
END
EXTEND_TOP DRAWL 2
  IF ~OR(2)
        Global("ID9200_revealed","GLOBAL",1)
        Global("ID9200_visited","GLOBAL",1)~ THEN REPLY @21662 GOTO 3
END
EXTEND_TOP DRAWL 4 9
  IF ~OR(2)
        Global("ID9200_revealed","GLOBAL",1)
        Global("ID9200_visited","GLOBAL",1)~ THEN REPLY @21662 GOTO 5
END
EXTEND_TOP DRAWL 8 11 #1
  IF ~OR(2)
        Global("ID9200_revealed","GLOBAL",1)
        Global("ID9200_visited","GLOBAL",1)~ THEN REPLY @21662 GOTO 3
END
//BLOCKEND

//BLOCK DROALD
ADD_TRANS_TRIGGER DROALD 0  ~!Global("ID9200_revealed","GLOBAL",1)       
                             !Global("ID9200_visited","GLOBAL",1)~ DO 1  
ADD_TRANS_TRIGGER DROALD 1  ~!Global("ID9200_revealed","GLOBAL",1)       
                             !Global("ID9200_visited","GLOBAL",1)~ DO 1  
ADD_TRANS_TRIGGER DROALD 2  ~!Global("ID9200_revealed","GLOBAL",1)       
                             !Global("ID9200_visited","GLOBAL",1)~ DO 0  
ADD_TRANS_TRIGGER DROALD 17 ~!Global("ID9200_revealed","GLOBAL",1)
                             !Global("ID9200_visited","GLOBAL",1)~ DO 1
ADD_TRANS_ACTION  DROALD BEGIN 0 1 17 END BEGIN 1 END ~SetGlobal("ID9200_revealed","GLOBAL",1)~
ADD_TRANS_ACTION  DROALD BEGIN 2      END BEGIN 0 END ~SetGlobal("ID9200_revealed","GLOBAL",1)~
EXTEND_TOP DROALD 0 1 17 #1
  IF ~OR(2)
        Global("ID9200_revealed","GLOBAL",1)
        Global("ID9200_visited","GLOBAL",1)~ THEN REPLY @22909 GOTO 3
END
EXTEND_TOP DROALD 2
  IF ~OR(2)
        Global("ID9200_revealed","GLOBAL",1)
        Global("ID9200_visited","GLOBAL",1)~ THEN REPLY @22909 GOTO 3
END
//BLOCKEND

//BLOCK DWYLF
ADD_TRANS_TRIGGER DWYLF 15 ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 0
ADD_TRANS_TRIGGER DWYLF 19 ~!Kit(LastTalkedToBy,ASSASIN)~ DO 0 1
ADD_TRANS_TRIGGER DWYLF 26 ~!Kit(LastTalkedToBy,BARBARIAN)~ DO 0
ADD_TRANS_TRIGGER DWYLF 40 ~!Kit(LastTalkedToBy,ASSASIN)~ DO 0
EXTEND_BOTTOM DWYLF 15
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40804 GOTO 16
END
EXTEND_TOP DWYLF 19 #1
  IF ~Kit(LastTalkedToBy,ASSASIN)~ THEN REPLY @40732 DO ~SetGlobal("Know_Assassin","GLOBAL",2)~ GOTO 20
END
EXTEND_BOTTOM DWYLF 19
  IF ~Kit(LastTalkedToBy,ASSASIN)~ THEN REPLY @40733 DO ~SetGlobal("Know_Assassin","GLOBAL",2)
                                                         SetGlobal("Know_Plot","GLOBAL",1)
                                                         AddXP2DA("ID1EX9H")
                                                         DisplayStringNoNameDlg(Myself,@26703)~ GOTO 40
END
EXTEND_BOTTOM DWYLF 26 
  IF ~Kit(LastTalkedToBy,BARBARIAN)~ THEN REPLY @40809 GOTO 27
END
EXTEND_BOTTOM DWYLF 40
  IF ~Kit(LastTalkedToBy,ASSASIN)~ THEN REPLY @40732 GOTO 20
END
//BLOCKEND








































