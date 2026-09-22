import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^2 layer of FullHigh005.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh005Encoded2
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 9) (.var 1)) (.mul (.num 3) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.num 75) (.var 1)) (.add (.mul (.num 54) (.var 2)) (.mul (.num 18) (.var 3))))
    (.var 1)) (.mul (.add (.mul (.num 9) (.var 2)) (.mul (.num 6) (.var 3))) (.var 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.num 264) (.var 1)) (.add (.mul (.num 288) (.var 2))
    (.mul (.num 120) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 93) (.var 2)) (.mul (.num
    84) (.var 3))) (.var 2)) (.mul (.num 9) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 9) (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.num 3) (.pow (.var 3)
    2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 492) (.var
    1)) (.add (.mul (.num 705) (.var 2)) (.mul (.num 330) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 327) (.var 2)) (.mul (.num 348) (.var 3))) (.var 2)) (.mul (.num 45) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 57) (.var 2)) (.mul (.num 96) (.var
    3))) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 3) (.var 2)) (.mul (.num 6) (.var 3))) (.var 2)) (.mul (.num 3) (.pow (.var
    3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 507) (.var 1)) (.add (.mul (.num 882) (.var 2)) (.mul (.num 450) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 513) (.var 2)) (.mul (.num 618) (.var 3))) (.var 2)) (.mul
    (.num 87) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 117) (.var 2))
    (.mul (.num 240) (.var 3))) (.var 2)) (.mul (.num 81) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 9) (.var 2)) (.mul (.num 24) (.var 3))) (.var 2)) (.mul
    (.num 9) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.neg (.num 3)) (.pow
    (.var 3) 2)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 273) (.var 1)) (.add (.mul (.num 549) (.var 2)) (.mul (.num 312)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 372) (.var 2)) (.mul (.num 528) (.var 3)))
    (.var 2)) (.mul (.num 69) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    99) (.var 2)) (.mul (.num 264) (.var 3))) (.var 2)) (.mul (.num 69) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 2)) (.mul (.num 36) (.var 3)))
    (.var 2)) (.mul (.neg (.num 12)) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.mul
    (.neg (.num 21)) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.neg (.num 3))
    (.pow (.var 3) 2)) (.pow (.var 2) 4)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.add (.mul (.num 135) (.var 2)) (.mul
    (.num 90) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 102) (.var 2)) (.mul (.num 180)
    (.var 3))) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 30) (.var 2)) (.mul (.num 108) (.var 3))) (.var 2)) (.mul (.num 45) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.num 18)
    (.var 3))) (.var 2)) (.mul (.num 6) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.mul (.neg (.num 12)) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.neg
    (.num 3)) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var
    1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5)) (.mul (.mul (.num 1) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 75)
    (.var 1)) (.mul (.num 25) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 800) (.var 1))
    (.add (.mul (.num 595) (.var 2)) (.mul (.num 150) (.var 3)))) (.var 1)) (.mul (.add (.mul
    (.num 105) (.var 2)) (.mul (.num 50) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.num 3743) (.var 1)) (.add (.mul (.num 4277) (.var 2)) (.mul (.num 1310) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1514) (.var 2)) (.mul (.num 930) (.var 3)))
    (.var 2)) (.mul (.num 75) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    170) (.var 2)) (.mul (.num 140) (.var 3))) (.var 2)) (.mul (.num 25) (.pow (.var 3) 2))) (.var
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9933) (.var 1)) (.add
    (.mul (.num 15169) (.var 2)) (.mul (.num 5010) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 7982) (.var 2)) (.mul (.num 5432) (.var 3))) (.var 2)) (.mul (.num 530) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1726) (.var 2)) (.mul (.num 1658) (.var
    3))) (.var 2)) (.mul (.num 365) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 130) (.var 2)) (.mul (.num 136) (.var 3))) (.var 2)) (.mul (.num 45) (.pow
    (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 16254) (.var 1)) (.add (.mul (.num 30819) (.var 2)) (.mul (.num 10712) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 21282) (.var 2)) (.mul (.num 15572) (.var 3)))
    (.var 2)) (.mul (.num 1600) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6657) (.var 2)) (.mul (.num 7176) (.var 3))) (.var 2)) (.mul (.num 1636) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 935) (.var 2)) (.mul (.num 1168)
    (.var 3))) (.var 2)) (.mul (.num 374) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 45) (.var 2)) (.mul (.num 52) (.var 3))) (.var 2)) (.mul (.neg
    (.num 2)) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 16735) (.var 1)) (.add (.mul (.num 37664)
    (.var 2)) (.mul (.num 13822) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 31902) (.var
    2)) (.mul (.num 25262) (.var 3))) (.var 2)) (.mul (.num 2589) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 12850) (.var 2)) (.mul (.num 15694) (.var 3))) (.var 2))
    (.mul (.num 3454) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2541) (.var 2)) (.mul (.num 3894) (.var 3))) (.var 2)) (.mul (.num 1085) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 219) (.var 2)) (.mul (.num
    346) (.var 3))) (.var 2)) (.mul (.neg (.num 82)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 2)) (.mul (.num 6) (.var 3))) (.var 2)) (.mul
    (.neg (.num 42)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 10564) (.var 1)) (.add (.mul
    (.num 27397) (.var 2)) (.mul (.num 10776) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    27316) (.var 2)) (.mul (.num 23870) (.var 3))) (.var 2)) (.mul (.num 2466) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13322) (.var 2)) (.mul (.num 18894) (.var
    3))) (.var 2)) (.mul (.num 4167) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 3327) (.var 2)) (.mul (.num 6490) (.var 3))) (.var 2)) (.mul (.num 1818)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 394)
    (.var 2)) (.mul (.num 932) (.var 3))) (.var 2)) (.mul (.neg (.num 149)) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 2)) (.mul (.num
    42) (.var 3))) (.var 2)) (.mul (.neg (.num 199)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.mul (.neg (.num 23)) (.pow (.var 3) 2)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    3732) (.var 1)) (.add (.mul (.num 10930) (.var 2)) (.mul (.num 4676) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 12493) (.var 2)) (.mul (.num 12236) (.var 3))) (.var 2)) (.mul
    (.num 1362) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7112) (.var 2))
    (.mul (.num 11882) (.var 3))) (.var 2)) (.mul (.num 2964) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2121) (.var 2)) (.mul (.num 5310) (.var 3))) (.var 2))
    (.mul (.num 2003) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 311) (.var 2)) (.mul (.num 1096) (.var 3))) (.var 2)) (.mul (.num 270) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17) (.var 2)) (.mul
    (.num 90) (.var 3))) (.var 2)) (.mul (.neg (.num 169)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var 2)) (.mul (.neg (.num 51)) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.neg (.num 3)) (.pow (.var 3) 2))
    (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 564) (.var 1)) (.add (.mul (.num 1840) (.var
    2)) (.mul (.num 860) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2370) (.var 2)) (.mul
    (.num 2608) (.var 3))) (.var 2)) (.mul (.num 324) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1539) (.var 2)) (.mul (.num 3024) (.var 3))) (.var 2)) (.mul (.num
    894) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 530) (.var
    2)) (.mul (.num 1682) (.var 3))) (.var 2)) (.mul (.num 882) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 91) (.var 2)) (.mul (.num 458) (.var 3)))
    (.var 2)) (.mul (.num 353) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 6) (.var 2)) (.mul (.num 54) (.var 3))) (.var 2)) (.mul (.num 30) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var
    2)) (.mul (.neg (.num 13)) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.neg
    (.num 2)) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var
    1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4))) (.mul (.mul (.num 1) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num 20) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.num 932) (.var 1)) (.add (.mul (.num 732) (.var 2)) (.mul (.num 120) (.var 3))))
    (.var 1)) (.mul (.add (.mul (.num 140) (.var 2)) (.mul (.num 40) (.var 3))) (.var 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.num 6368) (.var 1)) (.add (.mul (.num 7782) (.var
    2)) (.mul (.num 1600) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 3074) (.var 2))
    (.mul (.num 1208) (.var 3))) (.var 2)) (.mul (.num 60) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 400) (.var 2)) (.mul (.num 208) (.var 3))) (.var 2)) (.mul (.num
    20) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 25302) (.var 1)) (.add (.mul (.num 41652) (.var 2)) (.mul (.num 9468) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 24772) (.var 2)) (.mul (.num 11164) (.var 3))) (.var 2))
    (.mul (.num 700) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6362)
    (.var 2)) (.mul (.num 4088) (.var 3))) (.var 2)) (.mul (.num 524) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 600) (.var 2)) (.mul (.num 472) (.var 3)))
    (.var 2)) (.mul (.num 84) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 64972) (.var 1)) (.add (.mul (.num 133840)
    (.var 2)) (.mul (.num 32688) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 105578) (.var
    2)) (.mul (.num 52544) (.var 3))) (.var 2)) (.mul (.num 3606) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 39966) (.var 2)) (.mul (.num 29696) (.var 3))) (.var 2))
    (.mul (.num 4238) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    7256) (.var 2)) (.mul (.num 7048) (.var 3))) (.var 2)) (.mul (.num 1484) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 500) (.var 2)) (.mul (.num
    608) (.var 3))) (.var 2)) (.mul (.num 152) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 113017) (.var
    1)) (.add (.mul (.num 278571) (.var 2)) (.mul (.num 72780) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 272283) (.var 2)) (.mul (.num 148632) (.var 3))) (.var 2)) (.mul (.num
    10772) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 134887) (.var 2))
    (.mul (.num 114092) (.var 3))) (.var 2)) (.mul (.num 17464) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 35494) (.var 2)) (.mul (.num 41268) (.var 3)))
    (.var 2)) (.mul (.num 9686) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4616) (.var 2)) (.mul (.num 7100) (.var 3))) (.var 2)) (.mul (.num
    2162) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    220) (.var 2)) (.mul (.num 472) (.var 3))) (.var 2)) (.mul (.num 168) (.pow (.var 3) 2)))
    (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 135235) (.var 1)) (.add (.mul (.num 387021) (.var 2)) (.mul
    (.num 108614) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 449265) (.var 2)) (.mul
    (.num 269822) (.var 3))) (.var 2)) (.mul (.num 20584) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 273001) (.var 2)) (.mul (.num 262614) (.var 3))) (.var 2)) (.mul
    (.num 43136) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    92792) (.var 2)) (.mul (.num 128134) (.var 3))) (.var 2)) (.mul (.num 33460) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17204) (.var 2)) (.mul
    (.num 33060) (.var 3))) (.var 2)) (.mul (.num 11980) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1514) (.var 2)) (.mul (.num 4260) (.var 3)))
    (.var 2)) (.mul (.num 2004) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 40) (.var 2)) (.mul (.num 208) (.var 3))) (.var 2)) (.mul (.num 132)
    (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 110179) (.var 1)) (.add (.mul
    (.num 358212) (.var 2)) (.mul (.num 108676) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 479687) (.var 2)) (.mul (.num 318588) (.var 3))) (.var 2)) (.mul (.num 25891) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 343195) (.var 2)) (.mul (.num
    376184) (.var 3))) (.var 2)) (.mul (.num 67365) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 141470) (.var 2)) (.mul (.num 231252) (.var 3))) (.var 2)) (.mul
    (.num 68315) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 33377) (.var 2)) (.mul (.num 79476) (.var 3))) (.var 2)) (.mul (.num 34551) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4102) (.var 2))
    (.mul (.num 15044) (.var 3))) (.var 2)) (.mul (.num 9234) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 194) (.var 2)) (.mul (.num 1388) (.var 3)))
    (.var 2)) (.mul (.num 1252) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 40) (.var 3)) (.var 2)) (.mul (.num 68) (.pow (.var 3) 2))) (.pow (.var 2)
    6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 58611) (.var 1)) (.add (.mul (.num 212897) (.var 2)) (.mul
    (.num 70238) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 321899) (.var 2)) (.mul (.num
    237430) (.var 3))) (.var 2)) (.mul (.num 20859) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 263513) (.var 2)) (.mul (.num 329498) (.var 3))) (.var 2)) (.mul (.num
    65347) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 126522)
    (.var 2)) (.mul (.num 243902) (.var 3))) (.var 2)) (.mul (.num 82641) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 35676) (.var 2)) (.mul (.num
    104264) (.var 3))) (.var 2)) (.mul (.num 54653) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5462) (.var 2)) (.mul (.num 25760) (.var 3))) (.var
    2)) (.mul (.num 20394) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 348) (.var 2)) (.mul (.num 3392) (.var 3))) (.var 2)) (.mul (.num 4270)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 180) (.var 3))
    (.var 2)) (.mul (.num 452) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num
    16) (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18414)
    (.var 1)) (.add (.mul (.num 73731) (.var 2)) (.mul (.num 26586) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 123778) (.var 2)) (.mul (.num 101726) (.var 3))) (.var 2)) (.mul (.num
    9780) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 113472) (.var 2))
    (.mul (.num 161912) (.var 3))) (.var 2)) (.mul (.num 35961) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 61668) (.var 2)) (.mul (.num 139632) (.var 3)))
    (.var 2)) (.mul (.num 54660) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 19957) (.var 2)) (.mul (.num 70894) (.var 3))) (.var 2)) (.mul (.num
    44744) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    3574) (.var 2)) (.mul (.num 21322) (.var 3))) (.var 2)) (.mul (.num 21446) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 274) (.var 2)) (.mul (.num
    3540) (.var 3))) (.var 2)) (.mul (.num 6059) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.mul (.num 252) (.var 3)) (.var 2)) (.mul (.num 940) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 62) (.pow (.var 3) 2)) (.pow (.var 2) 7)))
    (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2598) (.var 1)) (.add (.mul (.num 11338) (.var
    2)) (.mul (.num 4490) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 20844) (.var 2))
    (.mul (.num 19146) (.var 3))) (.var 2)) (.mul (.num 2040) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 21036) (.var 2)) (.mul (.num 34260) (.var 3))) (.var 2)) (.mul
    (.num 8622) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    12662) (.var 2)) (.mul (.num 33540) (.var 3))) (.var 2)) (.mul (.num 15306) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4570) (.var 2)) (.mul
    (.num 19538) (.var 3))) (.var 2)) (.mul (.num 14904) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 920) (.var 2)) (.mul (.num 6818) (.var 3)))
    (.var 2)) (.mul (.num 8676) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 80) (.var 2)) (.mul (.num 1328) (.var 3))) (.var 2)) (.mul (.num 3046)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 112) (.var 3))
    (.var 2)) (.mul (.num 602) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num
    52) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 1) 2)))) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.mul (.mul
    (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add (.mul
    (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10)
    (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul
    (.num 4) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3))
    (.var 2)) (.mul (.num 2) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.pow (.var 0) 3))) (.pow
    (.var 0) 2)) (.mul (.mul (.num 4) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 7) (.var 0)) (.add (.mul (.num 19) (.var 2)) (.mul (.num 14) (.var 3)))) (.var 0))
    (.add (.mul (.add (.mul (.num 17) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num
    7) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 2)) (.mul (.num
    6) (.var 3))) (.var 2)) (.mul (.num 1) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.neg (.num 3)) (.pow (.var 3) 2))) (.pow (.var
    2) 2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 0))) (.pow
    (.var 0) 3))) (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8)
    (.var 0)) (.add (.mul (.num 17) (.var 2)) (.mul (.num 16) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 10) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul (.num 8)
    (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.neg
    (.num 2)) (.var 3))) (.var 2)) (.mul (.neg (.num 9)) (.pow (.var 3) 2))) (.var 2))) (.pow
    (.var 0) 2)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3)))) (.pow (.var 0) 4))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.mul (.mul (.num 3) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 6) (.var 0)) (.add (.mul (.num 86) (.var 2)) (.mul (.num 12) (.var 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.num 395) (.var 2)) (.mul (.num 156) (.var 3))) (.var 2)) (.mul (.num 6)
    (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 877) (.var 2)) (.mul (.num
    630) (.var 3))) (.var 2)) (.mul (.num 70) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1068) (.var 2)) (.mul (.num 1234) (.var 3))) (.var 2)) (.mul (.num
    239) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    728) (.var 2)) (.mul (.num 1336) (.var 3))) (.var 2)) (.mul (.num 377) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 259) (.var 2)) (.mul (.num
    816) (.var 3))) (.var 2)) (.mul (.num 308) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 37) (.var 2)) (.mul (.num 262) (.var 3))) (.var 2)) (.mul
    (.num 128) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 34)
    (.var 3)) (.var 2)) (.mul (.num 23) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 3))) (.pow (.var 0) 1))
    (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 27) (.var 0)) (.add (.mul (.num 345) (.var 2))
    (.mul (.num 54) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 1385) (.var 2)) (.mul
    (.num 594) (.var 3))) (.var 2)) (.mul (.num 27) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 2694) (.var 2)) (.mul (.num 1884) (.var 3))) (.var 2)) (.mul (.num
    261) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2885) (.var
    2)) (.mul (.num 2860) (.var 3))) (.var 2)) (.mul (.num 649) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1733) (.var 2)) (.mul (.num 2472) (.var
    3))) (.var 2)) (.mul (.num 680) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 543) (.var 2)) (.mul (.num 1312) (.var 3))) (.var 2)) (.mul (.num 383)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 68)
    (.var 2)) (.mul (.num 414) (.var 3))) (.var 2)) (.mul (.num 203) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 58) (.var 3)) (.var 2)) (.mul (.num 109)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 24) (.pow (.var 3) 2))
    (.pow (.var 2) 7))) (.pow (.var 0) 2))) (.pow (.var 0) 2))) (.mul (.mul (.num 1) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 45) (.var 0)) (.add (.mul (.num 531) (.var 2)) (.mul (.num 90) (.var 3))))
    (.var 0)) (.add (.mul (.add (.mul (.num 1908) (.var 2)) (.mul (.num 858) (.var 3))) (.var 2))
    (.mul (.num 45) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3246) (.var
    2)) (.mul (.num 2074) (.var 3))) (.var 2)) (.mul (.num 369) (.pow (.var 3) 2))) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2964) (.var 2)) (.mul (.num 2138) (.var 3)))
    (.var 2)) (.mul (.num 616) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1472) (.var 2)) (.mul (.num 1180) (.var 3))) (.var 2)) (.mul (.num 224)
    (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 367)
    (.var 2)) (.mul (.num 494) (.var 3))) (.var 2)) (.mul (.neg (.num 46)) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 35) (.var 2)) (.mul (.num
    172) (.var 3))) (.var 2)) (.mul (.num 122) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.mul (.num 26) (.var 3)) (.var 2)) (.mul (.num 121) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 21) (.pow (.var 3) 2)) (.pow (.var 2) 7)))
    (.var 0))) (.pow (.var 0) 3))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh0052.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh0052.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh0052.leading0 e g v + f * FullHigh0052.leading1 e g v +
        f^2 * FullHigh0052.remainder e f g v := by
  have hden : denominatorOne FullHigh0052.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh0052.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh0052.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 17179869184 17 10 2) lhs =
      value (Encoding4.vars 17179869184 17 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 17179869184 := by
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
    FullHigh0052.source e f g v =
      FullHigh0052.leading0 e g v + f * FullHigh0052.leading1 e g v +
        f^2 * FullHigh0052.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 17179869184 17 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh005Encoded2

namespace SPR.N6.Tail.CoreEndpoint.FullHigh005
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition2 (e f g v : ℝ) :
    FullHigh0052.source e f g v =
      FullHigh0052.leading0 e g v + f * FullHigh0052.leading1 e g v +
        f^2 * FullHigh0052.remainder e f g v :=
  FullHigh005Encoded2.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh005
