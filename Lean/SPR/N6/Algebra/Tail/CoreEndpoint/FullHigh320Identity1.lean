import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh320Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^1 layer of FullHigh320.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh320Encoded1
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.add (.mul (.num 5)
    (.var 1)) (.mul (.num 5) (.var 3))) (.var 1)) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    82) (.var 1)) (.add (.mul (.num 37) (.var 2)) (.mul (.num 87) (.var 3)))) (.var 1)) (.add
    (.mul (.mul (.num 36) (.var 3)) (.var 2)) (.mul (.num 5) (.pow (.var 3) 2)))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num 560) (.var 1)) (.add (.mul (.num 496)
    (.var 2)) (.mul (.num 638) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 105) (.var 2))
    (.mul (.num 522) (.var 3))) (.var 2)) (.mul (.num 77) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 103) (.var 3)) (.var 2)) (.mul (.num 36) (.pow (.var 3) 2))) (.var
    2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2128)
    (.var 1)) (.add (.mul (.num 2772) (.var 2)) (.mul (.num 2518) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 1141) (.var 2)) (.mul (.num 3040) (.var 3))) (.var 2)) (.mul (.num
    489) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 148) (.var 2)) (.mul
    (.num 1179) (.var 3))) (.var 2)) (.mul (.num 454) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.mul (.num 148) (.var 3)) (.var 2)) (.mul (.num 103) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 5006) (.var 1)) (.add (.mul (.num 8528) (.var 2)) (.mul (.num 6036) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 5129) (.var 2)) (.mul (.num 9548) (.var 3)))
    (.var 2)) (.mul (.num 1606) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1281) (.var 2)) (.mul (.num 5388) (.var 3))) (.var 2)) (.mul (.num 2217) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 109) (.var 2)) (.mul (.num 1288)
    (.var 3))) (.var 2)) (.mul (.num 1001) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 111) (.var 3)) (.var 2)) (.mul (.num 148) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 7588) (.var 1)) (.add (.mul (.num 15866) (.var 2)) (.mul (.num 9504)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 12429) (.var 2)) (.mul (.num 18582) (.var
    3))) (.var 2)) (.mul (.num 3047) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 4510) (.var 2)) (.mul (.num 13588) (.var 3))) (.var 2)) (.mul (.num 5542) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 733) (.var 2)) (.mul (.num 4598)
    (.var 3))) (.var 2)) (.mul (.num 3677) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 39) (.var 2)) (.mul (.num 709) (.var 3))) (.var 2)) (.mul (.num
    1056) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 40)
    (.var 3)) (.var 2)) (.mul (.num 111) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 7407) (.var 1)) (.add (.mul (.num 18272) (.var 2)) (.mul (.num 10102) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 17521) (.var 2)) (.mul (.num 23658) (.var 3))) (.var 2))
    (.mul (.num 3654) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8247)
    (.var 2)) (.mul (.num 21340) (.var 3))) (.var 2)) (.mul (.num 8220) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1940) (.var 2)) (.mul (.num 9314) (.var
    3))) (.var 2)) (.mul (.num 7058) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 199) (.var 2)) (.mul (.num 1992) (.var 3))) (.var 2)) (.mul (.num
    2874) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5)
    (.var 2)) (.mul (.num 182) (.var 3))) (.var 2)) (.mul (.num 551) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 5) (.var 3)) (.var 2)) (.mul (.num 40)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4476) (.var 1))
    (.add (.mul (.num 12689) (.var 2)) (.mul (.num 6976) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 14336) (.var 2)) (.mul (.num 19162) (.var 3))) (.var 2)) (.mul (.num 2862) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8233) (.var 2)) (.mul (.num
    20782) (.var 3))) (.var 2)) (.mul (.num 7710) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2501) (.var 2)) (.mul (.num 11292) (.var 3))) (.var 2)) (.mul
    (.num 8136) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 372) (.var 2)) (.mul (.num 3168) (.var 3))) (.var 2)) (.mul (.num 4238) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 2)) (.mul
    (.num 414) (.var 3))) (.var 2)) (.mul (.num 1111) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 17) (.var 3)) (.var 2)) (.mul (.num 130) (.pow (.var
    3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 5) (.pow (.var 3) 2)) (.pow (.var 2)
    6))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 1512) (.var 1)) (.add (.mul (.num 4842) (.var 2))
    (.mul (.num 2772) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 6291) (.var 2)) (.mul
    (.num 8784) (.var 3))) (.var 2)) (.mul (.num 1332) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4248) (.var 2)) (.mul (.num 11226) (.var 3))) (.var 2)) (.mul (.num
    4224) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1569) (.var
    2)) (.mul (.num 7386) (.var 3))) (.var 2)) (.mul (.num 5382) (.pow (.var 3) 2))) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 303) (.var 2)) (.mul (.num 2616) (.var
    3))) (.var 2)) (.mul (.num 3504) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 25) (.var 2)) (.mul (.num 470) (.var 3))) (.var 2)) (.mul (.num 1208)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 34) (.var 3))
    (.var 2)) (.mul (.num 201) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num
    11) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 216)
    (.var 1)) (.add (.mul (.num 774) (.var 2)) (.mul (.num 468) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 1140) (.var 2)) (.mul (.num 1692) (.var 3))) (.var 2)) (.mul (.num 264)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 885) (.var 2)) (.mul (.num
    2508) (.var 3))) (.var 2)) (.mul (.num 972) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 384) (.var 2)) (.mul (.num 1950) (.var 3))) (.var 2)) (.mul
    (.num 1470) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 91) (.var 2)) (.mul (.num 842) (.var 3))) (.var 2)) (.mul (.num 1170) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 2)) (.mul
    (.num 198) (.var 3))) (.var 2)) (.mul (.num 521) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.mul (.num 22) (.var 3)) (.var 2)) (.mul (.num 128) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 15) (.pow (.var 3) 2)) (.pow (.var 2) 6)))
    (.pow (.var 1) 3)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 2)) (.pow (.add (.var 1) (.var 2)) 2)) (.mul (.mul (.mul (.num 2) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.mul (.num 8) (.var 1)) (.var 0)) (.add (.mul (.add (.mul (.num 196) (.var
    1)) (.add (.mul (.num 88) (.var 2)) (.mul (.num 48) (.var 3)))) (.var 1)) (.mul (.mul (.num
    16) (.var 3)) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 1922) (.var 1))
    (.add (.mul (.num 1706) (.var 2)) (.mul (.num 782) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 368) (.var 2)) (.mul (.num 566) (.var 3))) (.var 2)) (.mul (.num 40) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 96) (.var 3)) (.var 2)) (.mul (.num 16) (.pow
    (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    10522) (.var 1)) (.add (.mul (.num 13853) (.var 2)) (.mul (.num 5614) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 5867) (.var 2)) (.mul (.num 6268) (.var 3))) (.var 2)) (.mul
    (.num 560) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 800) (.var 2))
    (.mul (.num 2198) (.var 3))) (.var 2)) (.mul (.num 468) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.mul (.num 240) (.var 3)) (.var 2)) (.mul (.num 96) (.pow (.var 3) 2)))
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 36677) (.var 1)) (.add (.mul (.num 63706) (.var 2)) (.mul (.num 23635) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 39798) (.var 2)) (.mul (.num 35702) (.var 3))) (.var 2))
    (.mul (.num 3428) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10577)
    (.var 2)) (.mul (.num 19015) (.var 3))) (.var 2)) (.mul (.num 4344) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1000) (.var 2)) (.mul (.num 4204) (.var
    3))) (.var 2)) (.mul (.num 1788) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 320) (.var 3)) (.var 2)) (.mul (.num 240) (.pow (.var 3) 2))) (.pow (.var 2)
    3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    86743) (.var 1)) (.add (.mul (.num 186456) (.var 2)) (.mul (.num 65291) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 152940) (.var 2)) (.mul (.num 124581) (.var 3))) (.var 2)) (.mul
    (.num 12165) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59595) (.var
    2)) (.mul (.num 89077) (.var 3))) (.var 2)) (.mul (.num 20615) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10904) (.var 2)) (.mul (.num 29595) (.var 3)))
    (.var 2)) (.mul (.num 12654) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 728) (.var 2)) (.mul (.num 4488) (.var 3))) (.var 2)) (.mul (.num
    3344) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 240)
    (.var 3)) (.var 2)) (.mul (.num 320) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 143379)
    (.var 1)) (.add (.mul (.num 366319) (.var 2)) (.mul (.num 124835) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 370283) (.var 2)) (.mul (.num 288738) (.var 3))) (.var 2)) (.mul (.num
    27993) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 188460) (.var 2))
    (.mul (.num 259935) (.var 3))) (.var 2)) (.mul (.num 59385) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50243) (.var 2)) (.mul (.num 115458) (.var 3)))
    (.var 2)) (.mul (.num 48236) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 6446) (.var 2)) (.mul (.num 26140) (.var 3))) (.var 2)) (.mul (.num
    18752) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    288) (.var 2)) (.mul (.num 2738) (.var 3))) (.var 2)) (.mul (.num 3468) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 96) (.var 3)) (.var 2)) (.mul
    (.num 240) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 166718) (.var 1))
    (.add (.mul (.num 492343) (.var 2)) (.mul (.num 168129) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 589190) (.var 2)) (.mul (.num 458494) (.var 3))) (.var 2)) (.mul (.num
    44129) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 367736) (.var 2))
    (.mul (.num 499862) (.var 3))) (.var 2)) (.mul (.num 112791) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 127310) (.var 2)) (.mul (.num 279504) (.var 3)))
    (.var 2)) (.mul (.num 114089) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 23644) (.var 2)) (.mul (.num 84723) (.var 3))) (.var 2)) (.mul (.num
    58245) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2017) (.var 2)) (.mul (.num 13286) (.var 3))) (.var 2)) (.mul (.num 15646) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48) (.var 2)) (.mul (.num
    898) (.var 3))) (.var 2)) (.mul (.num 2040) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.mul (.num 16) (.var 3)) (.var 2)) (.mul (.num 96) (.pow (.var 3) 2)))
    (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 134287) (.var 1)) (.add (.mul (.num
    449004) (.var 2)) (.mul (.num 157596) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    618595) (.var 2)) (.mul (.num 496269) (.var 3))) (.var 2)) (.mul (.num 48183) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 454802) (.var 2)) (.mul (.num 637546)
    (.var 3))) (.var 2)) (.mul (.num 144847) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 191914) (.var 2)) (.mul (.num 431906) (.var 3))) (.var 2)) (.mul (.num
    176421) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    45944) (.var 2)) (.mul (.num 165289) (.var 3))) (.var 2)) (.mul (.num 112147) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5625) (.var 2)) (.mul
    (.num 35003) (.var 3))) (.var 2)) (.mul (.num 39552) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 255) (.var 2)) (.mul (.num 3615) (.var 3)))
    (.var 2)) (.mul (.num 7458) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 124) (.var 3)) (.var 2)) (.mul (.num 640) (.pow (.var 3) 2))) (.pow (.var 2)
    6))) (.var 1)) (.mul (.mul (.num 16) (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 71615) (.var 1)) (.add (.mul (.num 266748) (.var 2)) (.mul (.num
    98264) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 414291) (.var 2)) (.mul (.num
    351316) (.var 3))) (.var 2)) (.mul (.num 35184) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 348761) (.var 2)) (.mul (.num 520493) (.var 3))) (.var 2)) (.mul (.num
    122269) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 172192)
    (.var 2)) (.mul (.num 415092) (.var 3))) (.var 2)) (.mul (.num 175421) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 49808) (.var 2)) (.mul (.num
    192513) (.var 3))) (.var 2)) (.mul (.num 134701) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 7767) (.var 2)) (.mul (.num 51661) (.var 3))) (.var
    2)) (.mul (.num 59524) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 496) (.var 2)) (.mul (.num 7306) (.var 3))) (.var 2)) (.mul (.num 14907)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 403) (.var 3))
    (.var 2)) (.mul (.num 1884) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul
    (.num 84) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 22815) (.var 1)) (.add (.mul (.num 93405) (.var 2)) (.mul (.num 36744) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 160820) (.var 2)) (.mul (.num 146994) (.var 3))) (.var 2))
    (.mul (.num 15558) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 151691)
    (.var 2)) (.mul (.num 246626) (.var 3))) (.var 2)) (.mul (.num 61626) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 85091) (.var 2)) (.mul (.num 226143)
    (.var 3))) (.var 2)) (.mul (.num 102349) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 28498) (.var 2)) (.mul (.num 123071) (.var 3))) (.var 2))
    (.mul (.num 92805) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 5287) (.var 2)) (.mul (.num 39902) (.var 3))) (.var 2)) (.mul (.num 49784) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 419) (.var 2))
    (.mul (.num 7139) (.var 3))) (.var 2)) (.mul (.num 15782) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.mul (.num 541) (.var 3)) (.var 2)) (.mul (.num 2712) (.pow
    (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 190) (.pow (.var 3) 2)) (.pow
    (.var 2) 7))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3294) (.var 1)) (.add
    (.mul (.num 14652) (.var 2)) (.mul (.num 6246) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 27576) (.var 2)) (.mul (.num 27594) (.var 3))) (.var 2)) (.mul (.num 3168) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 28638) (.var 2)) (.mul (.num 51588)
    (.var 3))) (.var 2)) (.mul (.num 14130) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 17842) (.var 2)) (.mul (.num 53280) (.var 3))) (.var 2)) (.mul (.num
    26770) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6708) (.var 2)) (.mul (.num 33096) (.var 3))) (.var 2)) (.mul (.num 28143) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1416) (.var 2)) (.mul (.num
    12456) (.var 3))) (.var 2)) (.mul (.num 17878) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 130) (.var 2)) (.mul (.num 2646) (.var 3))) (.var 2))
    (.mul (.num 6910) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 246) (.var 3)) (.var 2)) (.mul (.num 1512) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var
    1)) (.mul (.mul (.num 145) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 1) 3)))) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var 1)
    (.var 2)))) (.mul (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 20) (.var
    1)) (.var 0)) (.add (.mul (.add (.mul (.num 368) (.var 1)) (.add (.mul (.num 164) (.var 2))
    (.mul (.num 120) (.var 3)))) (.var 1)) (.mul (.mul (.num 40) (.var 3)) (.var 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.num 2971) (.var 1)) (.add (.mul (.num 2611) (.var 2))
    (.mul (.num 1583) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 544) (.var 2)) (.mul
    (.num 1175) (.var 3))) (.var 2)) (.mul (.num 100) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 208) (.var 3)) (.var 2)) (.mul (.num 40) (.pow (.var 3) 2))) (.var 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13769) (.var 1)) (.add (.mul
    (.num 17887) (.var 2)) (.mul (.num 9373) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    7350) (.var 2)) (.mul (.num 10681) (.var 3))) (.var 2)) (.mul (.num 1150) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 952) (.var 2)) (.mul (.num 3836) (.var 3)))
    (.var 2)) (.mul (.num 986) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 440) (.var 3)) (.var 2)) (.mul (.num 208) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40528) (.var 1)) (.add
    (.mul (.num 69131) (.var 2)) (.mul (.num 32246) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 41893) (.var 2)) (.mul (.num 49128) (.var 3))) (.var 2)) (.mul (.num 5816) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10638) (.var 2)) (.mul (.num 26387)
    (.var 3))) (.var 2)) (.mul (.num 7572) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 948) (.var 2)) (.mul (.num 5945) (.var 3))) (.var 2)) (.mul (.num
    3192) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 480)
    (.var 3)) (.var 2)) (.mul (.num 440) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 79251) (.var 1)) (.add
    (.mul (.num 166372) (.var 2)) (.mul (.num 71234) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 131996) (.var 2)) (.mul (.num 135240) (.var 3))) (.var 2)) (.mul (.num 16580) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 49151) (.var 2)) (.mul (.num
    95905) (.var 3))) (.var 2)) (.mul (.num 28708) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 8488) (.var 2)) (.mul (.num 31627) (.var 3))) (.var 2)) (.mul
    (.num 17994) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 532) (.var 2)) (.mul (.num 4848) (.var 3))) (.var 2)) (.mul (.num 4862) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 280) (.var 3)) (.var 2))
    (.mul (.num 480) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 104379) (.var 1)) (.add
    (.mul (.num 258958) (.var 2)) (.mul (.num 105824) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 252156) (.var 2)) (.mul (.num 240702) (.var 3))) (.var 2)) (.mul (.num 29382)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 122358) (.var 2)) (.mul
    (.num 211788) (.var 3))) (.var 2)) (.mul (.num 63116) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 30728) (.var 2)) (.mul (.num 91282) (.var 3))) (.var 2))
    (.mul (.num 51932) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3675) (.var 2)) (.mul (.num 20013) (.var 3))) (.var 2)) (.mul (.num 20466) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 152) (.var 2))
    (.mul (.num 2081) (.var 3))) (.var 2)) (.mul (.num 3864) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.mul (.num 80) (.var 3)) (.var 2)) (.mul (.num 280) (.pow
    (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 91454) (.var 1)) (.add (.mul (.num
    260841) (.var 2)) (.mul (.num 106186) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    299418) (.var 2)) (.mul (.num 282510) (.var 3))) (.var 2)) (.mul (.num 34088) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 177622) (.var 2)) (.mul (.num 298298)
    (.var 3))) (.var 2)) (.mul (.num 87450) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 57771) (.var 2)) (.mul (.num 159794) (.var 3))) (.var 2)) (.mul (.num
    88692) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    9958) (.var 2)) (.mul (.num 45767) (.var 3))) (.var 2)) (.mul (.num 45266) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 778) (.var 2)) (.mul (.num
    6711) (.var 3))) (.var 2)) (.mul (.num 12142) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 2)) (.mul (.num 428) (.var 3))) (.var 2))
    (.mul (.num 1602) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 8) (.var 3)) (.var 2)) (.mul (.num 80) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 50984) (.var 1)) (.add (.mul (.num 163914) (.var 2)) (.mul (.num
    68956) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 215865) (.var 2)) (.mul (.num
    210942) (.var 3))) (.var 2)) (.mul (.num 25766) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 150464) (.var 2)) (.mul (.num 261550) (.var 3))) (.var 2)) (.mul (.num
    77406) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59530)
    (.var 2)) (.mul (.num 169274) (.var 3))) (.var 2)) (.mul (.num 94092) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13197) (.var 2)) (.mul (.num
    60964) (.var 3))) (.var 2)) (.mul (.num 59410) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1476) (.var 2)) (.mul (.num 11920) (.var 3))) (.var
    2)) (.mul (.num 20630) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 60) (.var 2)) (.mul (.num 1105) (.var 3))) (.var 2)) (.mul (.num 3792) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 31) (.var 3)) (.var
    2)) (.mul (.num 316) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 8)
    (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 16308) (.var 1))
    (.add (.mul (.num 58266) (.var 2)) (.mul (.num 25920) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 86380) (.var 2)) (.mul (.num 89904) (.var 3))) (.var 2)) (.mul (.num 11460) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 68903) (.var 2)) (.mul (.num
    128622) (.var 3))) (.var 2)) (.mul (.num 39828) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 31907) (.var 2)) (.mul (.num 98274) (.var 3))) (.var 2)) (.mul
    (.num 57232) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 8560) (.var 2)) (.mul (.num 43140) (.var 3))) (.var 2)) (.mul (.num 43974) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1226) (.var 2))
    (.mul (.num 10790) (.var 3))) (.var 2)) (.mul (.num 19348) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 2)) (.mul (.num 1395) (.var 3)))
    (.var 2)) (.mul (.num 4774) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 69) (.var 3)) (.var 2)) (.mul (.num 578) (.pow (.var 3) 2))) (.pow (.var 2)
    6))) (.var 1)) (.mul (.mul (.num 22) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2268) (.var 1)) (.add (.mul (.num 8916) (.var 2)) (.mul (.num
    4224) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 14686) (.var 2)) (.mul (.num 16428)
    (.var 3))) (.var 2)) (.mul (.num 2208) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 13168) (.var 2)) (.mul (.num 26728) (.var 3))) (.var 2)) (.mul (.num 8772) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6960) (.var 2)) (.mul
    (.num 23634) (.var 3))) (.var 2)) (.mul (.num 14686) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2178) (.var 2)) (.mul (.num 12298) (.var 3)))
    (.var 2)) (.mul (.num 13482) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 376) (.var 2)) (.mul (.num 3780) (.var 3))) (.var 2)) (.mul (.num
    7358) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    28) (.var 2)) (.mul (.num 638) (.var 3))) (.var 2)) (.mul (.num 2398) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 46) (.var 3)) (.var 2)) (.mul
    (.num 434) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 34) (.pow (.var
    3) 2)) (.pow (.var 2) 7))) (.pow (.var 1) 2)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1))
    (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul
    (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num
    20) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 1048) (.var 1)) (.add (.mul (.num 828)
    (.var 2)) (.mul (.num 120) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 160) (.var 2)) (.mul
    (.num 40) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 8178)
    (.var 1)) (.add (.mul (.num 10092) (.var 2)) (.mul (.num 1800) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 4054) (.var 2)) (.mul (.num 1352) (.var 3))) (.var 2)) (.mul (.num 60)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 540) (.var 2)) (.mul (.num
    232) (.var 3))) (.var 2)) (.mul (.num 20) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 37734) (.var 1)) (.add (.mul (.num 62920)
    (.var 2)) (.mul (.num 12208) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 38250) (.var
    2)) (.mul (.num 14312) (.var 3))) (.var 2)) (.mul (.num 800) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 10144) (.var 2)) (.mul (.num 5224) (.var 3))) (.var 2))
    (.mul (.num 596) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1000) (.var 2)) (.mul (.num 600) (.var 3))) (.var 2)) (.mul (.num 96) (.pow (.var 3) 2)))
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 114672) (.var 1)) (.add (.mul (.num 239888) (.var 2)) (.mul (.num 49340) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 194290) (.var 2)) (.mul (.num 78900) (.var 3))) (.var
    2)) (.mul (.num 4812) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    76516) (.var 2)) (.mul (.num 44572) (.var 3))) (.var 2)) (.mul (.num 5620) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14702) (.var 2)) (.mul (.num 10612)
    (.var 3))) (.var 2)) (.mul (.num 1972) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1100) (.var 2)) (.mul (.num 920) (.var 3))) (.var 2)) (.mul
    (.num 204) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 241547) (.var 1)) (.add (.mul (.num 605969)
    (.var 2)) (.mul (.num 131870) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 610571)
    (.var 2)) (.mul (.num 268222) (.var 3))) (.var 2)) (.mul (.num 17212) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 316799) (.var 2)) (.mul (.num 206554) (.var 3)))
    (.var 2)) (.mul (.num 27714) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 89198) (.var 2)) (.mul (.num 75578) (.var 3))) (.var 2)) (.mul (.num 15420) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12828) (.var
    2)) (.mul (.num 13296) (.var 3))) (.var 2)) (.mul (.num 3498) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 720) (.var 2)) (.mul (.num 920) (.var
    3))) (.var 2)) (.mul (.num 280) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 360614) (.var
    1)) (.add (.mul (.num 1052469) (.var 2)) (.mul (.num 243908) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 1264167) (.var 2)) (.mul (.num 604496) (.var 3))) (.var 2)) (.mul (.num
    40603) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 809639) (.var 2))
    (.mul (.num 592724) (.var 3))) (.var 2)) (.mul (.num 84475) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 297461) (.var 2)) (.mul (.num 294984) (.var 3)))
    (.var 2)) (.mul (.num 65847) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 62004) (.var 2)) (.mul (.num 79000) (.var 3))) (.var 2)) (.mul (.num
    24097) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6610) (.var 2)) (.mul (.num 10872) (.var 3))) (.var 2)) (.mul (.num 4222) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 260) (.var 2)) (.mul (.num
    600) (.var 3))) (.var 2)) (.mul (.num 300) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 382288) (.var 1)) (.add (.mul (.num 1269897) (.var 2)) (.mul (.num 316084) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1766006) (.var 2)) (.mul (.num 926428) (.var
    3))) (.var 2)) (.mul (.num 65744) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1339890) (.var 2)) (.mul (.num 1107212) (.var 3))) (.var 2)) (.mul (.num 169807) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 602924) (.var 2)) (.mul
    (.num 700140) (.var 3))) (.var 2)) (.mul (.num 173329) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 162473) (.var 2)) (.mul (.num 253296) (.var 3)))
    (.var 2)) (.mul (.num 89965) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 24834) (.var 2)) (.mul (.num 52368) (.var 3))) (.var 2)) (.mul (.num
    25387) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1832) (.var 2)) (.mul (.num 5656) (.var 3))) (.var 2)) (.mul (.num 3788) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40) (.var 2)) (.mul (.num
    232) (.var 3))) (.var 2)) (.mul (.num 240) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 282480) (.var 1)) (.add (.mul (.num 1050349) (.var 2)) (.mul (.num
    282928) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1655367) (.var 2)) (.mul (.num
    958634) (.var 3))) (.var 2)) (.mul (.num 72825) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1446060) (.var 2)) (.mul (.num 1353340) (.var 3))) (.var 2)) (.mul
    (.num 226589) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    765492) (.var 2)) (.mul (.num 1039456) (.var 3))) (.var 2)) (.mul (.num 289035) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 250471) (.var 2)) (.mul
    (.num 474292) (.var 3))) (.var 2)) (.mul (.num 196949) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48963) (.var 2)) (.mul (.num 130810) (.var 3)))
    (.var 2)) (.mul (.num 78052) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 5108) (.var 2)) (.mul (.num 20880) (.var 3))) (.var 2)) (.mul (.num
    18150) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    206) (.var 2)) (.mul (.num 1660) (.var 3))) (.var 2)) (.mul (.num 2292) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 40) (.var 3)) (.var 2)) (.mul
    (.num 116) (.pow (.var 3) 2))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 138757) (.var 1)) (.add (.mul (.num 569888) (.var 2)) (.mul (.num 167110) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 1001140) (.var 2)) (.mul (.num 642712) (.var 3)))
    (.var 2)) (.mul (.num 52852) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 985827) (.var 2)) (.mul (.num 1046216) (.var 3))) (.var 2)) (.mul (.num 193189) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 596812) (.var 2)) (.mul
    (.num 944600) (.var 3))) (.var 2)) (.mul (.num 296953) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 227755) (.var 2)) (.mul (.num 519176) (.var 3)))
    (.var 2)) (.mul (.num 251621) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 53449) (.var 2)) (.mul (.num 178254) (.var 3))) (.var 2)) (.mul (.num
    128981) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    7018) (.var 2)) (.mul (.num 37274) (.var 3))) (.var 2)) (.mul (.num 40924) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 390) (.var 2)) (.mul (.num
    4290) (.var 3))) (.var 2)) (.mul (.num 7742) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.mul (.num 200) (.var 3)) (.var 2)) (.mul (.num 758) (.pow (.var 3) 2)))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.mul (.num 24) (.pow (.var 3) 2)) (.pow (.var 2) 8))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40824) (.var 1)) (.add (.mul (.num 183162)
    (.var 2)) (.mul (.num 58740) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 353878) (.var
    2)) (.mul (.num 252576) (.var 3))) (.var 2)) (.mul (.num 22686) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 386313) (.var 2)) (.mul (.num 464980) (.var 3))) (.var 2))
    (.mul (.num 95394) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 261813) (.var 2)) (.mul (.num 481250) (.var 3))) (.var 2)) (.mul (.num 171707) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 113237) (.var
    2)) (.mul (.num 308152) (.var 3))) (.var 2)) (.mul (.num 173947) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30615) (.var 2)) (.mul (.num
    125752) (.var 3))) (.var 2)) (.mul (.num 109240) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 4740) (.var 2)) (.mul (.num 32112) (.var 3))) (.var
    2)) (.mul (.num 43790) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 322) (.var 2)) (.mul (.num 4710) (.var 3))) (.var 2)) (.mul (.num 10961)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 304) (.var 3))
    (.var 2)) (.mul (.num 1557) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.mul
    (.num 94) (.pow (.var 3) 2)) (.pow (.var 2) 8))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 5454) (.var 1)) (.add (.mul (.num 26478) (.var 2)) (.mul (.num 9324) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 55629) (.var 2)) (.mul (.num 44244) (.var 3)))
    (.var 2)) (.mul (.num 4380) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    66408) (.var 2)) (.mul (.num 90642) (.var 3))) (.var 2)) (.mul (.num 20826) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 49534) (.var 2)) (.mul (.num
    105384) (.var 3))) (.var 2)) (.mul (.num 42938) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 23756) (.var 2)) (.mul (.num 76596) (.var 3))) (.var
    2)) (.mul (.num 50551) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 7185) (.var 2)) (.mul (.num 35892) (.var 3))) (.var 2)) (.mul (.num 37499)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1258)
    (.var 2)) (.mul (.num 10662) (.var 3))) (.var 2)) (.mul (.num 18094) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 98) (.var 2)) (.mul (.num 1848)
    (.var 3))) (.var 2)) (.mul (.num 5584) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 144) (.var 3)) (.var 2)) (.mul (.num 1013) (.pow (.var 3) 2))) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.mul (.num 83) (.pow (.var 3) 2)) (.pow (.var 2) 8))) (.pow
    (.var 1) 2)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1))
    (.var 2))) 2))) (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 150)
    (.var 1)) (.mul (.num 50) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 2180) (.var 1))
    (.add (.mul (.num 1670) (.var 2)) (.mul (.num 300) (.var 3)))) (.var 1)) (.mul (.add (.mul
    (.num 310) (.var 2)) (.mul (.num 100) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.num 14338) (.var 1)) (.add (.mul (.num 17062) (.var 2)) (.mul (.num 3620) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 6494) (.var 2)) (.mul (.num 2580) (.var 3)))
    (.var 2)) (.mul (.num 150) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    810) (.var 2)) (.mul (.num 400) (.var 3))) (.var 2)) (.mul (.num 50) (.pow (.var 3) 2))) (.var
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 55800) (.var 1)) (.add
    (.mul (.num 89498) (.var 2)) (.mul (.num 19890) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 51382) (.var 2)) (.mul (.num 21652) (.var 3))) (.var 2)) (.mul (.num 1560) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12674) (.var 2)) (.mul (.num 6838)
    (.var 3))) (.var 2)) (.mul (.num 1090) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1150) (.var 2)) (.mul (.num 596) (.var 3))) (.var 2)) (.mul (.num 150)
    (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 141566) (.var 1)) (.add (.mul (.num 284122) (.var 2)) (.mul (.num
    64774) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 216908) (.var 2)) (.mul (.num
    94730) (.var 3))) (.var 2)) (.mul (.num 7315) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 79248) (.var 2)) (.mul (.num 45406) (.var 3))) (.var 2)) (.mul (.num 7706)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13966) (.var 2))
    (.mul (.num 7994) (.var 3))) (.var 2)) (.mul (.num 2109) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 950) (.var 2)) (.mul (.num 384) (.var 3)))
    (.var 2)) (.mul (.num 98) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 243760) (.var 1)) (.add (.mul
    (.num 584850) (.var 2)) (.mul (.num 137656) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 554256) (.var 2)) (.mul (.num 253618) (.var 3))) (.var 2)) (.mul (.num 20075) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 266216) (.var 2)) (.mul (.num
    164688) (.var 3))) (.var 2)) (.mul (.num 28238) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 68530) (.var 2)) (.mul (.num 44794) (.var 3))) (.var 2)) (.mul
    (.num 11635) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 8930) (.var 2)) (.mul (.num 4544) (.var 3))) (.var 2)) (.mul (.num 1066) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 450) (.var 2)) (.mul
    (.num 76) (.var 3))) (.var 2)) (.mul (.neg (.num 106)) (.pow (.var 3) 2))) (.pow (.var 2)
    4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 287722) (.var 1)) (.add (.mul (.num 800310) (.var 2)) (.mul (.num 198084) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 901848) (.var 2)) (.mul (.num 443344) (.var 3)))
    (.var 2)) (.mul (.num 35738) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 533482) (.var 2)) (.mul (.num 368816) (.var 3))) (.var 2)) (.mul (.num 64007) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 178644) (.var 2)) (.mul
    (.num 140640) (.var 3))) (.var 2)) (.mul (.num 36945) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33586) (.var 2)) (.mul (.num 24096) (.var 3)))
    (.var 2)) (.mul (.num 6393) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 3194) (.var 2)) (.mul (.num 1396) (.var 3))) (.var 2)) (.mul (.neg
    (.num 537)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 110) (.var 2)) (.mul (.neg (.num 16)) (.var 3))) (.var 2)) (.mul (.neg (.num 154)) (.pow
    (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 229370) (.var 1)) (.add (.mul (.num
    723650) (.var 2)) (.mul (.num 192328) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    941744) (.var 2)) (.mul (.num 510436) (.var 3))) (.var 2)) (.mul (.num 42934) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 658556) (.var 2)) (.mul (.num 525240)
    (.var 3))) (.var 2)) (.mul (.num 96512) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 269374) (.var 2)) (.mul (.num 265456) (.var 3))) (.var 2)) (.mul (.num
    77206) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    65208) (.var 2)) (.mul (.num 68726) (.var 3))) (.var 2)) (.mul (.num 25220) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8842) (.var 2)) (.mul
    (.num 8552) (.var 3))) (.var 2)) (.mul (.num 2192) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 566) (.var 2)) (.mul (.num 386) (.var 3))) (.var
    2)) (.mul (.neg (.num 346)) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.neg (.num 4)) (.var 3))) (.var 2)) (.mul (.neg
    (.num 46)) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 117952)
    (.var 1)) (.add (.mul (.num 415322) (.var 2)) (.mul (.num 120452) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 611306) (.var 2)) (.mul (.num 371788) (.var 3))) (.var 2)) (.mul (.num
    33782) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 491472) (.var 2))
    (.mul (.num 459960) (.var 3))) (.var 2)) (.mul (.num 94094) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 236086) (.var 2)) (.mul (.num 294016) (.var 3)))
    (.var 2)) (.mul (.num 101460) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 69204) (.var 2)) (.mul (.num 104686) (.var 3))) (.var 2)) (.mul (.num
    53834) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    11958) (.var 2)) (.mul (.num 20978) (.var 3))) (.var 2)) (.mul (.num 14959) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1080) (.var 2)) (.mul
    (.num 2274) (.var 3))) (.var 2)) (.mul (.num 2234) (.pow (.var 3) 2))) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36) (.var 2)) (.mul (.num 110) (.var 3))) (.var
    2)) (.mul (.num 187) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 6)
    (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 35262)
    (.var 1)) (.add (.mul (.num 136896) (.var 2)) (.mul (.num 43644) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 224428) (.var 2)) (.mul (.num 154032) (.var 3))) (.var 2)) (.mul (.num
    15444) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 203374) (.var 2))
    (.mul (.num 223460) (.var 3))) (.var 2)) (.mul (.num 52056) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 111722) (.var 2)) (.mul (.num 173484) (.var 3)))
    (.var 2)) (.mul (.num 71882) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 38178) (.var 2)) (.mul (.num 78852) (.var 3))) (.var 2)) (.mul (.num
    53392) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    7916) (.var 2)) (.mul (.num 21662) (.var 3))) (.var 2)) (.mul (.num 23779) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 902) (.var 2)) (.mul (.num
    3580) (.var 3))) (.var 2)) (.mul (.num 6726) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 42) (.var 2)) (.mul (.num 330) (.var 3))) (.var 2)) (.mul
    (.num 1197) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num
    12) (.var 3)) (.var 2)) (.mul (.num 110) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1))
    (.mul (.mul (.num 2) (.pow (.var 3) 2)) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 4644) (.var 1)) (.add (.mul (.num 19698) (.var 2)) (.mul (.num 6888) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 35564) (.var 2)) (.mul (.num 27396) (.var 3)))
    (.var 2)) (.mul (.num 3024) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    35808) (.var 2)) (.mul (.num 45644) (.var 3))) (.var 2)) (.mul (.num 11988) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 22080) (.var 2)) (.mul (.num
    41680) (.var 3))) (.var 2)) (.mul (.num 20146) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 8576) (.var 2)) (.mul (.num 22956) (.var 3))) (.var
    2)) (.mul (.num 18994) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2056) (.var 2)) (.mul (.num 7916) (.var 3))) (.var 2)) (.mul (.num 11234)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 278)
    (.var 2)) (.mul (.num 1708) (.var 3))) (.var 2)) (.mul (.num 4387) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 2)) (.mul (.num 216)
    (.var 3))) (.var 2)) (.mul (.num 1125) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 12) (.var 3)) (.var 2)) (.mul (.num 171) (.pow (.var 3) 2))) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.mul (.num 11) (.pow (.var 3) 2)) (.pow (.var 2) 8))) (.var
    1)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1))
    (.var 2))) 2)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.mul
    (.mul (.num 24) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2)
    (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 10) (.var 2)) (.mul (.num 4) (.var 3))) (.var 2)) (.mul (.num 2) (.pow (.var
    3) 2)))) (.var 0)) (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 4) (.var 3))) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 2) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow
    (.var 2) 3))) (.var 0))) (.pow (.var 0) 3)) (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 5) (.var 0)) (.add (.mul (.num 11) (.var 2)) (.mul (.num
    10) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 7) (.var 2)) (.mul (.neg (.num 8))
    (.var 3))) (.var 2)) (.mul (.num 5) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul (.neg (.num 9))
    (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var
    2) 2))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3)))) (.pow (.var 0)
    4))) (.mul (.mul (.num 8) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 2)
    (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num
    20) (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 0)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.pow (.var 0) 3)))
    (.pow (.var 0) 1))) (.mul (.mul (.num 4) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 9) (.var 0)) (.add (.mul (.num 27) (.var 2)) (.mul (.num 18) (.var 3))))
    (.var 0)) (.add (.mul (.add (.mul (.num 27) (.var 2)) (.mul (.num 46) (.var 3))) (.var 2))
    (.mul (.num 9) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 2))
    (.mul (.num 38) (.var 3))) (.var 2)) (.mul (.num 19) (.pow (.var 3) 2))) (.var 2))) (.var 0))
    (.mul (.add (.mul (.mul (.num 10) (.var 3)) (.var 2)) (.mul (.num 11) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.pow (.var 0) 2))) (.pow (.var 0) 2))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.mul (.mul (.num 12) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 6) (.var 0)) (.add (.mul (.num 84) (.var 2)) (.mul (.num 12) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 371) (.var 2)) (.mul (.num 128) (.var 3))) (.var
    2)) (.mul (.num 6) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 785)
    (.var 2)) (.mul (.num 362) (.var 3))) (.var 2)) (.mul (.num 56) (.pow (.var 3) 2))) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 902) (.var 2)) (.mul (.num 520) (.var 3))) (.var
    2)) (.mul (.num 125) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 572) (.var 2)) (.mul (.num 524) (.var 3))) (.var 2)) (.mul (.num 167) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 185) (.var 2)) (.mul
    (.num 384) (.var 3))) (.var 2)) (.mul (.num 246) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 23) (.var 2)) (.mul (.num 158) (.var 3))) (.var 2))
    (.mul (.num 256) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul
    (.num 24) (.var 3)) (.var 2)) (.mul (.num 119) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var
    0)) (.mul (.mul (.num 17) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 0))) (.pow (.var 0) 3))
    (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 15) (.var 0)) (.add (.mul (.num 170) (.var 2)) (.mul
    (.num 30) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 573) (.var 2)) (.mul (.num 240)
    (.var 3))) (.var 2)) (.mul (.num 15) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 892) (.var 2)) (.mul (.num 334) (.var 3))) (.var 2)) (.mul (.num 100) (.pow (.var
    3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 721) (.var 2)) (.mul (.neg
    (.num 22)) (.var 3))) (.var 2)) (.mul (.num 56) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 302) (.var 2)) (.mul (.neg (.num 174)) (.var 3)))
    (.var 2)) (.mul (.neg (.num 121)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 59) (.var 2)) (.mul (.neg (.num 36)) (.var 3))) (.var 2)) (.mul
    (.neg (.num 5)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 4) (.var 2)) (.mul (.num 10) (.var 3))) (.var 2)) (.mul (.num 106) (.pow (.var 3)
    2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var 2)) (.mul
    (.num 38) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var
    3) 2)) (.pow (.var 2) 7)))) (.pow (.var 0) 4))) (.mul (.mul (.num 6) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 12) (.var 0)) (.add (.mul (.num 172) (.var 2)) (.mul (.num 24) (.var 3)))) (.var 0))
    (.add (.mul (.add (.mul (.num 786) (.var 2)) (.mul (.num 300) (.var 3))) (.var 2)) (.mul (.num
    12) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1734) (.var 2)) (.mul
    (.num 1152) (.var 3))) (.var 2)) (.mul (.num 140) (.pow (.var 3) 2))) (.var 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 2098) (.var 2)) (.mul (.num 2238) (.var 3))) (.var 2))
    (.mul (.num 504) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1422) (.var 2)) (.mul (.num 2536) (.var 3))) (.var 2)) (.mul (.num 972) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 504) (.var 2))
    (.mul (.num 1704) (.var 3))) (.var 2)) (.mul (.num 1170) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 2)) (.mul (.num 624) (.var 3)))
    (.var 2)) (.mul (.num 870) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.mul (.num 94) (.var 3)) (.var 2)) (.mul (.num 354) (.pow (.var 3) 2))) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.mul (.num 58) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 3)))
    (.pow (.var 0) 1))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 54) (.var 0)) (.add (.mul
    (.num 690) (.var 2)) (.mul (.num 108) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num
    2760) (.var 2)) (.mul (.num 1158) (.var 3))) (.var 2)) (.mul (.num 54) (.pow (.var 3) 2))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5348) (.var 2)) (.mul (.num 3538) (.var 3)))
    (.var 2)) (.mul (.num 522) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 5714) (.var 2)) (.mul (.num 5372) (.var 3))) (.var 2)) (.mul (.num 1363) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3434) (.var
    2)) (.mul (.num 4896) (.var 3))) (.var 2)) (.mul (.num 1833) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1080) (.var 2)) (.mul (.num 2814) (.var
    3))) (.var 2)) (.mul (.num 1720) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 136) (.var 2)) (.mul (.num 930) (.var 3))) (.var 2)) (.mul (.num 1180)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 128) (.var 3))
    (.var 2)) (.mul (.num 471) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num
    73) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 2))) (.pow (.var 0) 2))) (.mul (.num
    1) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 39) (.var 0)) (.add (.mul (.num 528) (.var 2)) (.mul (.num 78)
    (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 2275) (.var 2)) (.mul (.num 1006) (.var
    3))) (.var 2)) (.mul (.num 39) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 4784) (.var 2)) (.mul (.num 4118) (.var 3))) (.var 2)) (.mul (.num 478) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5581) (.var 2)) (.mul (.num
    8226) (.var 3))) (.var 2)) (.mul (.num 1851) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 3688) (.var 2)) (.mul (.num 9114) (.var 3))) (.var 2))
    (.mul (.num 3482) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1289) (.var 2)) (.mul (.num 5714) (.var 3))) (.var 2)) (.mul (.num 3613) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 184) (.var 2))
    (.mul (.num 1890) (.var 3))) (.var 2)) (.mul (.num 2106) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 0)) (.mul (.add (.mul (.mul (.num 254) (.var 3)) (.var 2)) (.mul (.num 641) (.pow
    (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 78) (.pow (.var 3) 2)) (.pow
    (.var 2) 7))) (.pow (.var 0) 4)))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh3201.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh3201.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh3201.leading0 e g v + f * FullHigh3201.leading1 e g v +
        f^2 * FullHigh3201.remainder e f g v := by
  have hden : denominatorOne FullHigh3201.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh3201.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh3201.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 68719476736 17 10 2) lhs =
      value (Encoding4.vars 68719476736 17 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 68719476736 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 17 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 17 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh3201.source e f g v =
      FullHigh3201.leading0 e g v + f * FullHigh3201.leading1 e g v +
        f^2 * FullHigh3201.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 68719476736 17 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh320Encoded1

namespace SPR.N6.Tail.CoreEndpoint.FullHigh320
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition1 (e f g v : ℝ) :
    FullHigh3201.source e f g v =
      FullHigh3201.leading0 e g v + f * FullHigh3201.leading1 e g v +
        f^2 * FullHigh3201.remainder e f g v :=
  FullHigh320Encoded1.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh320
