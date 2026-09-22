import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow104Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^1 layer of FullLow104.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow104Encoded1
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 135) (.var 1)) (.mul (.num 45) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 70) (.var 3)) (.num 1200)) (.var 1)) (.mul
    (.add (.mul (.num 70) (.var 3)) (.num 887)) (.var 2))) (.var 1)) (.mul (.num 117) (.pow (.var
    2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 50) (.var
    3)) (.num 646)) (.var 3)) (.num 4758)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 125)
    (.var 3)) (.num 962)) (.var 3)) (.num 5501)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 100) (.var 3)) (.num 316)) (.var 3)) (.num 1640)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.num 25) (.pow (.var 3) 2)) (.num 77)) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 415) (.var 3)) (.num
    2874)) (.var 3)) (.num 11160)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1245) (.var 3))
    (.num 5922)) (.var 3)) (.num 18075)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1350) (.var 3)) (.num 3920)) (.var 3)) (.num 9075)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 625) (.var 3)) (.num 950)) (.var 3)) (.num 1391)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 105) (.var 3)) (.num 78)) (.var 3)) (.num 11))
    (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 1518) (.var 3)) (.num 7780)) (.var 3)) (.num 17646)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 5313) (.var 3)) (.num 20956)) (.var 3)) (.num 38532))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7171) (.var 3)) (.num 20952)) (.var
    3)) (.num 29785)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4645)
    (.var 3)) (.num 9804)) (.var 3)) (.num 9772)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1439) (.var 3)) (.num 2256)) (.var 3)) (.num 1314)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 170) (.var 3)) (.num 228)) (.var 3)) (.num 71))
    (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 3065) (.var 3)) (.num 13494)) (.var 3)) (.num
    19815)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12260) (.var 3)) (.num 45200)) (.var 3))
    (.num 56800)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 19680) (.var 3)) (.num
    60054)) (.var 3)) (.num 63017)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 16130) (.var 3)) (.num 40650)) (.var 3)) (.num 34542)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 7065) (.var 3)) (.num 14970)) (.var 3)) (.num 10012))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1550) (.var 3)) (.num 2900))
    (.var 3)) (.num 1539)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 130)
    (.var 3)) (.num 232)) (.var 3)) (.num 107)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 3590) (.var 3)) (.num 14302)) (.var 3)) (.num 15144)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 16155) (.var 3)) (.num 57098)) (.var 3)) (.num 54711)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 29956) (.var 3)) (.num 93630)) (.var 3)) (.num 80380)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 29456) (.var 3)) (.num 81548))
    (.var 3)) (.num 62189)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    16422) (.var 3)) (.num 40640)) (.var 3)) (.num 27418)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 5110) (.var 3)) (.num 11520)) (.var 3)) (.num 6915)) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 798) (.var 3)) (.num 1686)) (.var 3))
    (.num 920)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45) (.var 3))
    (.num 92)) (.var 3)) (.num 47)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 2258) (.var 3)) (.num 8198)) (.var 3)) (.num 6860)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 11290) (.var 3)) (.num 37760)) (.var 3)) (.num 29854)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 23719) (.var 3)) (.num 72980)) (.var 3)) (.num 54247)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27136) (.var 3)) (.num 76880))
    (.var 3)) (.num 53518)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    18287) (.var 3)) (.num 47890)) (.var 3)) (.num 31157)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 7303) (.var 3)) (.num 17804)) (.var 3)) (.num 10831)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1633) (.var 3)) (.num 3742)) (.var
    3)) (.num 2137)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 173) (.var
    3)) (.num 376)) (.var 3)) (.num 203)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 5) (.var 3)) (.num 10)) (.var 3)) (.num 5)) (.pow (.var 2) 8)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 564) (.var 3)) (.num 1916)) (.var 3)) (.num 1352)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3102) (.var 3)) (.num 9930)) (.var 3)) (.num 6828))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7284) (.var 3)) (.num 21910)) (.var
    3)) (.num 14626)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9513)
    (.var 3)) (.num 26836)) (.var 3)) (.num 17323)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 7534) (.var 3)) (.num 19914)) (.var 3)) (.num 12380)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3689) (.var 3)) (.num 9134)) (.var 3))
    (.num 5445)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1083) (.var 3))
    (.num 2510)) (.var 3)) (.num 1427)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 172) (.var 3)) (.num 372)) (.var 3)) (.num 200)) (.pow (.var 2) 7))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 11) (.var 3)) (.num 22)) (.var 3)) (.num 11)) (.pow (.var
    2) 8))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 4)) (.mul (.mul (.num 2) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1))
    (.mul (.num 20) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 3))
    (.num 740)) (.var 1)) (.mul (.add (.mul (.num 40) (.var 3)) (.num 564)) (.var 2))) (.var 1))
    (.mul (.num 84) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 40) (.var 3)) (.num 624)) (.var 3)) (.num 4190)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 100) (.var 3)) (.num 1008)) (.var 3)) (.num 5146)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 80) (.var 3)) (.num 424)) (.var 3)) (.num 1828)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 40)) (.var 3))
    (.num 172)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 552) (.var 3)) (.num 4384)) (.var 3)) (.num 14604)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1656) (.var 3)) (.num 9860)) (.var 3)) (.num 25668)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1796) (.var 3)) (.num 7680)) (.var 3))
    (.num 15570)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 832) (.var 3))
    (.num 2516)) (.var 3)) (.num 3846)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 140) (.var 3)) (.num 312)) (.var 3)) (.num 340)) (.pow (.var 2) 4)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    3292) (.var 3)) (.num 18060)) (.var 3)) (.num 35352)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 11522) (.var 3)) (.num 52084)) (.var 3)) (.num 83698)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 15614) (.var 3)) (.num 57728)) (.var 3)) (.num 75574)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10230) (.var 3)) (.num 31172)) (.var 3))
    (.num 32922)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3246) (.var
    3)) (.num 8396)) (.var 3)) (.num 7154)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 400) (.var 3)) (.num 928)) (.var 3)) (.num 660)) (.pow (.var 2) 5)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 11126) (.var 3)) (.num 47756)) (.var 3)) (.num 62521)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 44504) (.var 3)) (.num 167628)) (.var 3)) (.num 190489)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 71946) (.var 3)) (.num 238020)) (.var 3)) (.num
    234389)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60074) (.var 3))
    (.num 175956)) (.var 3)) (.num 150433)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 27296) (.var 3)) (.num 71976)) (.var 3)) (.num 53914)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 6390) (.var 3)) (.num 15560)) (.var 3)) (.num 10422))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 600) (.var 3)) (.num 1392))
    (.var 3)) (.num 860)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 23396) (.var 3)) (.num
    83398)) (.var 3)) (.num 80861)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 105282) (.var
    3)) (.num 343912)) (.var 3)) (.num 303977)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 197064) (.var 3)) (.num 591216)) (.var 3)) (.num 476793)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 198408) (.var 3)) (.num 549704)) (.var 3)) (.num 405949))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 115720) (.var 3)) (.num
    298790)) (.var 3)) (.num 203464)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 38938) (.var 3)) (.num 94848)) (.var 3)) (.num 60180)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 6948) (.var 3)) (.num 16188)) (.var 3)) (.num 9692)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 500) (.var 3)) (.num 1128)) (.var
    3)) (.num 644)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 31379) (.var 3))
    (.num 95516)) (.var 3)) (.num 73917)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 156895)
    (.var 3)) (.num 451388)) (.var 3)) (.num 330454)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 333016) (.var 3)) (.num 907112)) (.var 3)) (.num 628756)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 390694) (.var 3)) (.num 1010868)) (.var 3))
    (.num 664918)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 275975) (.var
    3)) (.num 681460)) (.var 3)) (.num 426931)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 119455) (.var 3)) (.num 283136)) (.var 3)) (.num 169740)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30618) (.var 3)) (.num 70072)) (.var 3))
    (.num 40394)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4164) (.var
    3)) (.num 9240)) (.var 3)) (.num 5138)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 220) (.var 3)) (.num 472)) (.var 3)) (.num 252)) (.pow (.var 2) 8)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 26192) (.var 3)) (.num 68998)) (.var 3)) (.num
    44846)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 144056) (.var 3)) (.num 367034)) (.var
    3)) (.num 231600)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 341420) (.var 3))
    (.num 842102)) (.var 3)) (.num 515988)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 455970) (.var 3)) (.num 1090412)) (.var 3)) (.num 649346)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 376252) (.var 3)) (.num 874234)) (.var 3)) (.num
    506658)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 197414) (.var 3))
    (.num 446726)) (.var 3)) (.num 252358)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 65010) (.var 3)) (.num 143562)) (.var 3)) (.num 79154)) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 12640) (.var 3)) (.num 27260)) (.var 3)) (.num 14672))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1246) (.var 3)) (.num 2616))
    (.var 3)) (.num 1370)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40)
    (.var 3)) (.num 80)) (.var 3)) (.num 40)) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 12455) (.var 3)) (.num 28580)) (.var 3)) (.num 16125))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 74730) (.var 3)) (.num 168882)) (.var 3)) (.num
    94152)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 195392) (.var 3)) (.num
    434992)) (.var 3)) (.num 239600)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 291935) (.var 3)) (.num 640558)) (.var 3)) (.num 348623)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 274395) (.var 3)) (.num 593764)) (.var 3)) (.num 319369))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 168000) (.var 3)) (.num
    358718)) (.var 3)) (.num 190718)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 66824) (.var 3)) (.num 140820)) (.var 3)) (.num 73996)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 16569) (.var 3)) (.num 34438)) (.var 3)) (.num 17869))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2302) (.var 3)) (.num 4708))
    (.var 3)) (.num 2406)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 134)
    (.var 3)) (.num 268)) (.var 3)) (.num 134)) (.pow (.var 2) 9))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2598) (.var 3)) (.num 5196)) (.var 3)) (.num
    2598)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16887) (.var 3)) (.num 33774)) (.var 3))
    (.num 16887)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48236) (.var 3)) (.num
    96472)) (.var 3)) (.num 48236)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 79541) (.var 3)) (.num 159082)) (.var 3)) (.num 79541)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 83558) (.var 3)) (.num 167116)) (.var 3)) (.num 83558))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 58089) (.var 3)) (.num
    116178)) (.var 3)) (.num 58089)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 26776) (.var 3)) (.num 53552)) (.var 3)) (.num 26776)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 7907) (.var 3)) (.num 15814)) (.var 3)) (.num 7907)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1360) (.var 3)) (.num 2720)) (.var
    3)) (.num 1360)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 104) (.var
    3)) (.num 208)) (.var 3)) (.num 104)) (.pow (.var 2) 9))) (.pow (.var 1) 2)))) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.mul
    (.mul (.num 4) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.pow (.var 0)
    2)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 24)) (.var 3)) (.num
    20)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num
    28)) (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 3))
    (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9)
    (.var 0)) (.mul (.neg (.num 9)) (.var 2))) (.var 0)) (.mul (.add (.mul (.num 5) (.pow (.var 3)
    2)) (.num 2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11) (.var 3))
    (.num 38)) (.var 3)) (.num 36)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 7) (.var 3)) (.num 24)) (.var 3)) (.num 17)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2) 5)))) (.pow
    (.var 0) 4))) (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 2) (.var 0)) (.mul (.num 4) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 16)) (.var 3)) (.num 8)) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3)) (.num 10))
    (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 8)) (.var
    3)) (.num 4)) (.pow (.var 2) 5))) (.pow (.var 0) 2))) (.pow (.var 0) 2))) (.mul (.mul (.num 4)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11) (.var 0)) (.mul
    (.num 9) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7) (.var 3)) (.num 4)) (.var
    3)) (.neg (.num 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 19)
    (.var 3)) (.num 34)) (.var 3)) (.num 18)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 17) (.var 3)) (.num 40)) (.var 3)) (.num 23)) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 5) (.var 3)) (.num 10)) (.var 3)) (.num 5)) (.pow (.var 2)
    5))) (.var 0))) (.pow (.var 0) 3))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.mul (.mul (.num 3) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 12) (.var 0)) (.mul (.add (.mul (.num 8) (.var 3)) (.num 134)) (.var 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 84)) (.var 3)) (.num 430)) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 190) (.var 3)) (.num 554)) (.var
    3)) (.num 892)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 802) (.var
    3)) (.num 2072)) (.var 3)) (.num 1796)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1674) (.var 3)) (.num 4172)) (.var 3)) (.num 2886)) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1918) (.var 3)) (.num 4624)) (.var 3)) (.num 2878)) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1216) (.var 3)) (.num 2794)) (.var
    3)) (.num 1608)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 392) (.var
    3)) (.num 844)) (.var 3)) (.num 452)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 48) (.var 3)) (.num 96)) (.var 3)) (.num 48)) (.pow (.var 2) 9))) (.pow (.var 0)
    2))) (.pow (.var 0) 2)) (.mul (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 66) (.var 0)) (.mul
    (.add (.mul (.num 36) (.var 3)) (.num 635)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 56) (.var 3)) (.num 226)) (.var 3)) (.num 1482)) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 555) (.var 3)) (.num 1120)) (.var 3)) (.num 1955)) (.pow (.var
    2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1972) (.var 3)) (.num 4278)) (.var 3))
    (.num 3654)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3476) (.var 3))
    (.num 8562)) (.var 3)) (.num 6327)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 3354) (.var 3)) (.num 8716)) (.var 3)) (.num 5964)) (.pow (.var 2) 6))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1773) (.var 3)) (.num 4482)) (.var 3)) (.num 2807)) (.pow
    (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 466) (.var 3)) (.num 1068)) (.var
    3)) (.num 602)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 44) (.var
    3)) (.num 88)) (.var 3)) (.num 44)) (.pow (.var 2) 9))) (.var 0))) (.pow (.var 0) 3))) (.mul
    (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 0)) (.mul (.add (.mul (.num 4) (.var 3))
    (.num 74)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 44))
    (.var 3)) (.num 275)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 96)
    (.var 3)) (.num 270)) (.var 3)) (.num 551)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 409) (.var 3)) (.num 932)) (.var 3)) (.num 831)) (.pow (.var 2) 4))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 867) (.var 3)) (.num 1830)) (.var 3)) (.num 1091))
    (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1018) (.var 3)) (.num 2084))
    (.var 3)) (.num 1089)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 670)
    (.var 3)) (.num 1354)) (.var 3)) (.num 685)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 229) (.var 3)) (.num 460)) (.var 3)) (.num 231)) (.pow (.var 2) 8))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 31) (.var 3)) (.num 62)) (.var 3)) (.num 31)) (.pow
    (.var 2) 9))) (.pow (.var 0) 3))) (.pow (.var 0) 1))) (.mul (.mul (.num 3) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 39) (.var 0)) (.mul (.add (.mul (.num 22) (.var 3)) (.num 423)) (.var 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 36) (.var 3)) (.num 164)) (.var 3)) (.num 1255)) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 376) (.var 3)) (.num 792)) (.var
    3)) (.num 1850)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1408) (.var
    3)) (.num 2680)) (.var 3)) (.num 2271)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 2643) (.var 3)) (.num 5286)) (.var 3)) (.num 3102)) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 2756) (.var 3)) (.num 5802)) (.var 3)) (.num 3201)) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1606) (.var 3)) (.num 3446)) (.var
    3)) (.num 1866)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 480) (.var
    3)) (.num 1010)) (.var 3)) (.num 530)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 55) (.var 3)) (.num 110)) (.var 3)) (.num 55)) (.pow (.var 2) 9))) (.pow (.var 0)
    2))) (.pow (.var 0) 2))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow1041.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow1041.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow1041.leading0 e g v + f * FullLow1041.leading1 e g v +
        f^2 * FullLow1041.remainder e f g v := by
  have hden : denominatorOne FullLow1041.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow1041.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow1041.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 68719476736 17 12 2) lhs =
      value (Encoding4.vars 68719476736 17 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 68719476736 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 17 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 17 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow1041.source e f g v =
      FullLow1041.leading0 e g v + f * FullLow1041.leading1 e g v +
        f^2 * FullLow1041.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 68719476736 17 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow104Encoded1

namespace SPR.N6.Tail.CoreEndpoint.FullLow104
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition1 (e f g v : ℝ) :
    FullLow1041.source e f g v =
      FullLow1041.leading0 e g v + f * FullLow1041.leading1 e g v +
        f^2 * FullLow1041.remainder e f g v :=
  FullLow104Encoded1.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow104
