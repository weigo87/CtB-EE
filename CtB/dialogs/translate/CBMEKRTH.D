BEGIN ~CBMEKRTH~

IF ~Global("CbGetBookForCeeb","GLOBAL",1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 1
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 16
END

IF ~~ THEN BEGIN 6
  SAY @15
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 16
END

IF ~~ THEN BEGIN 7
  SAY @16
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @17
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @21 GOTO 16
END

IF ~~ THEN BEGIN 10
  SAY @22
  IF ~PartyHasItem("MISC45")
PartyHasItem("MISC3P")~ THEN REPLY @23 GOTO 11
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
END

IF ~~ THEN BEGIN 11
  SAY @26
  IF ~~ THEN DO ~TakePartyItemNum("MISC45",1)
TakePartyItemNum("MISC3P",1)
GiveItem("CBOVRSPR",LastTalkedToBy(Myself))
AddJournalEntry(@42,QUEST)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @27
  IF ~~ THEN DO ~SetGlobal("CbGetBookForCeeb","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @28
  IF ~~ THEN DO ~SetGlobal("CbGetBookForCeeb","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @29
  IF ~~ THEN DO ~SetGlobal("CbGetBookForCeeb","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @30
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 16
  SAY @31
  IF ~~ THEN EXIT
END

IF ~Global("CbGetBookForCeeb","GLOBAL",2)~ THEN BEGIN 17
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 1
  IF ~~ THEN REPLY @34 GOTO 18
  IF ~PartyHasItem("MISC45")
!PartyHasItem("MISC3P")~ THEN REPLY @35 GOTO 19
  IF ~!PartyHasItem("MISC45")
PartyHasItem("MISC3P")~ THEN REPLY @36 GOTO 19
  IF ~PartyHasItem("MISC45")
PartyHasItem("MISC3P")~ THEN REPLY @37 GOTO 20
END

IF ~~ THEN BEGIN 18
  SAY @38
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY @39
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20
  SAY @40
  IF ~~ THEN DO ~TakePartyItemNum("MISC45",1)
TakePartyItemNum("MISC3P",1)
GiveItem("CBOVRSPR",LastTalkedToBy(Myself))
AddJournalEntry(@42,QUEST)~ GOTO 12
END

IF ~GlobalGT("CbGetBookForCeeb","GLOBAL",2)~ THEN BEGIN 21
  SAY @41
  IF ~~ THEN EXIT
END
