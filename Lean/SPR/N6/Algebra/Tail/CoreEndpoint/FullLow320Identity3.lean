import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^3 layer of FullLow320.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow320Encoded3
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.add (.add (.add (.add (.mul (.mul (.mul (.num 1) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 11)
    (.var 1)) (.var 0)) (.mul (.add (.mul (.num 167) (.var 1)) (.mul (.num 78) (.var 2))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.num
    1065)) (.var 1)) (.mul (.add (.mul (.neg (.num 9)) (.var 3)) (.num 979)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 3)) (.var 3)) (.num 220)) (.pow (.var 2) 2))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 78)) (.var 3)) (.num
    3352)) (.var 1)) (.mul (.add (.mul (.neg (.num 162)) (.var 3)) (.num 4527)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.neg (.num 105)) (.var 3)) (.num 2012)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 21)) (.var 3)) (.num 295)) (.pow (.var 2) 3))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 474)) (.var
    3)) (.num 5723)) (.var 1)) (.mul (.add (.mul (.neg (.num 1224)) (.var 3)) (.num 9898)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.neg (.num 1128)) (.var 3)) (.num 6203)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 438)) (.var 3)) (.num 1674)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.neg (.num 60)) (.var 3)) (.num 165)) (.pow (.var 2) 4))) (.var 1)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg
    (.num 1224)) (.var 3)) (.num 5778)) (.var 1)) (.mul (.add (.mul (.neg (.num 3870)) (.var 3))
    (.num 11640)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 4764)) (.var 3)) (.num 8366))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 2832)) (.var 3)) (.num 2460))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 798)) (.var 3)) (.num 203)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 84)) (.var 3)) (.neg (.num 14))) (.pow
    (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.neg (.num 1278)) (.var 3)) (.num 3816)) (.var 1)) (.mul (.add
    (.mul (.neg (.num 5040)) (.var 3)) (.num 8502)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 8160)) (.var 3)) (.num 5934)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 6834)) (.var 3)) (.num 416)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num
    3066)) (.var 3)) (.neg (.num 1211))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 687)) (.var 3)) (.neg (.num 491))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 57)) (.var 3)) (.neg (.num 52))) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.neg (.num 324)) (.var 3)) (.num 1728)) (.var 1)) (.mul (.add (.mul (.neg (.num 2016)) (.var
    3)) (.num 4440)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 4818)) (.var 3)) (.num
    3360)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 5820)) (.var 3)) (.neg
    (.num 498))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 3876)) (.var 3))
    (.neg (.num 2044))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 1428)) (.var
    3)) (.neg (.num 1137))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 261))
    (.var 3)) (.neg (.num 250))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 15))
    (.var 3)) (.neg (.num 15))) (.pow (.var 2) 7))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 144) (.var
    3)) (.num 408)) (.var 1)) (.mul (.add (.mul (.num 324) (.var 3)) (.num 1296)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.neg (.num 78)) (.var 3)) (.num 1392)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 894)) (.var 3)) (.num 276)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 1140)) (.var 3)) (.neg (.num 619))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.neg (.num 696)) (.var 3)) (.neg (.num 568))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.neg (.num 222)) (.var 3)) (.neg (.num 207))) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.neg (.num 30)) (.var 3)) (.neg (.num 30))) (.pow (.var 2) 7))) (.pow (.var
    1) 2)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2))
    (.pow (.add (.var 1) (.var 2)) 2)) (.mul (.mul (.mul (.num 2) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 300) (.var 1)) (.mul (.num 120) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.num 64) (.var 3)) (.num 3590)) (.var 1)) (.mul (.add (.mul (.num 64) (.var 3)) (.num 3074))
    (.var 2))) (.var 1)) (.mul (.num 632) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 3)) (.num 552)) (.var 3)) (.num 18852))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 712)) (.var 3)) (.num
    24382)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 3)) (.num 96))
    (.var 3)) (.num 10014)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 64)) (.var
    3)) (.num 1296)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 144) (.var 3)) (.num 2000)) (.var 3)) (.num 55827)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 360) (.var 3)) (.num 2696)) (.var 3)) (.num 95145))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 288) (.var 3)) (.neg (.num 208)))
    (.var 3)) (.num 57302)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72)
    (.var 3)) (.neg (.num 1232))) (.var 3)) (.num 14212)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 328)) (.var 3)) (.num 1192)) (.pow (.var 2) 4)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 840) (.var
    3)) (.num 4192)) (.var 3)) (.num 103909)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2520)
    (.var 3)) (.num 4392)) (.var 3)) (.num 216559)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 2712) (.var 3)) (.neg (.num 6395))) (.var 3)) (.num 166429)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1224) (.var 3)) (.neg (.num 10798))) (.var 3))
    (.num 56692)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 192) (.var 3))
    (.neg (.num 4883))) (.var 3)) (.num 7789)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 680)) (.var 3)) (.num 240)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2916) (.var 3))
    (.num 9128)) (.var 3)) (.num 132455)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10206)
    (.var 3)) (.num 12740)) (.var 3)) (.num 325187)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 13698) (.var 3)) (.neg (.num 14578))) (.var 3)) (.num 297709)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8730) (.var 3)) (.neg (.num 37509))) (.var 3))
    (.num 119536)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2610) (.var
    3)) (.neg (.num 25964))) (.var 3)) (.num 15688)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 288) (.var 3)) (.neg (.num 7365))) (.var 3)) (.neg (.num 1875))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 720)) (.var 3)) (.neg (.num 440))) (.pow
    (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6606) (.var 3)) (.num 22364)) (.var 3)) (.num
    124041)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 26424) (.var 3)) (.num 59860)) (.var
    3)) (.num 358367)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 42273) (.var 3))
    (.num 40168)) (.var 3)) (.num 392548)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 34335) (.var 3)) (.neg (.num 25270))) (.var 3)) (.num 189788)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14769) (.var 3)) (.neg (.num 47628))) (.var 3))
    (.num 24511)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3141) (.var
    3)) (.neg (.num 24634))) (.var 3)) (.neg (.num 11713))) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 252) (.var 3)) (.neg (.num 5348))) (.var 3)) (.neg (.num 4262)))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 400)) (.var 3)) (.neg (.num 368)))
    (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9546) (.var 3)) (.num
    34372)) (.var 3)) (.num 85378)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 42957) (.var 3))
    (.num 127198)) (.var 3)) (.num 294590)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 79710) (.var 3)) (.num 179602)) (.var 3)) (.num 401783)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 78519) (.var 3)) (.num 111356)) (.var 3)) (.num 264660))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 43917) (.var 3)) (.num
    14346)) (.var 3)) (.num 72651)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 13728) (.var 3)) (.neg (.num 18466))) (.var 3)) (.neg (.num 6779))) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2151) (.var 3)) (.neg (.num 9988))) (.var 3))
    (.neg (.num 8997))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 120)
    (.var 3)) (.neg (.num 1860))) (.var 3)) (.neg (.num 1852))) (.pow (.var 2) 7))) (.var 1))
    (.mul (.add (.mul (.neg (.num 104)) (.var 3)) (.neg (.num 104))) (.pow (.var 2) 8)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 7722) (.var 3)) (.num 25740)) (.var 3)) (.num
    37992)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38610) (.var 3)) (.num 115560)) (.var
    3)) (.num 156120)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 81588) (.var 3))
    (.num 214974)) (.var 3)) (.num 265107)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 94692) (.var 3)) (.num 212288)) (.var 3)) (.num 237365)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 65529) (.var 3)) (.num 116624)) (.var 3)) (.num
    115595)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27327) (.var 3))
    (.num 32062)) (.var 3)) (.num 25313)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 6525) (.var 3)) (.num 1465)) (.var 3)) (.neg (.num 1480))) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 759) (.var 3)) (.neg (.num 1372))) (.var 3))
    (.neg (.num 1873))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24)
    (.var 3)) (.neg (.num 273))) (.var 3)) (.neg (.num 297))) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 8)) (.var 3)) (.neg (.num 8))) (.pow (.var 2) 9)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2592) (.var 3)) (.num 7272)) (.var 3)) (.num
    7848)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14256) (.var 3)) (.num 37728)) (.var 3))
    (.num 37602)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33810) (.var 3)) (.num
    83904)) (.var 3)) (.num 76864)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 45225) (.var 3)) (.num 104324)) (.var 3)) (.num 87242)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 37398) (.var 3)) (.num 79082)) (.var 3)) (.num 59562))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 19635) (.var 3)) (.num
    37132)) (.var 3)) (.num 24407)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 6417) (.var 3)) (.num 10292)) (.var 3)) (.num 5387)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1200) (.var 3)) (.num 1385)) (.var 3)) (.num 330)) (.pow (.var
    2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 99) (.var 3)) (.num 4)) (.var 3)) (.neg
    (.num 95))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.neg (.num 15)) (.var 3)) (.neg
    (.num 15))) (.pow (.var 2) 9))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add
    (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.mul (.num 1)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 220) (.var 1)) (.mul (.num 88) (.var 2))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.num 24) (.var 3)) (.num 2506)) (.var 1)) (.mul (.add (.mul (.num 24) (.var
    3)) (.num 2150)) (.var 2))) (.var 1)) (.mul (.num 448) (.pow (.var 2) 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 192) (.var 3)) (.num 12512)) (.var 1)) (.mul
    (.add (.mul (.num 240) (.var 3)) (.num 16224)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num
    24) (.var 3)) (.num 6732)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 24))
    (.var 3)) (.num 896)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 606) (.var 3)) (.num 34478)) (.var 1)) (.mul (.add (.mul (.num 675)
    (.var 3)) (.num 58939)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 324)) (.var 3))
    (.num 35982)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 513)) (.var 3))
    (.num 9245)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 120)) (.var 3)) (.num
    840)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 804) (.var 3)) (.num 57786)) (.var 1)) (.mul (.add (.mul (.neg (.num
    504)) (.var 3)) (.num 120752)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 4491)) (.var
    3)) (.num 94313)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 4830)) (.var 3))
    (.num 33696)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 1887)) (.var 3))
    (.num 5313)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 240)) (.var 3)) (.num
    280)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 1116) (.var 3)) (.num 63080)) (.var 1)) (.mul (.add (.mul
    (.neg (.num 2700)) (.var 3)) (.num 154674)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    14442)) (.var 3)) (.num 143274)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    18780)) (.var 3)) (.num 60482)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num
    10590)) (.var 3)) (.num 10216)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num
    2676)) (.var 3)) (.neg (.num 6))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num
    240)) (.var 3)) (.neg (.num 112))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3486) (.var 3))
    (.num 46388)) (.var 1)) (.mul (.add (.mul (.num 4398) (.var 3)) (.num 132348)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 10632)) (.var 3)) (.num 143556)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 26766)) (.var 3)) (.num 69496)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 22878)) (.var 3)) (.num 9944)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 9300)) (.var 3)) (.neg (.num 3468))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.neg (.num 1764)) (.var 3)) (.neg (.num 1316))) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 120)) (.var 3)) (.neg (.num 112))) (.pow (.var
    2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 5184) (.var 3)) (.num 21540)) (.var 1)) (.mul (.add
    (.mul (.num 15606) (.var 3)) (.num 72282)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 13536)
    (.var 3)) (.num 94780)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 4080))
    (.var 3)) (.num 58242)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 14700))
    (.var 3)) (.num 12652)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 10425))
    (.var 3)) (.neg (.num 3731))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num
    3402)) (.var 3)) (.neg (.num 2620))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 507)) (.var 3)) (.neg (.num 485))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 24)) (.var 3)) (.neg (.num 24))) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 2484) (.var 3)) (.num 4692)) (.var 1)) (.mul (.add (.mul (.num 9828) (.var 3)) (.num
    18600)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 15264) (.var 3)) (.num 29950)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 11046) (.var 3)) (.num 24528)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.num 2460) (.var 3)) (.num 9818)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.neg (.num 1710)) (.var 3)) (.num 688)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.neg (.num 1401)) (.var 3)) (.neg (.num 967))) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.neg (.num 402)) (.var 3)) (.neg (.num 368))) (.pow (.var 2) 7))) (.var
    1)) (.mul (.add (.mul (.neg (.num 45)) (.var 3)) (.neg (.num 45))) (.pow (.var 2) 8))) (.var
    1)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    2)) (.add (.var 1) (.var 2)))) (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 270) (.var 1)) (.mul (.num 90) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.num 140) (.var 3)) (.num 3300)) (.var 1)) (.mul (.add (.mul (.num 140) (.var 3)) (.num
    2422)) (.var 2))) (.var 1)) (.mul (.num 342) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 100) (.var 3)) (.num 1796)) (.var 3)) (.num
    18635)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 250) (.var 3)) (.num 2652)) (.var 3))
    (.num 21348)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 200) (.var 3)) (.num
    856)) (.var 3)) (.num 6709)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 50) (.pow
    (.var 3) 2)) (.num 456)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 1210) (.var 3)) (.num 11388)) (.var 3)) (.num
    64677)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3630) (.var 3)) (.num 23092)) (.var 3))
    (.num 103128)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3940) (.var 3)) (.num
    14988)) (.var 3)) (.num 53523)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1830) (.var 3)) (.num 3552)) (.var 3)) (.num 9784)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 310) (.var 3)) (.num 268)) (.var 3)) (.num 412)) (.pow (.var 2)
    4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 6708) (.var 3)) (.num 45720)) (.var 3)) (.num 155956)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 23478) (.var 3)) (.num 120462)) (.var 3)) (.num 329941)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 31806) (.var 3)) (.num 118078)) (.var 3)) (.num
    254911)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20820) (.var 3))
    (.num 54614)) (.var 3)) (.num 88381)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 6594) (.var 3)) (.num 12542)) (.var 3)) (.num 13855)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 810) (.var 3)) (.num 1264)) (.var 3)) (.num 900))
    (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 21922) (.var 3)) (.num 124572)) (.var 3)) (.num
    277072)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 87688) (.var 3)) (.num 406784)) (.var
    3)) (.num 755222)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 141650) (.var 3))
    (.num 530962)) (.var 3)) (.num 813176)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 118042) (.var 3)) (.num 358374)) (.var 3)) (.num 445482)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53426) (.var 3)) (.num 134634)) (.var 3)) (.num
    134174)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12418) (.var 3))
    (.num 27406)) (.var 3)) (.num 22218)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1150) (.var 3)) (.num 2396)) (.var 3)) (.num 1680)) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 45760) (.var 3)) (.num 231034)) (.var 3)) (.num 364706)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 205920) (.var 3)) (.num 898974)) (.var 3)) (.num 1240326))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 385244) (.var 3)) (.num 1453804))
    (.var 3)) (.num 1748090)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    387394) (.var 3)) (.num 1272568)) (.var 3)) (.num 1332906)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 225418) (.var 3)) (.num 655522)) (.var 3)) (.num 601167))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 75540) (.var 3)) (.num
    199854)) (.var 3)) (.num 162848)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 13382) (.var 3)) (.num 33340)) (.var 3)) (.num 24729)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 950) (.var 3)) (.num 2304)) (.var 3)) (.num 1592)) (.pow
    (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 61706) (.var 3)) (.num 283052))
    (.var 3)) (.num 342494)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 308530) (.var 3)) (.num
    1273074)) (.var 3)) (.num 1402978)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    655140) (.var 3)) (.num 2437996)) (.var 3)) (.num 2448644)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 769380) (.var 3)) (.num 2599436)) (.var 3)) (.num
    2386690)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 544464) (.var 3))
    (.num 1689080)) (.var 3)) (.num 1426357)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 236388) (.var 3)) (.num 683846)) (.var 3)) (.num 536032)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60892) (.var 3)) (.num 167192)) (.var 3))
    (.num 122981)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8354) (.var
    3)) (.num 22120)) (.var 3)) (.num 15392)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 450) (.var 3)) (.num 1156)) (.var 3)) (.num 756)) (.pow (.var 2) 8)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 51556) (.var 3)) (.num 216962)) (.var 3))
    (.num 213802)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 283558) (.var 3)) (.num 1102708))
    (.var 3)) (.num 1021926)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 673394)
    (.var 3)) (.num 2426648)) (.var 3)) (.num 2116814)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 903588) (.var 3)) (.num 3032696)) (.var 3)) (.num 2495996)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 751972) (.var 3)) (.num 2367930))
    (.var 3)) (.num 1845672)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    400064) (.var 3)) (.num 1192686)) (.var 3)) (.num 884589)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 134700) (.var 3)) (.num 383774)) (.var 3)) (.num 272121)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27172) (.var 3)) (.num 74530))
    (.var 3)) (.num 50643)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2870) (.var 3)) (.num 7578)) (.var 3)) (.num 4907)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 110) (.var 3)) (.num 272)) (.var 3)) (.num 162)) (.pow (.var 2) 9))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 23934) (.var 3)) (.num
    93840)) (.var 3)) (.num 78666)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 143604) (.var
    3)) (.num 529836)) (.var 3)) (.num 427884)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 377048) (.var 3)) (.num 1311524)) (.var 3)) (.num 1020352)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 568870) (.var 3)) (.num 1871382)) (.var 3)) (.num
    1403614)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 544044) (.var 3))
    (.num 1699756)) (.var 3)) (.num 1230710)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 342600) (.var 3)) (.num 1021376)) (.var 3)) (.num 714964)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 142498) (.var 3)) (.num 407042)) (.var 3))
    (.num 275712)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38004) (.var
    3)) (.num 104192)) (.var 3)) (.num 68214)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 6014) (.var 3)) (.num 15754)) (.var 3)) (.num 9906)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 470) (.var 3)) (.num 1150)) (.var 3)) (.num
    680)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num
    20)) (.var 3)) (.num 10)) (.pow (.var 2) 10)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 4644) (.var 3)) (.num 17484)) (.var 3)) (.num 12840)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 30186) (.var 3)) (.num 108192)) (.var 3)) (.num 78006))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 86804) (.var 3)) (.num 296370)) (.var
    3)) (.num 209566)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 145376)
    (.var 3)) (.num 473448)) (.var 3)) (.num 328072)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 156970) (.var 3)) (.num 488442)) (.var 3)) (.num 331472)) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 114114) (.var 3)) (.num 339710)) (.var
    3)) (.num 225596)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 56508)
    (.var 3)) (.num 160878)) (.var 3)) (.num 104370)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 18786) (.var 3)) (.num 50944)) (.var 3)) (.num 32158)) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4000) (.var 3)) (.num 10214)) (.var 3))
    (.num 6214)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 490) (.var 3))
    (.num 1146)) (.var 3)) (.num 656)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 26) (.var 3)) (.num 52)) (.var 3)) (.num 26)) (.pow (.var 2) 10))) (.var 1)))) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2))) (.mul (.mul
    (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 450) (.var 1)) (.mul (.num 150) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 160) (.var 3)) (.num 4980)) (.var 1))
    (.mul (.add (.mul (.num 160) (.var 3)) (.num 3560)) (.var 2))) (.var 1)) (.mul (.num 480)
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 60) (.var 3)) (.num 1664)) (.var 3)) (.num 25075)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 150) (.var 3)) (.num 2248)) (.var 3)) (.num 27324)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 120) (.var 3)) (.num 484)) (.var 3)) (.num 7661)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.neg (.num 100))) (.var 3))
    (.num 312)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 702) (.var 3)) (.num 8596)) (.var 3)) (.num 75531)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2106) (.var 3)) (.num 15336)) (.var 3)) (.num 111589))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2286) (.var 3)) (.num 7136)) (.var
    3)) (.num 49081)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1062)
    (.var 3)) (.num 128)) (.var 3)) (.num 5071)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 180) (.var 3)) (.neg (.num 268))) (.var 3)) (.neg (.num 452))) (.pow (.var
    2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 3744) (.var 3)) (.num 28952)) (.var 3)) (.num 153871)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 13104) (.var 3)) (.num 67860)) (.var 3)) (.num 296393)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17748) (.var 3)) (.num 53708)) (.var 3)) (.num
    191801)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11610) (.var 3))
    (.num 16136)) (.var 3)) (.num 43749)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3672) (.var 3)) (.num 1328)) (.var 3)) (.num 426)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 450) (.var 3)) (.neg (.num 8))) (.var 3)) (.neg (.num
    544))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11550) (.var 3)) (.num 68908)) (.var 3)) (.num
    226466)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 46200) (.var 3)) (.num 207708)) (.var
    3)) (.num 563531)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 74610) (.var 3))
    (.num 241510)) (.var 3)) (.num 525871)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 62130) (.var 3)) (.num 139006)) (.var 3)) (.num 227565)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 28080) (.var 3)) (.num 43222)) (.var 3)) (.num 45963))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6510) (.var 3)) (.num 7574))
    (.var 3)) (.num 4088)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 600)
    (.var 3)) (.num 648)) (.var 3)) (.num 184)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 22164) (.var 3)) (.num 112300)) (.var 3)) (.num 241649)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 99738) (.var 3)) (.num 417460)) (.var 3)) (.num 763963)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 186504) (.var 3)) (.num 637628)) (.var 3)) (.num
    978023)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 187320) (.var 3))
    (.num 522436)) (.var 3)) (.num 659521)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 108756) (.var 3)) (.num 251808)) (.var 3)) (.num 257373)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36312) (.var 3)) (.num 72872)) (.var 3)) (.num
    60420)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6396) (.var 3))
    (.num 11844)) (.var 3)) (.num 8255)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 450) (.var 3)) (.num 812)) (.var 3)) (.num 496)) (.pow (.var 2) 7)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 26184) (.var 3)) (.num 114600)) (.var 3)) (.num 175324))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 130920) (.var 3)) (.num 504128)) (.var 3)) (.num
    681489)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 277842) (.var 3)) (.num
    941324)) (.var 3)) (.num 1120039)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 325848) (.var 3)) (.num 977436)) (.var 3)) (.num 1022617)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 230010) (.var 3)) (.num 619728)) (.var 3)) (.num 572488))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 99426) (.var 3)) (.num
    246068)) (.var 3)) (.num 203001)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 25416) (.var 3)) (.num 59312)) (.var 3)) (.num 44413)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 3438) (.var 3)) (.num 7720)) (.var 3)) (.num 5293)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 180) (.var 3)) (.num 388)) (.var
    3)) (.num 236)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    17316) (.var 3)) (.num 64284)) (.var 3)) (.num 75702)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 95238) (.var 3)) (.num 324768)) (.var 3)) (.num 348900)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 226086) (.var 3)) (.num 710372)) (.var 3)) (.num 696285)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 303102) (.var 3)) (.num 883180))
    (.var 3)) (.num 792013)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    251808) (.var 3)) (.num 687280)) (.var 3)) (.num 567180)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 133518) (.var 3)) (.num 345776)) (.var 3)) (.num 264822)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 44646) (.var 3)) (.num 111188))
    (.var 3)) (.num 79753)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    8868) (.var 3)) (.num 21440)) (.var 3)) (.num 14471)) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 900) (.var 3)) (.num 2104)) (.var 3)) (.num 1320)) (.pow (.var
    2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 64)) (.var 3)) (.num
    34)) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    4860) (.var 3)) (.num 14928)) (.var 3)) (.num 14448)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 29160) (.var 3)) (.num 84924)) (.var 3)) (.num 76590)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 76566) (.var 3)) (.num 212048)) (.var 3)) (.num 178420)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 115530) (.var 3)) (.num 305648)) (.var
    3)) (.num 240669)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 110484)
    (.var 3)) (.num 280936)) (.var 3)) (.num 207951)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 69516) (.var 3)) (.num 171132)) (.var 3)) (.num 119710)) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 28812) (.var 3)) (.num 69190)) (.var 3))
    (.num 45962)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7596) (.var
    3)) (.num 17910)) (.var 3)) (.num 11327)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1158) (.var 3)) (.num 2690)) (.var 3)) (.num 1615)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 78) (.var 3)) (.num 178)) (.var 3)) (.num 100))
    (.pow (.var 2) 9))) (.var 1)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add
    (.var 0) (.var 1)) (.var 2))) 2))) (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 330) (.var
    1)) (.mul (.num 110) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var
    3)) (.num 3420)) (.var 1)) (.mul (.add (.mul (.num 60) (.var 3)) (.num 2398)) (.var 2))) (.var
    1)) (.mul (.num 318) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 564) (.var 3)) (.num 15937)) (.var 1)) (.mul (.add (.mul (.num 708) (.var 3))
    (.num 16802)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 84) (.var 3)) (.num 4407)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 60)) (.var 3)) (.num 122)) (.pow (.var
    2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2556)
    (.var 3)) (.num 43181)) (.var 1)) (.mul (.add (.mul (.num 3924) (.var 3)) (.num 60500)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.num 852) (.var 3)) (.num 23569)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.neg (.num 744)) (.var 3)) (.num 1072)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.neg (.num 228)) (.var 3)) (.neg (.num 478))) (.pow (.var 2) 4)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 7344) (.var
    3)) (.num 76250)) (.var 1)) (.mul (.add (.mul (.num 14154) (.var 3)) (.num 136457)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.num 5994) (.var 3)) (.num 75147)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 2610)) (.var 3)) (.num 8463)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.neg (.num 2106)) (.var 3)) (.neg (.num 3399))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.neg (.num 312)) (.var 3)) (.neg (.num 622))) (.pow (.var 2) 5))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 15072) (.var 3)) (.num 92998)) (.var 1)) (.mul (.add (.mul (.num 38124) (.var 3)) (.num
    213020)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 30900) (.var 3)) (.num 170566)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 5484) (.var 3)) (.num 51272)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.neg (.num 3864)) (.var 3)) (.num 428)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 1668)) (.var 3)) (.neg (.num 2158))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.neg (.num 168)) (.var 3)) (.neg (.num 238))) (.pow (.var 2)
    6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 21000) (.var 3)) (.num 77030)) (.var 1)) (.mul (.add (.mul (.num
    68316) (.var 3)) (.num 225338)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 85092) (.var 3))
    (.num 256440)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 50292) (.var 3)) (.num
    143702)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.num 13896) (.var 3)) (.num 41557))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.num 1332) (.var 3)) (.num 6050)) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 60)) (.var 3)) (.num 409)) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.num 6)) (.pow (.var 2) 7)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 16668) (.var 3)) (.num 38448)) (.var 1)) (.mul (.add (.mul (.num
    66024) (.var 3)) (.num 140040)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 107808) (.var 3))
    (.num 211370)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 94716) (.var 3)) (.num
    173356)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.num 49332) (.var 3)) (.num 85573))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.num 15888) (.var 3)) (.num 26580)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.num 3144) (.var 3)) (.num 5103)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.num 336) (.var 3)) (.num 512)) (.pow (.var 2) 7))) (.var
    1)) (.mul (.add (.mul (.num 12) (.var 3)) (.num 14)) (.pow (.var 2) 8)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 5472) (.var 3)) (.num 8496)) (.var 1)) (.mul (.add (.mul (.num 25236)
    (.var 3)) (.num 37224)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 49728) (.var 3)) (.num
    69874)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 55140) (.var 3)) (.num 74134))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.num 38148) (.var 3)) (.num 49382)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.num 17166) (.var 3)) (.num 21553)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.num 4986) (.var 3)) (.num 6111)) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.num 858) (.var 3)) (.num 1029)) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.num 66) (.var 3)) (.num 77)) (.pow (.var 2) 8))) (.var 1)))) (.pow (.var 0) 2))
    (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2))) (.mul
    (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45) (.var 1))
    (.mul (.num 18) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 14) (.var 3))
    (.num 667)) (.var 1)) (.mul (.add (.mul (.num 14) (.var 3)) (.num 571)) (.var 2))) (.var 1))
    (.mul (.num 118) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 5) (.var 3)) (.num 176)) (.var 3)) (.num 4427)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 10) (.var 3)) (.num 240)) (.var 3)) (.num 5754)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 5) (.var 3)) (.num 50)) (.var 3)) (.num 2395)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 14)) (.var 3)) (.num 316)) (.pow (.var 2)
    3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    72) (.var 3)) (.num 1052)) (.var 3)) (.num 17339)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 180) (.var 3)) (.num 1780)) (.var 3)) (.num 29986)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 144) (.var 3)) (.num 626)) (.var 3)) (.num 18522)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36) (.var 3)) (.neg (.num 192))) (.var 3)) (.num
    4769)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 90)) (.var 3)) (.num 420))
    (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 495) (.var 3)) (.num 4202)) (.var 3)) (.num 45159)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1485) (.var 3)) (.num 8642)) (.var 3)) (.num 97018)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1600) (.var 3)) (.num 4430)) (.var 3))
    (.num 78416)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 725) (.var 3))
    (.neg (.num 1098))) (.var 3)) (.num 29058)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 115) (.var 3)) (.neg (.num 1334))) (.var 3)) (.num 4675)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.neg (.num 246)) (.var 3)) (.num 224)) (.pow (.var 2) 5))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 2102) (.var 3)) (.num 13322)) (.var 3)) (.num 84816)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 7357) (.var 3)) (.num 34150)) (.var 3)) (.num 218407)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9883) (.var 3)) (.num 27170)) (.var 3)) (.num
    217605)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6315) (.var 3))
    (.num 2172)) (.var 3)) (.num 103331)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1899) (.var 3)) (.neg (.num 6806))) (.var 3)) (.num 22348)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 212) (.var 3)) (.neg (.num 3006))) (.var 3))
    (.num 1317)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 370)) (.var 3)) (.neg
    (.num 112))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6045) (.var 3)) (.num
    33930)) (.var 3)) (.num 121781)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24180) (.var
    3)) (.num 108416)) (.var 3)) (.num 370748)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 38751) (.var 3)) (.num 126360)) (.var 3)) (.num 447095)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 31623) (.var 3)) (.num 57316)) (.var 3)) (.num 265247))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13733) (.var 3)) (.neg (.num
    2680))) (.var 3)) (.num 74317)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2971) (.var 3)) (.neg (.num 11312))) (.var 3)) (.num 4879)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 245) (.var 3)) (.neg (.num 3520))) (.var 3)) (.neg
    (.num 1747))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 330)) (.var 3))
    (.neg (.num 252))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12008)
    (.var 3)) (.num 63136)) (.var 3)) (.num 136358)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    54036) (.var 3)) (.num 242908)) (.var 3)) (.num 488504)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 100454) (.var 3)) (.num 371506)) (.var 3)) (.num 712452)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 99421) (.var 3)) (.num 279508)) (.var
    3)) (.num 534417)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 56139)
    (.var 3)) (.num 96012)) (.var 3)) (.num 207598)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 17879) (.var 3)) (.num 1480)) (.var 3)) (.num 30453)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2915) (.var 3)) (.neg (.num 8924))) (.var
    3)) (.neg (.num 4645))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 180)
    (.var 3)) (.neg (.num 2340))) (.var 3)) (.neg (.num 2017))) (.pow (.var 2) 7))) (.var 1))
    (.mul (.add (.mul (.neg (.num 174)) (.var 3)) (.neg (.num 164))) (.pow (.var 2) 8)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 15960) (.var 3)) (.num 78678)) (.var 3)) (.num
    115252)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 79800) (.var 3)) (.num 351678)) (.var
    3)) (.num 481724)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 168788) (.var 3))
    (.num 654416)) (.var 3)) (.num 842440)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 196352) (.var 3)) (.num 651448)) (.var 3)) (.num 792620)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 136553) (.var 3)) (.num 366232)) (.var 3)) (.num
    423423)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 57587) (.var 3))
    (.num 107496)) (.var 3)) (.num 118348)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 14144) (.var 3)) (.num 8654)) (.var 3)) (.num 8710)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1787) (.var 3)) (.neg (.num 3470))) (.var 3)) (.neg (.num
    3752))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 81) (.var 3)) (.neg
    (.num 878))) (.var 3)) (.neg (.num 904))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 50)) (.var 3)) (.neg (.num 50))) (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 13272) (.var 3)) (.num 61314)) (.var 3)) (.num
    67878)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72996) (.var 3)) (.num 310158)) (.var
    3)) (.num 326100)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 173080) (.var 3))
    (.num 671452)) (.var 3)) (.num 670382)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 231390) (.var 3)) (.num 810430)) (.var 3)) (.num 767284)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 191298) (.var 3)) (.num 593008)) (.var 3)) (.num
    529574)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100695) (.var 3))
    (.num 265344)) (.var 3)) (.num 219803)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 33337) (.var 3)) (.num 67658)) (.var 3)) (.num 48975)) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 6535) (.var 3)) (.num 7110)) (.var 3)) (.num 2735))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 649) (.var 3)) (.neg (.num
    556))) (.var 3)) (.neg (.num 1073))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 20) (.var 3)) (.neg (.num 172))) (.var 3)) (.neg (.num 192))) (.pow (.var 2) 9)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 6))) (.pow (.var 2) 10))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6138) (.var 3)) (.num
    27000)) (.var 3)) (.num 24354)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36828) (.var 3))
    (.num 151704)) (.var 3)) (.num 132264)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 96702) (.var 3)) (.num 371508)) (.var 3)) (.num 312594)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 145920) (.var 3)) (.num 519936)) (.var 3)) (.num 421170))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 139605) (.var 3)) (.num
    457254)) (.var 3)) (.num 354853)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 88008) (.var 3)) (.num 260676)) (.var 3)) (.num 191764)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 36707) (.var 3)) (.num 95152)) (.var 3)) (.num 64685))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9849) (.var 3)) (.num
    20760)) (.var 3)) (.num 12097)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1574) (.var 3)) (.num 2176)) (.var 3)) (.num 702)) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.num 123) (.pow (.var 3) 2)) (.neg (.num 123))) (.pow (.var 2) 9))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.neg (.num 14))) (.var 3)) (.neg (.num 16)))
    (.pow (.var 2) 10))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 1188) (.var 3)) (.num 5148)) (.var 3)) (.num 3960)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 7722) (.var 3)) (.num 31680)) (.var 3)) (.num 23958)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 22224) (.var 3)) (.num 86094)) (.var 3)) (.num 63870))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 37290) (.var 3)) (.num
    135972)) (.var 3)) (.num 98682)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 40404) (.var 3)) (.num 137970)) (.var 3)) (.num 97566)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 29556) (.var 3)) (.num 93630)) (.var 3)) (.num 64074))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14802) (.var 3)) (.num
    42712)) (.var 3)) (.num 27910)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5025) (.var 3)) (.num 12744)) (.var 3)) (.num 7719)) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1113) (.var 3)) (.num 2310)) (.var 3)) (.num 1197)) (.pow (.var
    2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 147) (.var 3)) (.num 214)) (.var 3))
    (.num 67)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3))
    (.num 6)) (.var 3)) (.neg (.num 3))) (.pow (.var 2) 10))) (.pow (.var 1) 2)))) (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))) (.add (.var 1) (.var 2)))) (.mul
    (.mul (.num 8) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var
    1)) (.mul (.num 10) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 20) (.var
    3)) (.num 470)) (.var 1)) (.mul (.add (.mul (.num 20) (.var 3)) (.num 354)) (.var 2))) (.var
    1)) (.mul (.num 54) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 20) (.var 3)) (.num 384)) (.var 3)) (.num 3454)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 50) (.var 3)) (.num 608)) (.var 3)) (.num 4145)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 244)) (.var 3)) (.num 1461)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3))
    (.num 140)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 352) (.var 3)) (.num 3460)) (.var 3)) (.num 15950)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1056) (.var 3)) (.num 7590)) (.var 3)) (.num 27048)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1146) (.var 3)) (.num 5712)) (.var 3))
    (.num 15943)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 532) (.var 3))
    (.num 1794)) (.var 3)) (.num 3843)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 90) (.var 3)) (.num 212)) (.var 3)) (.num 328)) (.pow (.var 2) 4)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2790) (.var 3)) (.num 19032)) (.var 3)) (.num 52206)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 9765) (.var 3)) (.num 53502)) (.var 3)) (.num 117852)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 13255) (.var 3)) (.num 57756)) (.var 3)) (.num 102045)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8725) (.var 3)) (.num 30486)) (.var 3))
    (.num 42867)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2795) (.var
    3)) (.num 8092)) (.var 3)) (.num 9030)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 350) (.var 3)) (.num 892)) (.var 3)) (.num 812)) (.pow (.var 2) 5)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 13110) (.var 3)) (.num 70212)) (.var 3)) (.num 128241)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 52440) (.var 3)) (.num 240398)) (.var 3)) (.num 369779)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 85029) (.var 3)) (.num 334284)) (.var 3)) (.num
    434172)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 71547) (.var 3))
    (.num 243946)) (.var 3)) (.num 268884)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 32987) (.var 3)) (.num 99692)) (.var 3)) (.num 94428)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 7909) (.var 3)) (.num 21864)) (.var 3)) (.num 18248))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 770) (.var 3)) (.num 2020))
    (.var 3)) (.num 1540)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40450) (.var 3))
    (.num 180670)) (.var 3)) (.num 240617)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 182025)
    (.var 3)) (.num 727442)) (.var 3)) (.num 854520)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 342238) (.var 3)) (.num 1229384)) (.var 3)) (.num 1280583)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 348383) (.var 3)) (.num 1135458)) (.var 3))
    (.num 1057603)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 207321)
    (.var 3)) (.num 621810)) (.var 3)) (.num 524419)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 72070) (.var 3)) (.num 202512)) (.var 3)) (.num 157266)) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13519) (.var 3)) (.num 36288)) (.var 3))
    (.num 26444)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1050) (.var
    3)) (.num 2740)) (.var 3)) (.num 1904)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 85573) (.var 3)) (.num 328376)) (.var 3)) (.num 341965)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 427865) (.var 3)) (.num 1516372)) (.var 3)) (.num 1447466)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 913630) (.var 3)) (.num 3003968)) (.var 3))
    (.num 2642187)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1087330)
    (.var 3)) (.num 3340050)) (.var 3)) (.num 2726587)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 788030) (.var 3)) (.num 2282524)) (.var 3)) (.num 1745137)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 355468) (.var 3)) (.num 981314))
    (.var 3)) (.num 710018)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    97105) (.var 3)) (.num 258296)) (.var 3)) (.num 178682)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 14585) (.var 3)) (.num 37728)) (.var 3)) (.num 25150)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 910) (.var 3)) (.num 2300)) (.var
    3)) (.num 1480)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 125508) (.var 3)) (.num 419750)) (.var 3)) (.num 359405)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 690294) (.var 3)) (.num 2182750)) (.var 3)) (.num 1764133)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1648472) (.var 3)) (.num 4946324)) (.var 3)) (.num
    3788193)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2240919) (.var 3))
    (.num 6412162)) (.var 3)) (.num 4676724)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1908010) (.var 3)) (.num 5237630)) (.var 3)) (.num 3659104)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1052471) (.var 3)) (.num 2789716)) (.var
    3)) (.num 1878176)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 374393)
    (.var 3)) (.num 964212)) (.var 3)) (.num 629051)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 82146) (.var 3)) (.num 206552)) (.var 3)) (.num 131076)) (.pow (.var
    2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9937) (.var 3)) (.num 24436)) (.var 3))
    (.num 15084)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 490) (.var 3))
    (.num 1172)) (.var 3)) (.num 698)) (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 125875) (.var 3)) (.num 369436)) (.var 3)) (.num 269166))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 755250) (.var 3)) (.num 2133978)) (.var 3))
    (.num 1499571)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1993171) (.var 3))
    (.num 5435936)) (.var 3)) (.num 3693157)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 3042730) (.var 3)) (.num 8036058)) (.var 3)) (.num 5294375)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2969763) (.var 3)) (.num 7623676)) (.var
    3)) (.num 4886894)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1930422)
    (.var 3)) (.num 4835128)) (.var 3)) (.num 3025601)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 841968) (.var 3)) (.num 2064596)) (.var 3)) (.num 1264706)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 241143) (.var 3)) (.num 580220))
    (.var 3)) (.num 348490)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    42713) (.var 3)) (.num 100852)) (.var 3)) (.num 59346)) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 4095) (.var 3)) (.num 9444)) (.var 3)) (.num 5414)) (.pow (.var
    2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 150) (.var 3)) (.num 332)) (.var 3))
    (.num 182)) (.pow (.var 2) 10)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 82638) (.var 3)) (.num 213480)) (.var 3)) (.num 135396)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 537147) (.var 3)) (.num 1355508)) (.var 3)) (.num 842346))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1551696) (.var 3)) (.num 3831422))
    (.var 3)) (.num 2335796)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2625711) (.var 3)) (.num 6356102)) (.var 3)) (.num 3807368)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2885502) (.var 3)) (.num 6862246)) (.var 3)) (.num
    4045682)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2154852) (.var 3))
    (.num 5044702)) (.var 3)) (.num 2931895)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1109546) (.var 3)) (.num 2561150)) (.var 3)) (.num 1469152)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 390178) (.var 3)) (.num 888716)) (.var 3))
    (.num 503384)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90313) (.var
    3)) (.num 202830)) (.var 3)) (.num 113321)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 12696) (.var 3)) (.num 28008)) (.var 3)) (.num 15373)) (.pow (.var 2) 9)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 909) (.var 3)) (.num 1948)) (.var 3)) (.num
    1039)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num
    40)) (.var 3)) (.num 20)) (.pow (.var 2) 11)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 32112) (.var 3)) (.num 73044)) (.var 3)) (.num
    40932)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 224784) (.var 3)) (.num 505692)) (.var
    3)) (.num 280908)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 705267) (.var 3))
    (.num 1570446)) (.var 3)) (.num 865179)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1309410) (.var 3)) (.num 2888586)) (.var 3)) (.num 1579176)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1598390) (.var 3)) (.num 3496486)) (.var 3))
    (.num 1898096)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1346377)
    (.var 3)) (.num 2922866)) (.var 3)) (.num 1576489)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 797531) (.var 3)) (.num 1719182)) (.var 3)) (.num 921651)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 331340) (.var 3)) (.num 709260)) (.var
    3)) (.num 377920)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 94151)
    (.var 3)) (.num 199966)) (.var 3)) (.num 105815)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 17270) (.var 3)) (.num 36302)) (.var 3)) (.num 19032)) (.pow (.var 2)
    9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1809) (.var 3)) (.num 3740)) (.var 3))
    (.num 1931)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 79) (.var 3))
    (.num 158)) (.var 3)) (.num 79)) (.pow (.var 2) 11))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5616) (.var 3)) (.num 11232))
    (.var 3)) (.num 5616)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 42120) (.var 3)) (.num
    84240)) (.var 3)) (.num 42120)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    142614) (.var 3)) (.num 285228)) (.var 3)) (.num 142614)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 288171) (.var 3)) (.num 576342)) (.var 3)) (.num 288171)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 386724) (.var 3)) (.num 773448))
    (.var 3)) (.num 386724)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    362505) (.var 3)) (.num 725010)) (.var 3)) (.num 362505)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 242576) (.var 3)) (.num 485152)) (.var 3)) (.num 242576)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 116046) (.var 3)) (.num 232092))
    (.var 3)) (.num 116046)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    38944) (.var 3)) (.num 77888)) (.var 3)) (.num 38944)) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 8741) (.var 3)) (.num 17482)) (.var 3)) (.num 8741)) (.pow (.var
    2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1182) (.var 3)) (.num 2364)) (.var 3))
    (.num 1182)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 73) (.var 3))
    (.num 146)) (.var 3)) (.num 73)) (.pow (.var 2) 11))) (.pow (.var 1) 2)))) (.mul (.add (.var
    0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))))) (.mul (.mul (.mul (.num 4) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 135) (.var 1)) (.mul (.num 45) (.var
    2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 70) (.var 3)) (.num 1875)) (.var 1))
    (.mul (.add (.mul (.num 70) (.var 3)) (.num 1373)) (.var 2))) (.var 1)) (.mul (.num 198) (.pow
    (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 50)
    (.var 3)) (.num 1024)) (.var 3)) (.num 12144)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    125) (.var 3)) (.num 1508)) (.var 3)) (.num 13841)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 100) (.var 3)) (.num 484)) (.var 3)) (.num 4394)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.num 25) (.pow (.var 3) 2)) (.num 317)) (.pow (.var 2) 3)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 700) (.var 3))
    (.num 7440)) (.var 3)) (.num 48876)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2100) (.var
    3)) (.num 14988)) (.var 3)) (.num 77181)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2280) (.var 3)) (.num 9638)) (.var 3)) (.num 40032)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1060) (.var 3)) (.num 2252)) (.var 3)) (.num 7439)) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 180) (.var 3)) (.num 162)) (.var 3))
    (.num 332)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 4542) (.var 3)) (.num 34644)) (.var 3)) (.num
    138143)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15897) (.var 3)) (.num 90432)) (.var
    3)) (.num 287548)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21559) (.var 3))
    (.num 87762)) (.var 3)) (.num 219604)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 14155) (.var 3)) (.num 40222)) (.var 3)) (.num 75672)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 4511) (.var 3)) (.num 9166)) (.var 3)) (.num 11831))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 560) (.var 3)) (.num 918))
    (.var 3)) (.num 758)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 17712) (.var 3)) (.num 111602))
    (.var 3)) (.num 291626)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 70848) (.var 3)) (.num
    360606)) (.var 3)) (.num 777271)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    114650) (.var 3)) (.num 466484)) (.var 3)) (.num 821373)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 95982) (.var 3)) (.num 313288)) (.var 3)) (.num 443934)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 43826) (.var 3)) (.num 117908))
    (.var 3)) (.num 133031)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    10338) (.var 3)) (.num 24270)) (.var 3)) (.num 22205)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 980) (.var 3)) (.num 2170)) (.var 3)) (.num 1720)) (.pow (.var
    2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 45352) (.var 3)) (.num 252332)) (.var 3)) (.num
    467324)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 204084) (.var 3)) (.num 971640)) (.var
    3)) (.num 1549394)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 382726) (.var 3))
    (.num 1560028)) (.var 3)) (.num 2139578)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 387149) (.var 3)) (.num 1363354)) (.var 3)) (.num 1610951)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 227751) (.var 3)) (.num 707052)) (.var 3))
    (.num 726139)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 77701) (.var
    3)) (.num 219476)) (.var 3)) (.num 199945)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 14155) (.var 3)) (.num 37808)) (.var 3)) (.num 31507)) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1050) (.var 3)) (.num 2750)) (.var 3)) (.num
    2158)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 78281) (.var 3)) (.num
    394984)) (.var 3)) (.num 557339)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 391405) (.var
    3)) (.num 1759516)) (.var 3)) (.num 2226399)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 833514) (.var 3)) (.num 3351616)) (.var 3)) (.num 3814164)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 985626) (.var 3)) (.num 3577178)) (.var 3))
    (.num 3683132)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 706203)
    (.var 3)) (.num 2347334)) (.var 3)) (.num 2208691)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 312819) (.var 3)) (.num 970942)) (.var 3)) (.num 846798)) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 83126) (.var 3)) (.num 246252)) (.var
    3)) (.num 202306)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11974)
    (.var 3)) (.num 34540)) (.var 3)) (.num 27083)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 700) (.var 3)) (.num 1990)) (.var 3)) (.num 1492)) (.pow (.var 2)
    8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 89896) (.var 3)) (.num 415530))
    (.var 3)) (.num 473528)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 494428) (.var 3)) (.num
    2094218)) (.var 3)) (.num 2211832)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1177884) (.var 3)) (.num 4592396)) (.var 3)) (.num 4510244)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1592268) (.var 3)) (.num 5757448)) (.var 3)) (.num
    5286110)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1342554) (.var 3))
    (.num 4549438)) (.var 3)) (.num 3933553)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 729351) (.var 3)) (.num 2345710)) (.var 3)) (.num 1926740)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 253609) (.var 3)) (.num 784554)) (.var 3))
    (.num 617632)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53797) (.var
    3)) (.num 161962)) (.var 3)) (.num 122994)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 6181) (.var 3)) (.num 18222)) (.var 3)) (.num 13346)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 280) (.var 3)) (.num 802)) (.var 3)) (.num 557))
    (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    65322) (.var 3)) (.num 279074)) (.var 3)) (.num 268130)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 391932) (.var 3)) (.num 1564878)) (.var 3)) (.num 1428888)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1032468) (.var 3)) (.num 3867618)) (.var 3)) (.num
    3364038)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1569630) (.var 3))
    (.num 5547938)) (.var 3)) (.num 4612760)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1521166) (.var 3)) (.num 5110136)) (.var 3)) (.num 4079398)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 978136) (.var 3)) (.num 3148804)) (.var 3))
    (.num 2425285)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 419958)
    (.var 3)) (.num 1306070)) (.var 3)) (.num 974957)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 117592) (.var 3)) (.num 355578)) (.var 3)) (.num 257950)) (.pow (.var
    2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20146) (.var 3)) (.num 59350)) (.var 3))
    (.num 41780)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1830) (.var
    3)) (.num 5208)) (.var 3)) (.num 3518)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 60) (.var 3)) (.num 158)) (.var 3)) (.num 98)) (.pow (.var 2) 10)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 26928) (.var 3)) (.num
    107964)) (.var 3)) (.num 90144)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 175032) (.var
    3)) (.num 664902)) (.var 3)) (.num 537840)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 505064) (.var 3)) (.num 1823122)) (.var 3)) (.num 1430198)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 852500) (.var 3)) (.num 2935864)) (.var 3)) (.num
    2237318)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 932932) (.var 3))
    (.num 3080000)) (.var 3)) (.num 2284944)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 692472) (.var 3)) (.num 2202594)) (.var 3)) (.num 1594212)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 353666) (.var 3)) (.num 1088478)) (.var 3))
    (.num 769908)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 123091) (.var
    3)) (.num 367382)) (.var 3)) (.num 253983)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 28127) (.var 3)) (.num 81244)) (.var 3)) (.num 54725)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3886) (.var 3)) (.num 10744)) (.var 3)) (.num
    6980)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 269) (.var 3)) (.num
    688)) (.var 3)) (.num 419)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    5) (.var 3)) (.num 10)) (.var 3)) (.num 5)) (.pow (.var 2) 11)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4752) (.var 3)) (.num 18324))
    (.var 3)) (.num 13572)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33264) (.var 3)) (.num
    122652)) (.var 3)) (.num 89388)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    104310) (.var 3)) (.num 368532)) (.var 3)) (.num 264222)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 193428) (.var 3)) (.num 656622)) (.var 3)) (.num 463194)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 235675) (.var 3)) (.num 771056))
    (.var 3)) (.num 535381)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    198077) (.var 3)) (.num 626266)) (.var 3)) (.num 428189)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 117128) (.var 3)) (.num 358376)) (.var 3)) (.num 241248)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48686) (.var 3)) (.num 143952))
    (.var 3)) (.num 95266)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    13921) (.var 3)) (.num 39506)) (.var 3)) (.num 25585)) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2603) (.var 3)) (.num 6968)) (.var 3)) (.num 4365)) (.pow (.var
    2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 286) (.var 3)) (.num 694)) (.var 3))
    (.num 408)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14) (.var 3))
    (.num 28)) (.var 3)) (.num 14)) (.pow (.var 2) 11))) (.var 1)))) (.var 0)) (.mul (.add (.var
    0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.add (.mul (.mul (.num 24) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2) (.pow (.var 0) 2)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3))
    (.num 4)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num
    24)) (.var 3)) (.num 20)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    10) (.var 3)) (.num 28)) (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 4) (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0)))
    (.pow (.var 0) 1)) (.mul (.mul (.num 36) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 9) (.var 0)) (.mul (.neg (.num 9)) (.var 2))) (.var 0)) (.mul (.add (.mul (.num 5)
    (.pow (.var 3) 2)) (.num 2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    11) (.var 3)) (.num 38)) (.var 3)) (.num 36)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 7) (.var 3)) (.num 24)) (.var 3)) (.num 17)) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2)
    5)))) (.pow (.var 0) 2))) (.mul (.mul (.num 24) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 15) (.var 0)) (.mul (.neg (.num 24)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 3) (.var 3)) (.neg (.num 10))) (.var 3)) (.neg (.num 2))) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 26)) (.var 3)) (.num 26))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 8)) (.var
    3)) (.num 5)) (.pow (.var 2) 4)))) (.pow (.var 0) 3))) (.mul (.mul (.num 6) (.add (.mul (.add
    (.mul (.add (.mul (.num 11) (.var 0)) (.mul (.neg (.num 21)) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.neg (.num 6)) (.var 3)) (.num 3)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.num 6) (.var 3)) (.num 7)) (.pow (.var 2) 3)))) (.pow (.var 0) 4))) (.mul (.num 4) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13) (.var 0)) (.mul (.num
    35) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num 8)) (.var 3))
    (.num 30)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3))
    (.num 28)) (.var 3)) (.num 10)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 27) (.var 3)) (.num 32)) (.var 3)) (.num 5)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 9) (.var 3)) (.num 12)) (.var 3)) (.num 3)) (.pow (.var 2) 5))) (.pow
    (.var 0) 2)))) (.mul (.mul (.num 8) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 35) (.var 0)) (.mul (.num 54) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 15) (.var 3)) (.neg (.num 6))) (.var 3)) (.num 6)) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 36) (.var 3)) (.num 22)) (.var 3)) (.neg (.num 6))) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3)) (.num 38)) (.var 3))
    (.num 11)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 3))
    (.num 10)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 1))) (.mul (.mul
    (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 50) (.var 0)) (.mul
    (.num 26) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11) (.var 3)) (.neg (.num
    26))) (.var 3)) (.neg (.num 39))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 23) (.var 3)) (.num 14)) (.var 3)) (.neg (.num 3))) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 13) (.var 3)) (.num 26)) (.var 3)) (.num 13)) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1))
    (.pow (.var 2) 5)))) (.pow (.var 0) 2))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.add (.mul (.mul
    (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
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
    2) 9))) (.var 0))) (.pow (.var 0) 1)) (.mul (.mul (.num 18) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 27) (.var
    0)) (.mul (.add (.mul (.num 14) (.var 3)) (.num 226)) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 20) (.var 3)) (.num 66)) (.var 3)) (.num 352)) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 181) (.var 3)) (.num 314)) (.var 3)) (.num 346)) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 580) (.var 3)) (.num 1384)) (.var
    3)) (.num 1291)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 893) (.var
    3)) (.num 2728)) (.var 3)) (.num 2453)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 716) (.var 3)) (.num 2382)) (.var 3)) (.num 1942)) (.pow (.var 2) 6))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 291) (.var 3)) (.num 930)) (.var 3)) (.num 676)) (.pow
    (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 52) (.var 3)) (.num 144)) (.var
    3)) (.num 92)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3))
    (.num 6)) (.var 3)) (.num 3)) (.pow (.var 2) 9)))) (.pow (.var 0) 2))) (.mul (.mul (.num 12)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 45) (.var 0)) (.mul (.add (.mul (.num 16) (.var 3)) (.num 329)) (.var 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 3)) (.num 26)) (.var 3)) (.num 272)) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 105) (.var 3)) (.neg (.num 18)))
    (.var 3)) (.neg (.num 276))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    321) (.var 3)) (.num 462)) (.var 3)) (.num 398)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 456) (.var 3)) (.num 1330)) (.var 3)) (.num 1399)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 318) (.var 3)) (.num 1076)) (.var 3)) (.num
    962)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 99) (.var 3)) (.num
    300)) (.var 3)) (.num 224)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    9) (.var 3)) (.num 24)) (.var 3)) (.num 15)) (.pow (.var 2) 8)))) (.pow (.var 0) 3))) (.mul
    (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 33) (.var 0)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 220)) (.var 2))) (.var
    0)) (.mul (.num 98) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.neg (.num 84)) (.var 3))
    (.neg (.num 361))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.neg (.num 54)) (.var 3))
    (.neg (.num 17))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.num 168) (.var 3)) (.num
    388)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.num 138) (.var 3)) (.num 194)) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.num 18) (.var 3)) (.num 21)) (.pow (.var 2) 7))))
    (.pow (.var 0) 4))) (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 78) (.var 0)) (.mul (.add (.mul
    (.num 44) (.var 3)) (.num 846)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 72)
    (.var 3)) (.num 328)) (.var 3)) (.num 2627)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 752) (.var 3)) (.num 1668)) (.var 3)) (.num 4693)) (.pow (.var 2) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 2816) (.var 3)) (.num 5810)) (.var 3)) (.num 7054))
    (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5268) (.var 3)) (.num
    11220)) (.var 3)) (.num 8872)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 5460) (.var 3)) (.num 11764)) (.var 3)) (.num 7483)) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 3160) (.var 3)) (.num 6620)) (.var 3)) (.num 3649)) (.pow (.var
    2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 940) (.var 3)) (.num 1842)) (.var 3))
    (.num 902)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 108) (.var 3))
    (.num 192)) (.var 3)) (.num 84)) (.pow (.var 2) 9))) (.pow (.var 0) 2)))) (.mul (.mul (.num 6)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 210) (.var 0)) (.mul (.add (.mul (.num 96) (.var 3)) (.num
    2018)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 120) (.var 3)) (.num 456))
    (.var 3)) (.num 4837)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1138)
    (.var 3)) (.num 1524)) (.var 3)) (.num 5742)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 3830) (.var 3)) (.num 5880)) (.var 3)) (.num 7066)) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6328) (.var 3)) (.num 12378)) (.var 3)) (.num
    9866)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5652) (.var 3)) (.num
    12644)) (.var 3)) (.num 8605)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 2724) (.var 3)) (.num 6268)) (.var 3)) (.num 3790)) (.pow (.var 2) 7))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 642) (.var 3)) (.num 1388)) (.var 3)) (.num 746)) (.pow (.var 2)
    8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 54) (.var 3)) (.num 102)) (.var 3)) (.num
    48)) (.pow (.var 2) 9))) (.var 0))) (.pow (.var 0) 1))) (.mul (.mul (.num 3) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 300) (.var 0)) (.mul (.add (.mul (.num 104) (.var 3)) (.num 2572)) (.var 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 88) (.var 3)) (.num 280)) (.var 3)) (.num 4551)) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 788) (.var 3)) (.num 132)) (.var
    3)) (.num 2293)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2474) (.var
    3)) (.num 2222)) (.var 3)) (.num 2060)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 3700) (.var 3)) (.num 6900)) (.var 3)) (.num 5764)) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 2842) (.var 3)) (.num 7060)) (.var 3)) (.num 5423)) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1074) (.var 3)) (.num 2852)) (.var
    3)) (.num 1941)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 164) (.var
    3)) (.num 406)) (.var 3)) (.num 242)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 6) (.var 3)) (.num 12)) (.var 3)) (.num 6)) (.pow (.var 2) 9)))) (.pow (.var 0)
    2))) (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 399) (.var 0)) (.mul (.add (.mul (.num 170)
    (.var 3)) (.num 4322)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 200) (.var 3))
    (.num 860)) (.var 3)) (.num 13126)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1934) (.var 3)) (.num 1984)) (.var 3)) (.num 17719)) (.pow (.var 2) 3))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 6614) (.var 3)) (.num 4964)) (.var 3)) (.num 12275)) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11214) (.var 3)) (.num 10500))
    (.var 3)) (.num 5874)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    10438) (.var 3)) (.num 12520)) (.var 3)) (.num 3948)) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 5356) (.var 3)) (.num 7668)) (.var 3)) (.num 2559)) (.pow (.var
    2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1388) (.var 3)) (.num 2200)) (.var 3))
    (.num 812)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 136) (.var 3))
    (.num 222)) (.var 3)) (.num 86)) (.pow (.var 2) 9))) (.pow (.var 0) 2)))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow3203.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow3203.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow3203.leading0 e g v + f * FullLow3203.leading1 e g v +
        f^2 * FullLow3203.remainder e f g v := by
  have hden : denominatorOne FullLow3203.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow3203.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow3203.remainderData) = _
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
    FullLow3203.source e f g v =
      FullLow3203.leading0 e g v + f * FullLow3203.leading1 e g v +
        f^2 * FullLow3203.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 137438953472 15 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow320Encoded3

namespace SPR.N6.Tail.CoreEndpoint.FullLow320
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition3 (e f g v : ℝ) :
    FullLow3203.source e f g v =
      FullLow3203.leading0 e g v + f * FullLow3203.leading1 e g v +
        f^2 * FullLow3203.remainder e f g v :=
  FullLow320Encoded3.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow320
