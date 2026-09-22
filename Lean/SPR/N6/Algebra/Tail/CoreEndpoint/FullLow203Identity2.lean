import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow203Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^2 layer of FullLow203.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow203Encoded2
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 450) (.var 1)) (.mul (.num 150) (.var
    2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 160) (.var 3)) (.num 4230)) (.var 1))
    (.mul (.add (.mul (.num 160) (.var 3)) (.num 3020)) (.var 2))) (.var 1)) (.mul (.num 390)
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 60) (.var 3)) (.num 1376)) (.var 3)) (.num 17765)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 150) (.var 3)) (.num 1832)) (.var 3)) (.num 19276)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 120) (.var 3)) (.num 356)) (.var 3)) (.num 5129)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.neg (.num 100))) (.var 3))
    (.num 118)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 588) (.var 3)) (.num 5832)) (.var 3)) (.num 43505)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1764) (.var 3)) (.num 10224)) (.var 3)) (.num 63820))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1914) (.var 3)) (.num 4420)) (.var
    3)) (.num 26449)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 888) (.var
    3)) (.neg (.num 204))) (.var 3)) (.num 1668)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 150) (.var 3)) (.neg (.num 232))) (.var 3)) (.neg (.num 466))) (.pow (.var
    2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 2580) (.var 3)) (.num 15960)) (.var 3)) (.num 70491)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 9030) (.var 3)) (.num 37164)) (.var 3)) (.num 135518)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12210) (.var 3)) (.num 28664)) (.var 3)) (.num
    84085)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7950) (.var 3))
    (.num 7836)) (.var 3)) (.num 15484)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 2490) (.var 3)) (.num 336)) (.var 3)) (.neg (.num 1504))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 300) (.var 3)) (.neg (.num 40))) (.var 3)) (.neg
    (.num 430))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6312) (.var 3)) (.num 30528)) (.var 3))
    (.num 80845)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 25248) (.var 3)) (.num 92928))
    (.var 3)) (.num 203849)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40662) (.var
    3)) (.num 108626)) (.var 3)) (.num 189076)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 33618) (.var 3)) (.num 62298)) (.var 3)) (.num 77953)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14982) (.var 3)) (.num 19062)) (.var 3)) (.num
    13251)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3390) (.var 3))
    (.num 3262)) (.var 3)) (.num 556)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 300) (.var 3)) (.num 272)) (.var 3)) (.neg (.num 14))) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 9108) (.var 3)) (.num 37828)) (.var 3)) (.num 64291)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 40986) (.var 3)) (.num 143296)) (.var 3)) (.num 208943)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 76332) (.var 3)) (.num 222168)) (.var 3))
    (.num 272360)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 75894) (.var
    3)) (.num 183314)) (.var 3)) (.num 184063)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 43230) (.var 3)) (.num 87750)) (.var 3)) (.num 70086)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13974) (.var 3)) (.num 24694)) (.var 3)) (.num
    15428)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2334) (.var 3))
    (.num 3794)) (.var 3)) (.num 1895)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 150) (.var 3)) (.num 236)) (.var 3)) (.num 98)) (.pow (.var 2) 7)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 7257) (.var 3)) (.num 25734)) (.var 3)) (.num 31089))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36285) (.var 3)) (.num 115740)) (.var 3)) (.num
    125016)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 76626) (.var 3)) (.num
    219786)) (.var 3)) (.num 210888)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 88794) (.var 3)) (.num 229960)) (.var 3)) (.num 195164)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 61299) (.var 3)) (.num 144756)) (.var 3)) (.num 108615))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 25515) (.var 3)) (.num
    55806)) (.var 3)) (.num 37214)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 6120) (.var 3)) (.num 12632)) (.var 3)) (.num 7564)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 738) (.var 3)) (.num 1458)) (.var 3)) (.num 788)) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 56)) (.var 3)) (.num
    26)) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2430) (.var 3))
    (.num 7068)) (.var 3)) (.num 6678)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13365) (.var
    3)) (.num 36594)) (.var 3)) (.num 31851)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 31563) (.var 3)) (.num 81524)) (.var 3)) (.num 65267)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 41796) (.var 3)) (.num 102250)) (.var 3)) (.num 75358))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33948) (.var 3)) (.num
    79148)) (.var 3)) (.num 53876)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 17325) (.var 3)) (.num 38804)) (.var 3)) (.num 24525)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 5427) (.var 3)) (.num 11782)) (.var 3)) (.num 6957)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 954) (.var 3)) (.num 2024)) (.var
    3)) (.num 1122)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var
    3)) (.num 150)) (.var 3)) (.num 78)) (.pow (.var 2) 8))) (.var 1)))) (.pow (.mul (.add (.var
    0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)) (.mul (.mul (.num 3) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 270) (.var 1)) (.mul (.num 90) (.var 2))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.num 140) (.var 3)) (.num 3300)) (.var 1)) (.mul (.add (.mul
    (.num 140) (.var 3)) (.num 2422)) (.var 2))) (.var 1)) (.mul (.num 342) (.pow (.var 2) 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 100) (.var 3))
    (.num 1796)) (.var 3)) (.num 18635)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 250) (.var
    3)) (.num 2652)) (.var 3)) (.num 21348)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 200) (.var 3)) (.num 856)) (.var 3)) (.num 6709)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.num 50) (.pow (.var 3) 2)) (.num 456)) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1210) (.var 3)) (.num
    11388)) (.var 3)) (.num 64677)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3630) (.var 3))
    (.num 23092)) (.var 3)) (.num 103128)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3940) (.var 3)) (.num 14988)) (.var 3)) (.num 53523)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1830) (.var 3)) (.num 3552)) (.var 3)) (.num 9784)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 310) (.var 3)) (.num 268)) (.var
    3)) (.num 412)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 6708) (.var 3)) (.num 45720)) (.var 3)) (.num
    155956)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 23478) (.var 3)) (.num 120462)) (.var
    3)) (.num 329941)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 31806) (.var 3))
    (.num 118078)) (.var 3)) (.num 254911)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 20820) (.var 3)) (.num 54614)) (.var 3)) (.num 88381)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 6594) (.var 3)) (.num 12542)) (.var 3)) (.num 13855))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 810) (.var 3)) (.num 1264))
    (.var 3)) (.num 900)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 21922) (.var 3)) (.num 124572))
    (.var 3)) (.num 277072)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 87688) (.var 3)) (.num
    406784)) (.var 3)) (.num 755222)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    141650) (.var 3)) (.num 530962)) (.var 3)) (.num 813176)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 118042) (.var 3)) (.num 358374)) (.var 3)) (.num 445482)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53426) (.var 3)) (.num 134634))
    (.var 3)) (.num 134174)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    12418) (.var 3)) (.num 27406)) (.var 3)) (.num 22218)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1150) (.var 3)) (.num 2396)) (.var 3)) (.num 1680)) (.pow (.var
    2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 45760) (.var 3)) (.num 231034)) (.var 3)) (.num
    364706)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 205920) (.var 3)) (.num 898974)) (.var
    3)) (.num 1240326)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 385244) (.var 3))
    (.num 1453804)) (.var 3)) (.num 1748090)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 387394) (.var 3)) (.num 1272568)) (.var 3)) (.num 1332906)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 225418) (.var 3)) (.num 655522)) (.var 3))
    (.num 601167)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 75540) (.var
    3)) (.num 199854)) (.var 3)) (.num 162848)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 13382) (.var 3)) (.num 33340)) (.var 3)) (.num 24729)) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 950) (.var 3)) (.num 2304)) (.var 3)) (.num
    1592)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 61706) (.var 3)) (.num
    283052)) (.var 3)) (.num 342494)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 308530) (.var
    3)) (.num 1273074)) (.var 3)) (.num 1402978)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 655140) (.var 3)) (.num 2437996)) (.var 3)) (.num 2448644)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 769380) (.var 3)) (.num 2599436)) (.var 3))
    (.num 2386690)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 544464)
    (.var 3)) (.num 1689080)) (.var 3)) (.num 1426357)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 236388) (.var 3)) (.num 683846)) (.var 3)) (.num 536032)) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60892) (.var 3)) (.num 167192)) (.var
    3)) (.num 122981)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8354)
    (.var 3)) (.num 22120)) (.var 3)) (.num 15392)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 450) (.var 3)) (.num 1156)) (.var 3)) (.num 756)) (.pow (.var 2) 8))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 51556) (.var 3)) (.num 216962)) (.var
    3)) (.num 213802)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 283558) (.var 3)) (.num
    1102708)) (.var 3)) (.num 1021926)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    673394) (.var 3)) (.num 2426648)) (.var 3)) (.num 2116814)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 903588) (.var 3)) (.num 3032696)) (.var 3)) (.num
    2495996)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 751972) (.var 3))
    (.num 2367930)) (.var 3)) (.num 1845672)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 400064) (.var 3)) (.num 1192686)) (.var 3)) (.num 884589)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 134700) (.var 3)) (.num 383774)) (.var 3))
    (.num 272121)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27172) (.var
    3)) (.num 74530)) (.var 3)) (.num 50643)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2870) (.var 3)) (.num 7578)) (.var 3)) (.num 4907)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 110) (.var 3)) (.num 272)) (.var 3)) (.num 162))
    (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    23934) (.var 3)) (.num 93840)) (.var 3)) (.num 78666)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 143604) (.var 3)) (.num 529836)) (.var 3)) (.num 427884)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 377048) (.var 3)) (.num 1311524)) (.var 3)) (.num 1020352))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 568870) (.var 3)) (.num
    1871382)) (.var 3)) (.num 1403614)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 544044) (.var 3)) (.num 1699756)) (.var 3)) (.num 1230710)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 342600) (.var 3)) (.num 1021376)) (.var 3))
    (.num 714964)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 142498) (.var
    3)) (.num 407042)) (.var 3)) (.num 275712)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 38004) (.var 3)) (.num 104192)) (.var 3)) (.num 68214)) (.pow (.var 2) 7)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6014) (.var 3)) (.num 15754)) (.var 3)) (.num
    9906)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 470) (.var 3)) (.num
    1150)) (.var 3)) (.num 680)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    10) (.var 3)) (.num 20)) (.var 3)) (.num 10)) (.pow (.var 2) 10)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4644) (.var 3)) (.num 17484)) (.var 3))
    (.num 12840)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30186) (.var 3)) (.num 108192))
    (.var 3)) (.num 78006)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 86804) (.var
    3)) (.num 296370)) (.var 3)) (.num 209566)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 145376) (.var 3)) (.num 473448)) (.var 3)) (.num 328072)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 156970) (.var 3)) (.num 488442)) (.var 3))
    (.num 331472)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 114114) (.var
    3)) (.num 339710)) (.var 3)) (.num 225596)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 56508) (.var 3)) (.num 160878)) (.var 3)) (.num 104370)) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18786) (.var 3)) (.num 50944)) (.var 3)) (.num
    32158)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4000) (.var 3))
    (.num 10214)) (.var 3)) (.num 6214)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 490) (.var 3)) (.num 1146)) (.var 3)) (.num 656)) (.pow (.var 2) 9))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 26) (.var 3)) (.num 52)) (.var 3)) (.num 26)) (.pow (.var
    2) 10))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 2))) (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 30) (.var 1)) (.mul (.num 10) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.num 20) (.var 3)) (.num 470)) (.var 1)) (.mul (.add (.mul (.num 20) (.var 3)) (.num
    354)) (.var 2))) (.var 1)) (.mul (.num 54) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 384)) (.var 3)) (.num
    3454)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50) (.var 3)) (.num 608)) (.var 3)) (.num
    4145)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 244))
    (.var 3)) (.num 1461)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10)
    (.var 3)) (.num 20)) (.var 3)) (.num 140)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 352) (.var 3)) (.num 3460)) (.var
    3)) (.num 15950)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1056) (.var 3)) (.num 7590))
    (.var 3)) (.num 27048)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1146) (.var
    3)) (.num 5712)) (.var 3)) (.num 15943)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 532) (.var 3)) (.num 1794)) (.var 3)) (.num 3843)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 90) (.var 3)) (.num 212)) (.var 3)) (.num 328)) (.pow
    (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 2790) (.var 3)) (.num 19032)) (.var 3)) (.num 52206)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 9765) (.var 3)) (.num 53502)) (.var 3)) (.num 117852)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13255) (.var 3)) (.num 57756)) (.var 3))
    (.num 102045)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8725) (.var
    3)) (.num 30486)) (.var 3)) (.num 42867)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2795) (.var 3)) (.num 8092)) (.var 3)) (.num 9030)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 350) (.var 3)) (.num 892)) (.var 3)) (.num 812))
    (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 13110) (.var 3)) (.num 70212)) (.var 3)) (.num
    128241)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 52440) (.var 3)) (.num 240398)) (.var
    3)) (.num 369779)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 85029) (.var 3))
    (.num 334284)) (.var 3)) (.num 434172)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 71547) (.var 3)) (.num 243946)) (.var 3)) (.num 268884)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 32987) (.var 3)) (.num 99692)) (.var 3)) (.num 94428))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7909) (.var 3)) (.num
    21864)) (.var 3)) (.num 18248)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 770) (.var 3)) (.num 2020)) (.var 3)) (.num 1540)) (.pow (.var 2) 6)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 40450) (.var 3)) (.num 180670)) (.var 3)) (.num 240617)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 182025) (.var 3)) (.num 727442)) (.var 3)) (.num 854520)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 342238) (.var 3)) (.num 1229384)) (.var 3))
    (.num 1280583)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 348383)
    (.var 3)) (.num 1135458)) (.var 3)) (.num 1057603)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 207321) (.var 3)) (.num 621810)) (.var 3)) (.num 524419)) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72070) (.var 3)) (.num 202512)) (.var
    3)) (.num 157266)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13519)
    (.var 3)) (.num 36288)) (.var 3)) (.num 26444)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1050) (.var 3)) (.num 2740)) (.var 3)) (.num 1904)) (.pow (.var 2)
    7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 85573) (.var 3)) (.num 328376)) (.var 3))
    (.num 341965)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 427865) (.var 3)) (.num 1516372))
    (.var 3)) (.num 1447466)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 913630)
    (.var 3)) (.num 3003968)) (.var 3)) (.num 2642187)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1087330) (.var 3)) (.num 3340050)) (.var 3)) (.num 2726587)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 788030) (.var 3)) (.num 2282524))
    (.var 3)) (.num 1745137)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    355468) (.var 3)) (.num 981314)) (.var 3)) (.num 710018)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 97105) (.var 3)) (.num 258296)) (.var 3)) (.num 178682)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14585) (.var 3)) (.num 37728))
    (.var 3)) (.num 25150)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 910)
    (.var 3)) (.num 2300)) (.var 3)) (.num 1480)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 125508) (.var 3)) (.num 419750)) (.var 3)) (.num 359405)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 690294) (.var 3)) (.num 2182750)) (.var 3)) (.num
    1764133)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1648472) (.var 3)) (.num
    4946324)) (.var 3)) (.num 3788193)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 2240919) (.var 3)) (.num 6412162)) (.var 3)) (.num 4676724)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1908010) (.var 3)) (.num 5237630)) (.var 3))
    (.num 3659104)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1052471)
    (.var 3)) (.num 2789716)) (.var 3)) (.num 1878176)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 374393) (.var 3)) (.num 964212)) (.var 3)) (.num 629051)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 82146) (.var 3)) (.num 206552)) (.var
    3)) (.num 131076)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9937)
    (.var 3)) (.num 24436)) (.var 3)) (.num 15084)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 490) (.var 3)) (.num 1172)) (.var 3)) (.num 698)) (.pow (.var 2) 9))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 125875) (.var 3)) (.num
    369436)) (.var 3)) (.num 269166)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 755250) (.var
    3)) (.num 2133978)) (.var 3)) (.num 1499571)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1993171) (.var 3)) (.num 5435936)) (.var 3)) (.num 3693157)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3042730) (.var 3)) (.num 8036058)) (.var 3))
    (.num 5294375)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2969763)
    (.var 3)) (.num 7623676)) (.var 3)) (.num 4886894)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1930422) (.var 3)) (.num 4835128)) (.var 3)) (.num 3025601)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 841968) (.var 3)) (.num 2064596))
    (.var 3)) (.num 1264706)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    241143) (.var 3)) (.num 580220)) (.var 3)) (.num 348490)) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 42713) (.var 3)) (.num 100852)) (.var 3)) (.num 59346)) (.pow
    (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4095) (.var 3)) (.num 9444)) (.var
    3)) (.num 5414)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 150) (.var
    3)) (.num 332)) (.var 3)) (.num 182)) (.pow (.var 2) 10)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 82638) (.var 3)) (.num 213480)) (.var 3))
    (.num 135396)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 537147) (.var 3)) (.num 1355508))
    (.var 3)) (.num 842346)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1551696)
    (.var 3)) (.num 3831422)) (.var 3)) (.num 2335796)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2625711) (.var 3)) (.num 6356102)) (.var 3)) (.num 3807368)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2885502) (.var 3)) (.num 6862246))
    (.var 3)) (.num 4045682)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2154852) (.var 3)) (.num 5044702)) (.var 3)) (.num 2931895)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1109546) (.var 3)) (.num 2561150)) (.var 3)) (.num
    1469152)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 390178) (.var 3))
    (.num 888716)) (.var 3)) (.num 503384)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 90313) (.var 3)) (.num 202830)) (.var 3)) (.num 113321)) (.pow (.var 2) 8))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 12696) (.var 3)) (.num 28008)) (.var 3)) (.num 15373))
    (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 909) (.var 3)) (.num 1948))
    (.var 3)) (.num 1039)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20)
    (.var 3)) (.num 40)) (.var 3)) (.num 20)) (.pow (.var 2) 11)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 32112) (.var 3)) (.num 73044))
    (.var 3)) (.num 40932)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 224784) (.var 3)) (.num
    505692)) (.var 3)) (.num 280908)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    705267) (.var 3)) (.num 1570446)) (.var 3)) (.num 865179)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1309410) (.var 3)) (.num 2888586)) (.var 3)) (.num 1579176))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1598390) (.var 3)) (.num
    3496486)) (.var 3)) (.num 1898096)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1346377) (.var 3)) (.num 2922866)) (.var 3)) (.num 1576489)) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 797531) (.var 3)) (.num 1719182)) (.var 3))
    (.num 921651)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 331340) (.var
    3)) (.num 709260)) (.var 3)) (.num 377920)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 94151) (.var 3)) (.num 199966)) (.var 3)) (.num 105815)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17270) (.var 3)) (.num 36302)) (.var 3)) (.num
    19032)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1809) (.var 3))
    (.num 3740)) (.var 3)) (.num 1931)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 79) (.var 3)) (.num 158)) (.var 3)) (.num 79)) (.pow (.var 2) 11))) (.var 1)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5616)
    (.var 3)) (.num 11232)) (.var 3)) (.num 5616)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    42120) (.var 3)) (.num 84240)) (.var 3)) (.num 42120)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 142614) (.var 3)) (.num 285228)) (.var 3)) (.num 142614)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 288171) (.var 3)) (.num 576342)) (.var 3))
    (.num 288171)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 386724) (.var
    3)) (.num 773448)) (.var 3)) (.num 386724)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 362505) (.var 3)) (.num 725010)) (.var 3)) (.num 362505)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 242576) (.var 3)) (.num 485152)) (.var 3))
    (.num 242576)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 116046) (.var
    3)) (.num 232092)) (.var 3)) (.num 116046)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 38944) (.var 3)) (.num 77888)) (.var 3)) (.num 38944)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8741) (.var 3)) (.num 17482)) (.var 3)) (.num
    8741)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1182) (.var 3)) (.num
    2364)) (.var 3)) (.num 1182)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 73) (.var 3)) (.num 146)) (.var 3)) (.num 73)) (.pow (.var 2) 11))) (.pow (.var 1) 2))))
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2)
    (.pow (.var 0) 2)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num
    4)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 24))
    (.var 3)) (.num 20)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10)
    (.var 3)) (.num 28)) (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 4) (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0)))
    (.pow (.var 0) 1)) (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 9) (.var 0)) (.mul (.neg (.num 9)) (.var 2))) (.var 0)) (.mul (.add (.mul (.num 5)
    (.pow (.var 3) 2)) (.num 2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    11) (.var 3)) (.num 38)) (.var 3)) (.num 36)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 7) (.var 3)) (.num 24)) (.var 3)) (.num 17)) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2)
    5)))) (.pow (.var 0) 2))) (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 15) (.var 0)) (.mul (.neg (.num 24)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 3) (.var 3)) (.neg (.num 10))) (.var 3)) (.neg (.num 2))) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 26)) (.var 3)) (.num 26)) (.pow (.var
    2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 8)) (.var 3)) (.num
    5)) (.pow (.var 2) 4)))) (.pow (.var 0) 3))) (.mul (.num 6) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.mul (.num 4) (.var 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 16)) (.var 3)) (.num 8))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20))
    (.var 3)) (.num 10)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.pow (.var 0) 2)))) (.mul (.mul
    (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11) (.var
    0)) (.mul (.num 9) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7) (.var 3)) (.num
    4)) (.var 3)) (.neg (.num 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 19) (.var 3)) (.num 34)) (.var 3)) (.num 18)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 17) (.var 3)) (.num 40)) (.var 3)) (.num 23)) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 3)) (.num 10)) (.var 3)) (.num 5))
    (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 1))) (.mul (.mul (.num 6) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 24) (.var 0)) (.mul (.neg (.num 3)) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.neg (.num 10))) (.var 3)) (.neg
    (.num 22))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 17) (.var 3))
    (.num 32)) (.var 3)) (.num 22)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 10) (.var 3)) (.num 28)) (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2) 5)))) (.pow
    (.var 0) 2))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.add (.mul (.mul
    (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 6) (.var 0)) (.mul (.add (.mul (.num 4) (.var 3)) (.num
    60)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 40)) (.var
    3)) (.num 157)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 94) (.var
    3)) (.num 284)) (.var 3)) (.num 357)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 393) (.var 3)) (.num 1136)) (.var 3)) (.num 989)) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 807) (.var 3)) (.num 2306)) (.var 3)) (.num 1755)) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 900) (.var 3)) (.num 2448)) (.var
    3)) (.num 1667)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 546) (.var
    3)) (.num 1356)) (.var 3)) (.num 827)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 163) (.var 3)) (.num 360)) (.var 3)) (.num 197)) (.pow (.var 2) 8))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 17) (.var 3)) (.num 34)) (.var 3)) (.num 17)) (.pow (.var
    2) 9))) (.var 0))) (.pow (.var 0) 1)) (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 27) (.var 0))
    (.mul (.add (.mul (.num 14) (.var 3)) (.num 226)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 20) (.var 3)) (.num 66)) (.var 3)) (.num 352)) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 181) (.var 3)) (.num 314)) (.var 3)) (.num 346)) (.pow (.var 2)
    3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 580) (.var 3)) (.num 1384)) (.var 3)) (.num
    1291)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 893) (.var 3)) (.num
    2728)) (.var 3)) (.num 2453)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 716) (.var 3)) (.num 2382)) (.var 3)) (.num 1942)) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 291) (.var 3)) (.num 930)) (.var 3)) (.num 676)) (.pow (.var 2)
    7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 52) (.var 3)) (.num 144)) (.var 3)) (.num
    92)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 6))
    (.var 3)) (.num 3)) (.pow (.var 2) 9)))) (.pow (.var 0) 2))) (.mul (.mul (.num 1) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45)
    (.var 0)) (.mul (.add (.mul (.num 16) (.var 3)) (.num 329)) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 12) (.var 3)) (.num 26)) (.var 3)) (.num 272)) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 105) (.var 3)) (.neg (.num 18))) (.var 3)) (.neg
    (.num 276))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 321) (.var 3))
    (.num 462)) (.var 3)) (.num 398)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 456) (.var 3)) (.num 1330)) (.var 3)) (.num 1399)) (.pow (.var 2) 5))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 318) (.var 3)) (.num 1076)) (.var 3)) (.num 962)) (.pow (.var 2)
    6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 99) (.var 3)) (.num 300)) (.var 3)) (.num
    224)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num
    24)) (.var 3)) (.num 15)) (.pow (.var 2) 8)))) (.pow (.var 0) 3))) (.mul (.num 3) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 12) (.var 0)) (.mul (.add (.mul (.num 8) (.var 3)) (.num 134)) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 84)) (.var 3)) (.num 430))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 190) (.var 3)) (.num 554))
    (.var 3)) (.num 892)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 802)
    (.var 3)) (.num 2072)) (.var 3)) (.num 1796)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1674) (.var 3)) (.num 4172)) (.var 3)) (.num 2886)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1918) (.var 3)) (.num 4624)) (.var 3)) (.num
    2878)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1216) (.var 3)) (.num
    2794)) (.var 3)) (.num 1608)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 392) (.var 3)) (.num 844)) (.var 3)) (.num 452)) (.pow (.var 2) 8))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 48) (.var 3)) (.num 96)) (.var 3)) (.num 48)) (.pow (.var 2)
    9))) (.pow (.var 0) 2)))) (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
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
    3)) (.num 88)) (.var 3)) (.num 44)) (.pow (.var 2) 9))) (.var 0))) (.pow (.var 0) 1))) (.mul
    (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 144) (.var 0)) (.mul (.add (.mul (.num 60) (.var 3)) (.num
    1215)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 64) (.var 3)) (.num 200))
    (.var 3)) (.num 1957)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 575)
    (.var 3)) (.num 488)) (.var 3)) (.num 828)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1817) (.var 3)) (.num 2804)) (.var 3)) (.num 1990)) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2743) (.var 3)) (.num 6526)) (.var 3)) (.num
    5313)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2137) (.var 3)) (.num
    6116)) (.var 3)) (.num 4755)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 828) (.var 3)) (.num 2422)) (.var 3)) (.num 1706)) (.pow (.var 2) 7))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 134) (.var 3)) (.num 356)) (.var 3)) (.num 222)) (.pow (.var 2)
    8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 12)) (.var 3)) (.num 6))
    (.pow (.var 2) 9)))) (.pow (.var 0) 2))) (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 39) (.var
    0)) (.mul (.add (.mul (.num 22) (.var 3)) (.num 423)) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 36) (.var 3)) (.num 164)) (.var 3)) (.num 1255)) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 376) (.var 3)) (.num 792)) (.var 3)) (.num 1850))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1408) (.var 3)) (.num 2680))
    (.var 3)) (.num 2271)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2643)
    (.var 3)) (.num 5286)) (.var 3)) (.num 3102)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 2756) (.var 3)) (.num 5802)) (.var 3)) (.num 3201)) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1606) (.var 3)) (.num 3446)) (.var 3)) (.num
    1866)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 480) (.var 3)) (.num
    1010)) (.var 3)) (.num 530)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    55) (.var 3)) (.num 110)) (.var 3)) (.num 55)) (.pow (.var 2) 9))) (.pow (.var 0) 2)))) (.mul
    (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 105) (.var 0)) (.mul (.add (.mul (.num 48) (.var 3))
    (.num 1009)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num
    228)) (.var 3)) (.num 2321)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    569) (.var 3)) (.num 714)) (.var 3)) (.num 2106)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1915) (.var 3)) (.num 2700)) (.var 3)) (.num 1813)) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3170) (.var 3)) (.num 5882)) (.var 3))
    (.num 3368)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2841) (.var 3))
    (.num 6274)) (.var 3)) (.num 3795)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1374) (.var 3)) (.num 3242)) (.var 3)) (.num 1938)) (.pow (.var 2) 7))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 324) (.var 3)) (.num 738)) (.var 3)) (.num 414)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3)) (.num 54)) (.var 3))
    (.num 27)) (.pow (.var 2) 9))) (.var 0))) (.pow (.var 0) 1))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow2032.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow2032.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow2032.leading0 e g v + f * FullLow2032.leading1 e g v +
        f^2 * FullLow2032.remainder e f g v := by
  have hden : denominatorOne FullLow2032.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow2032.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow2032.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 137438953472 15 12 2) lhs =
      value (Encoding4.vars 137438953472 15 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 137438953472 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 15 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 15 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow2032.source e f g v =
      FullLow2032.leading0 e g v + f * FullLow2032.leading1 e g v +
        f^2 * FullLow2032.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 137438953472 15 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow203Encoded2

namespace SPR.N6.Tail.CoreEndpoint.FullLow203
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition2 (e f g v : ℝ) :
    FullLow2032.source e f g v =
      FullLow2032.leading0 e g v + f * FullLow2032.leading1 e g v +
        f^2 * FullLow2032.remainder e f g v :=
  FullLow203Encoded2.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow203
