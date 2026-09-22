import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh230Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^0 layer of FullHigh230.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh230Encoded0
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.add (.mul (.num 2) (.var 1)) (.mul
    (.num 3) (.var 3))) (.pow (.var 1) 2)) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 21) (.var
    1)) (.add (.mul (.num 9) (.var 2)) (.mul (.num 35) (.var 3)))) (.var 1)) (.add (.mul (.mul
    (.num 14) (.var 3)) (.var 2)) (.mul (.num 3) (.pow (.var 3) 2)))) (.pow (.var 1) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num 98) (.var 1)) (.add (.mul (.num 83) (.var
    2)) (.mul (.num 164) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 15) (.var 2)) (.mul
    (.num 130) (.var 3))) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul (.num 14) (.pow (.var 3) 2))) (.var 2))) (.pow
    (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 265) (.var
    1)) (.add (.mul (.num 332) (.var 2)) (.mul (.num 416) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 118) (.var 2)) (.mul (.num 486) (.var 3))) (.var 2)) (.mul (.num 116) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11) (.var 2)) (.mul (.num 170) (.var
    3))) (.var 2)) (.mul (.num 108) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.mul (.num 18) (.var 3)) (.var 2)) (.mul (.num 24) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 455) (.var 1)) (.add (.mul (.num 750) (.var 2)) (.mul (.num 672) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 394) (.var 2)) (.mul (.num 1036) (.var 3))) (.var 2)) (.mul
    (.num 227) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 2))
    (.mul (.num 516) (.var 3))) (.var 2)) (.mul (.num 313) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.num 94) (.var 3))) (.var 2))
    (.mul (.num 134) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 5) (.var 3)) (.var 2)) (.mul (.num 18) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.pow
    (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 510) (.var 1)) (.add (.mul (.num 1037) (.var 2)) (.mul (.num 744) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 715) (.var 2)) (.mul (.num 1429) (.var 3)))
    (.var 2)) (.mul (.num 272) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    192) (.var 2)) (.mul (.num 924) (.var 3))) (.var 2)) (.mul (.num 491) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 2)) (.mul (.num 233) (.var
    3))) (.var 2)) (.mul (.num 295) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 19) (.var 3)) (.var 2)) (.mul (.num 68) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.mul (.num 5) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.pow (.var 1) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    367) (.var 1)) (.add (.mul (.num 883) (.var 2)) (.mul (.num 564) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 747) (.var 2)) (.mul (.num 1303) (.var 3))) (.var 2)) (.mul (.num 217)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 260) (.var 2)) (.mul (.num
    1048) (.var 3))) (.var 2)) (.mul (.num 481) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 31) (.var 2)) (.mul (.num 343) (.var 3))) (.var 2)) (.mul (.num
    368) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 38) (.var
    3)) (.var 2)) (.mul (.num 114) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul
    (.num 12) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 156) (.var 1)) (.add
    (.mul (.num 430) (.var 2)) (.mul (.num 272) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 425) (.var 2)) (.mul (.num 738) (.var 3))) (.var 2)) (.mul (.num 114) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 177) (.var 2)) (.mul (.num 716) (.var 3)))
    (.var 2)) (.mul (.num 301) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 26) (.var 2)) (.mul (.num 292) (.var 3))) (.var 2)) (.mul (.num 282) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 42) (.var 3)) (.var 2))
    (.mul (.num 110) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 15) (.pow
    (.var 3) 2)) (.pow (.var 2) 4))) (.pow (.var 1) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 1)) (.add (.mul (.num 92)
    (.var 2)) (.mul (.num 64) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 102) (.var 2))
    (.mul (.num 198) (.var 3))) (.var 2)) (.mul (.num 34) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 48) (.var 2)) (.mul (.num 222) (.var 3))) (.var 2)) (.mul (.num
    106) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 2))
    (.mul (.num 106) (.var 3))) (.var 2)) (.mul (.num 120) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 18) (.var 3)) (.var 2)) (.mul (.num 58) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 10) (.pow (.var 3) 2)) (.pow (.var 2)
    4))) (.pow (.var 1) 5)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1))
    (.var 2))) 3)) (.pow (.add (.var 1) (.var 2)) 3)) (.mul (.mul (.mul (.mul (.num 1) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.mul (.add (.mul (.num 12) (.var 1)) (.mul (.num 6) (.var 3))) (.var 1)) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 180) (.var 1)) (.add (.mul (.num 81) (.var 2)) (.mul (.num
    126) (.var 3)))) (.var 1)) (.add (.mul (.mul (.num 48) (.var 3)) (.var 2)) (.mul (.num 6)
    (.pow (.var 3) 2)))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    1138) (.var 1)) (.add (.mul (.num 1000) (.var 2)) (.mul (.num 959) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 204) (.var 2)) (.mul (.num 737) (.var 3))) (.var 2)) (.mul (.num 108)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 132) (.var 3)) (.var 2)) (.mul
    (.num 48) (.pow (.var 3) 2))) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 4074) (.var 1)) (.add (.mul (.num 5268) (.var 2)) (.mul (.num
    3859) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2085) (.var 2)) (.mul (.num 4453)
    (.var 3))) (.var 2)) (.mul (.num 689) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 246) (.var 2)) (.mul (.num 1572) (.var 3))) (.var 2)) (.mul (.num 614) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 168) (.var 3)) (.var 2)) (.mul
    (.num 132) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9212) (.var 1)) (.add (.mul (.num 15618)
    (.var 2)) (.mul (.num 9544) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 9037) (.var
    2)) (.mul (.num 14674) (.var 3))) (.var 2)) (.mul (.num 2256) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2055) (.var 2)) (.mul (.num 7636) (.var 3))) (.var 2))
    (.mul (.num 3004) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    144) (.var 2)) (.mul (.num 1558) (.var 3))) (.var 2)) (.mul (.num 1264) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 102) (.var 3)) (.var 2)) (.mul
    (.num 168) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13752) (.var 1)) (.add (.mul
    (.num 28706) (.var 2)) (.mul (.num 15668) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    21657) (.var 2)) (.mul (.num 30196) (.var 3))) (.var 2)) (.mul (.num 4392) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7152) (.var 2)) (.mul (.num 20746) (.var
    3))) (.var 2)) (.mul (.num 7737) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 959) (.var 2)) (.mul (.num 6134) (.var 3))) (.var 2)) (.mul (.num 4747)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33)
    (.var 2)) (.mul (.num 726) (.var 3))) (.var 2)) (.mul (.num 1192) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul (.num 102)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13630) (.var 1)) (.add (.mul
    (.num 33653) (.var 2)) (.mul (.num 17433) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    31078) (.var 2)) (.mul (.num 40555) (.var 3))) (.var 2)) (.mul (.num 5564) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13276) (.var 2)) (.mul (.num 34817) (.var
    3))) (.var 2)) (.mul (.num 12180) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2564) (.var 2)) (.mul (.num 13565) (.var 3))) (.var 2)) (.mul (.num 9707)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 169)
    (.var 2)) (.mul (.num 2317) (.var 3))) (.var 2)) (.mul (.num 3439) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 129) (.var 3)) (.var 2)) (.mul (.num
    516) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 24) (.pow (.var 3)
    2)) (.pow (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8686) (.var 1)) (.add (.mul (.num 24655) (.var
    2)) (.mul (.num 12747) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 26748) (.var 2))
    (.mul (.num 34826) (.var 3))) (.var 2)) (.mul (.num 4650) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 13851) (.var 2)) (.mul (.num 36034) (.var 3))) (.var 2)) (.mul
    (.num 12213) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    3417) (.var 2)) (.mul (.num 17562) (.var 3))) (.var 2)) (.mul (.num 12028) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 318) (.var 2)) (.mul (.num
    3990) (.var 3))) (.var 2)) (.mul (.num 5496) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.mul (.num 329) (.var 3)) (.var 2)) (.mul (.num 1140) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 82) (.pow (.var 3) 2)) (.pow (.var 2) 5)))
    (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 3240) (.var 1)) (.add (.mul (.num 10341) (.var 2)) (.mul
    (.num 5562) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 12787) (.var 2)) (.mul (.num
    17457) (.var 3))) (.var 2)) (.mul (.num 2371) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 7683) (.var 2)) (.mul (.num 21151) (.var 3))) (.var 2)) (.mul (.num 7307)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2258) (.var 2))
    (.mul (.num 12391) (.var 3))) (.var 2)) (.mul (.num 8651) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 261) (.var 2)) (.mul (.num 3525) (.var 3)))
    (.var 2)) (.mul (.num 4913) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 390) (.var 3)) (.var 2)) (.mul (.num 1335) (.pow (.var 3) 2))) (.pow (.var
    2) 4))) (.var 1)) (.mul (.mul (.num 137) (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.pow (.var 1)
    3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 540) (.var 1)) (.add (.mul (.num 1902) (.var 2)) (.mul (.num 1104) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2616) (.var 2)) (.mul (.num 3900) (.var 3)))
    (.var 2)) (.mul (.num 574) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1765) (.var 2)) (.mul (.num 5384) (.var 3))) (.var 2)) (.mul (.num 2043) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 590) (.var 2)) (.mul (.num 3650)
    (.var 3))) (.var 2)) (.mul (.num 2848) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 79) (.var 2)) (.mul (.num 1228) (.var 3))) (.var 2)) (.mul (.num
    1955) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 166)
    (.var 3)) (.var 2)) (.mul (.num 668) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.mul (.num 92) (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.pow (.var 1) 4)))) (.var 0)) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)) (.pow (.add (.var
    1) (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 12)
    (.var 1)) (.var 0)) (.add (.mul (.add (.mul (.num 270) (.var 1)) (.add (.mul (.num 120) (.var
    2)) (.mul (.num 72) (.var 3)))) (.var 1)) (.mul (.mul (.num 24) (.var 3)) (.var 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.num 2346) (.var 1)) (.add (.mul (.num 2052) (.var
    2)) (.mul (.num 1038) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 432) (.var 2)) (.mul
    (.num 738) (.var 3))) (.var 2)) (.mul (.num 60) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 120) (.var 3)) (.var 2)) (.mul (.num 24) (.pow (.var 3) 2))) (.var 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11106) (.var 1)) (.add (.mul
    (.num 14355) (.var 2)) (.mul (.num 6474) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    5895) (.var 2)) (.mul (.num 7074) (.var 3))) (.var 2)) (.mul (.num 726) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 768) (.var 2)) (.mul (.num 2376) (.var 3)))
    (.var 2)) (.mul (.num 600) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 240) (.var 3)) (.var 2)) (.mul (.num 120) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 32729) (.var 1)) (.add
    (.mul (.num 55636) (.var 2)) (.mul (.num 23208) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 33509) (.var 2)) (.mul (.num 34278) (.var 3))) (.var 2)) (.mul (.num 3756) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8424) (.var 2)) (.mul (.num 17478)
    (.var 3))) (.var 2)) (.mul (.num 4686) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 732) (.var 2)) (.mul (.num 3588) (.var 3))) (.var 2)) (.mul (.num
    1872) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 240)
    (.var 3)) (.var 2)) (.mul (.num 240) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 63823) (.var 1)) (.add
    (.mul (.num 133898) (.var 2)) (.mul (.num 53350) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 105352) (.var 2)) (.mul (.num 99572) (.var 3))) (.var 2)) (.mul (.num 10990) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38493) (.var 2)) (.mul (.num 68164)
    (.var 3))) (.var 2)) (.mul (.num 18281) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 6378) (.var 2)) (.mul (.num 21042) (.var 3))) (.var 2)) (.mul (.num
    10831) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    360) (.var 2)) (.mul (.num 2820) (.var 3))) (.var 2)) (.mul (.num 2712) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 120) (.var 3)) (.var 2)) (.mul
    (.num 240) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 84310) (.var 1)) (.add (.mul (.num
    209730) (.var 2)) (.mul (.num 82426) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    202428) (.var 2)) (.mul (.num 186686) (.var 3))) (.var 2)) (.mul (.num 20301) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 95842) (.var 2)) (.mul (.num 161058) (.var
    3))) (.var 2)) (.mul (.num 42208) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 22836) (.var 2)) (.mul (.num 66550) (.var 3))) (.var 2)) (.mul (.num 32927)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2424)
    (.var 2)) (.mul (.num 13358) (.var 3))) (.var 2)) (.mul (.num 12004) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 2)) (.mul (.num 1122)
    (.var 3))) (.var 2)) (.mul (.num 2016) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul (.num 120) (.pow (.var 3) 2))) (.pow
    (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 75052) (.var 1)) (.add (.mul (.num 215316) (.var 2)) (.mul
    (.num 86002) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 244960) (.var 2)) (.mul (.num
    229900) (.var 3))) (.var 2)) (.mul (.num 24849) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 141133) (.var 2)) (.mul (.num 240382) (.var 3))) (.var 2)) (.mul (.num
    62301) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 43116)
    (.var 2)) (.mul (.num 125118) (.var 3))) (.var 2)) (.mul (.num 60441) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6490) (.var 2)) (.mul (.num
    33698) (.var 3))) (.var 2)) (.mul (.num 28761) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 357) (.var 2)) (.mul (.num 4284) (.var 3))) (.var 2))
    (.mul (.num 6906) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 180) (.var 3)) (.var 2)) (.mul (.num 744) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    1)) (.mul (.mul (.num 24) (.pow (.var 3) 2)) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    43319) (.var 1)) (.add (.mul (.num 140388) (.var 2)) (.mul (.num 58439) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 183047) (.var 2)) (.mul (.num 180474) (.var 3))) (.var 2)) (.mul
    (.num 19893) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 123250) (.var
    2)) (.mul (.num 222274) (.var 3))) (.var 2)) (.mul (.num 58837) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45297) (.var 2)) (.mul (.num 139930) (.var 3)))
    (.var 2)) (.mul (.num 68900) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 8600) (.var 2)) (.mul (.num 47459) (.var 3))) (.var 2)) (.mul (.num
    40847) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    653) (.var 2)) (.mul (.num 8150) (.var 3))) (.var 2)) (.mul (.num 12839) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 538) (.var 3)) (.var 2)) (.mul
    (.num 1978) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 108) (.pow
    (.var 3) 2)) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 14697) (.var 1)) (.add
    (.mul (.num 52925) (.var 2)) (.mul (.num 23437) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 77411) (.var 2)) (.mul (.num 82142) (.var 3))) (.var 2)) (.mul (.num 9510) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59172) (.var 2)) (.mul (.num 116436)
    (.var 3))) (.var 2)) (.mul (.num 32638) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 25092) (.var 2)) (.mul (.num 85892) (.var 3))) (.var 2)) (.mul (.num
    45184) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    5626) (.var 2)) (.mul (.num 35009) (.var 3))) (.var 2)) (.mul (.num 32447) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 523) (.var 2)) (.mul (.num
    7512) (.var 3))) (.var 2)) (.mul (.num 12804) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.mul (.num 664) (.var 3)) (.var 2)) (.mul (.num 2630) (.pow (.var 3)
    2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 217) (.pow (.var 3) 2)) (.pow (.var 2)
    6))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2232) (.var 1)) (.add (.mul (.num 8808) (.var
    2)) (.mul (.num 4224) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 14202) (.var 2))
    (.mul (.num 16536) (.var 3))) (.var 2)) (.mul (.num 2080) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 12050) (.var 2)) (.mul (.num 26428) (.var 3))) (.var 2)) (.mul
    (.num 8168) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5721)
    (.var 2)) (.mul (.num 22224) (.var 3))) (.var 2)) (.mul (.num 13129) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1452) (.var 2)) (.mul (.num 10470)
    (.var 3))) (.var 2)) (.mul (.num 11146) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 155) (.var 2)) (.mul (.num 2644) (.var 3))) (.var 2))
    (.mul (.num 5327) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 282) (.var 3)) (.var 2)) (.mul (.num 1372) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    1)) (.mul (.mul (.num 150) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.pow (.var 1) 3)))) (.pow
    (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    3)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 60) (.var 1)) (.mul (.num 20) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num
    932) (.var 1)) (.add (.mul (.num 732) (.var 2)) (.mul (.num 120) (.var 3)))) (.var 1)) (.mul
    (.add (.mul (.num 140) (.var 2)) (.mul (.num 40) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 6368) (.var 1)) (.add (.mul (.num 7782) (.var 2)) (.mul (.num
    1600) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 3074) (.var 2)) (.mul (.num 1208)
    (.var 3))) (.var 2)) (.mul (.num 60) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 400) (.var 2)) (.mul (.num 208) (.var 3))) (.var 2)) (.mul (.num 20) (.pow (.var
    3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 25302)
    (.var 1)) (.add (.mul (.num 41652) (.var 2)) (.mul (.num 9468) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 24772) (.var 2)) (.mul (.num 11164) (.var 3))) (.var 2)) (.mul (.num
    700) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6362) (.var 2)) (.mul
    (.num 4088) (.var 3))) (.var 2)) (.mul (.num 524) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 600) (.var 2)) (.mul (.num 472) (.var 3))) (.var 2)) (.mul
    (.num 84) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 64972) (.var 1)) (.add (.mul (.num 133840) (.var 2)) (.mul
    (.num 32688) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 105578) (.var 2)) (.mul (.num
    52544) (.var 3))) (.var 2)) (.mul (.num 3606) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 39966) (.var 2)) (.mul (.num 29696) (.var 3))) (.var 2)) (.mul (.num 4238)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7256) (.var 2))
    (.mul (.num 7048) (.var 3))) (.var 2)) (.mul (.num 1484) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 500) (.var 2)) (.mul (.num 608) (.var 3)))
    (.var 2)) (.mul (.num 152) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 113017) (.var 1)) (.add
    (.mul (.num 278571) (.var 2)) (.mul (.num 72780) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 272283) (.var 2)) (.mul (.num 148632) (.var 3))) (.var 2)) (.mul (.num 10772) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 134887) (.var 2)) (.mul (.num
    114092) (.var 3))) (.var 2)) (.mul (.num 17464) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 35494) (.var 2)) (.mul (.num 41268) (.var 3))) (.var 2)) (.mul
    (.num 9686) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 4616) (.var 2)) (.mul (.num 7100) (.var 3))) (.var 2)) (.mul (.num 2162) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 220) (.var 2)) (.mul
    (.num 472) (.var 3))) (.var 2)) (.mul (.num 168) (.pow (.var 3) 2))) (.pow (.var 2) 4))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 135235) (.var 1)) (.add (.mul (.num 387021) (.var 2)) (.mul (.num 108614) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 449265) (.var 2)) (.mul (.num 269822) (.var 3))) (.var
    2)) (.mul (.num 20584) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    273001) (.var 2)) (.mul (.num 262614) (.var 3))) (.var 2)) (.mul (.num 43136) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 92792) (.var 2)) (.mul (.num
    128134) (.var 3))) (.var 2)) (.mul (.num 33460) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 17204) (.var 2)) (.mul (.num 33060) (.var 3))) (.var
    2)) (.mul (.num 11980) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1514) (.var 2)) (.mul (.num 4260) (.var 3))) (.var 2)) (.mul (.num 2004)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40)
    (.var 2)) (.mul (.num 208) (.var 3))) (.var 2)) (.mul (.num 132) (.pow (.var 3) 2))) (.pow
    (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 110179) (.var 1)) (.add (.mul (.num 358212) (.var 2))
    (.mul (.num 108676) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 479687) (.var 2))
    (.mul (.num 318588) (.var 3))) (.var 2)) (.mul (.num 25891) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 343195) (.var 2)) (.mul (.num 376184) (.var 3))) (.var 2))
    (.mul (.num 67365) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 141470) (.var 2)) (.mul (.num 231252) (.var 3))) (.var 2)) (.mul (.num 68315) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33377) (.var
    2)) (.mul (.num 79476) (.var 3))) (.var 2)) (.mul (.num 34551) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4102) (.var 2)) (.mul (.num 15044) (.var
    3))) (.var 2)) (.mul (.num 9234) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 194) (.var 2)) (.mul (.num 1388) (.var 3))) (.var 2)) (.mul (.num
    1252) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 40)
    (.var 3)) (.var 2)) (.mul (.num 68) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 58611) (.var 1)) (.add (.mul (.num 212897) (.var 2)) (.mul (.num 70238)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 321899) (.var 2)) (.mul (.num 237430)
    (.var 3))) (.var 2)) (.mul (.num 20859) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 263513) (.var 2)) (.mul (.num 329498) (.var 3))) (.var 2)) (.mul (.num 65347)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 126522) (.var 2))
    (.mul (.num 243902) (.var 3))) (.var 2)) (.mul (.num 82641) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 35676) (.var 2)) (.mul (.num 104264) (.var
    3))) (.var 2)) (.mul (.num 54653) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 5462) (.var 2)) (.mul (.num 25760) (.var 3))) (.var 2)) (.mul
    (.num 20394) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 348) (.var 2)) (.mul (.num 3392) (.var 3))) (.var 2)) (.mul (.num 4270) (.pow (.var 3)
    2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 180) (.var 3)) (.var 2))
    (.mul (.num 452) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 16) (.pow
    (.var 3) 2)) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18414) (.var 1)) (.add
    (.mul (.num 73731) (.var 2)) (.mul (.num 26586) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 123778) (.var 2)) (.mul (.num 101726) (.var 3))) (.var 2)) (.mul (.num 9780) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 113472) (.var 2)) (.mul (.num 161912)
    (.var 3))) (.var 2)) (.mul (.num 35961) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 61668) (.var 2)) (.mul (.num 139632) (.var 3))) (.var 2)) (.mul (.num
    54660) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    19957) (.var 2)) (.mul (.num 70894) (.var 3))) (.var 2)) (.mul (.num 44744) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3574) (.var 2)) (.mul
    (.num 21322) (.var 3))) (.var 2)) (.mul (.num 21446) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 274) (.var 2)) (.mul (.num 3540) (.var 3)))
    (.var 2)) (.mul (.num 6059) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 252) (.var 3)) (.var 2)) (.mul (.num 940) (.pow (.var 3) 2))) (.pow (.var 2)
    6))) (.var 1)) (.mul (.mul (.num 62) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2598) (.var 1)) (.add (.mul (.num 11338) (.var 2)) (.mul (.num
    4490) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 20844) (.var 2)) (.mul (.num 19146)
    (.var 3))) (.var 2)) (.mul (.num 2040) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 21036) (.var 2)) (.mul (.num 34260) (.var 3))) (.var 2)) (.mul (.num 8622) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12662) (.var 2)) (.mul
    (.num 33540) (.var 3))) (.var 2)) (.mul (.num 15306) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4570) (.var 2)) (.mul (.num 19538) (.var 3)))
    (.var 2)) (.mul (.num 14904) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 920) (.var 2)) (.mul (.num 6818) (.var 3))) (.var 2)) (.mul (.num
    8676) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    80) (.var 2)) (.mul (.num 1328) (.var 3))) (.var 2)) (.mul (.num 3046) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 112) (.var 3)) (.var 2)) (.mul
    (.num 602) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 52) (.pow (.var
    3) 2)) (.pow (.var 2) 7))) (.pow (.var 1) 2)))) (.pow (.var 0) 3)) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.mul (.mul (.num
    4) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add
    (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num
    10) (.var 2)) (.mul (.num 4) (.var 3))) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var
    0)) (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 4) (.var 3))) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.var 0))) (.pow (.var 0) 6)) (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 16) (.var 3))) (.var
    2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var
    2)) (.mul (.num 20) (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3) 2))) (.var 2))) (.var
    0)) (.mul (.add (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.pow (.var 0) 3))) (.pow (.var 0) 4))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.mul (.mul (.num 1) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 6) (.var 0)) (.add (.mul (.num 84) (.var 2)) (.mul (.num 12) (.var 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.num 371) (.var 2)) (.mul (.num 128) (.var 3))) (.var 2)) (.mul (.num 6)
    (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 785) (.var 2)) (.mul (.num
    362) (.var 3))) (.var 2)) (.mul (.num 56) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 902) (.var 2)) (.mul (.num 520) (.var 3))) (.var 2)) (.mul (.num 125)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 572)
    (.var 2)) (.mul (.num 524) (.var 3))) (.var 2)) (.mul (.num 167) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 185) (.var 2)) (.mul (.num 384)
    (.var 3))) (.var 2)) (.mul (.num 246) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 23) (.var 2)) (.mul (.num 158) (.var 3))) (.var 2)) (.mul (.num
    256) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 24) (.var
    3)) (.var 2)) (.mul (.num 119) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul
    (.num 17) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 0))) (.pow (.var 0) 6)) (.mul (.mul
    (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.add (.mul (.num 172) (.var 2)) (.mul (.num
    24) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 786) (.var 2)) (.mul (.num 300) (.var
    3))) (.var 2)) (.mul (.num 12) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 1734) (.var 2)) (.mul (.num 1152) (.var 3))) (.var 2)) (.mul (.num 140) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2098) (.var 2)) (.mul (.num
    2238) (.var 3))) (.var 2)) (.mul (.num 504) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1422) (.var 2)) (.mul (.num 2536) (.var 3))) (.var 2))
    (.mul (.num 972) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 504) (.var 2)) (.mul (.num 1704) (.var 3))) (.var 2)) (.mul (.num 1170) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 2))
    (.mul (.num 624) (.var 3))) (.var 2)) (.mul (.num 870) (.pow (.var 3) 2))) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.mul (.num 94) (.var 3)) (.var 2)) (.mul (.num 354) (.pow (.var
    3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 58) (.pow (.var 3) 2)) (.pow (.var 2)
    7))) (.pow (.var 0) 3))) (.pow (.var 0) 4))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 6) (.var 0)) (.add (.mul (.num 88) (.var 2)) (.mul (.num 12) (.var 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.num 415) (.var 2)) (.mul (.num 172) (.var 3))) (.var 2)) (.mul (.num 6)
    (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 949) (.var 2)) (.mul (.num
    802) (.var 3))) (.var 2)) (.mul (.num 84) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1196) (.var 2)) (.mul (.num 1818) (.var 3))) (.var 2)) (.mul (.num
    387) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    850) (.var 2)) (.mul (.num 2272) (.var 3))) (.var 2)) (.mul (.num 869) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 319) (.var 2)) (.mul (.num
    1600) (.var 3))) (.var 2)) (.mul (.num 1076) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 49) (.var 2)) (.mul (.num 594) (.var 3))) (.var 2)) (.mul
    (.num 750) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 90)
    (.var 3)) (.var 2)) (.mul (.num 275) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.mul (.num 41) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 5))) (.pow (.var 0)
    2))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh2300.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh2300.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh2300.leading0 e g v + f * FullHigh2300.leading1 e g v +
        f^2 * FullHigh2300.remainder e f g v := by
  have hden : denominatorOne FullHigh2300.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh2300.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh2300.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 34359738368 20 10 2) lhs =
      value (Encoding4.vars 34359738368 20 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 34359738368 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 20 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 20 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh2300.source e f g v =
      FullHigh2300.leading0 e g v + f * FullHigh2300.leading1 e g v +
        f^2 * FullHigh2300.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 34359738368 20 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh230Encoded0

namespace SPR.N6.Tail.CoreEndpoint.FullHigh230
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition0 (e f g v : ℝ) :
    FullHigh2300.source e f g v =
      FullHigh2300.leading0 e g v + f * FullHigh2300.leading1 e g v +
        f^2 * FullHigh2300.remainder e f g v :=
  FullHigh230Encoded0.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh230
