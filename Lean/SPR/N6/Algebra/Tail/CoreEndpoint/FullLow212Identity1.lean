import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow212Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^1 layer of FullLow212.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow212Encoded1
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 270) (.var
    1)) (.mul (.num 108) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 84) (.var
    3)) (.num 2976)) (.var 1)) (.mul (.add (.mul (.num 84) (.var 3)) (.num 2508)) (.var 2))) (.var
    1)) (.mul (.num 492) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 30) (.var 3)) (.num 720)) (.var 3)) (.num 14142)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 936)) (.var 3)) (.num 17862)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 132)) (.var 3)) (.num 6954))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 84)) (.var 3)) (.num 804)) (.pow
    (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 312) (.var 3)) (.num 2826)) (.var 3)) (.num 37743)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 780) (.var 3)) (.num 4221)) (.var 3)) (.num 62397)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 624) (.var 3)) (.num 540)) (.var 3)) (.num 35031)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 156) (.var 3)) (.neg (.num 1227)))
    (.var 3)) (.num 7461)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 372)) (.var
    3)) (.num 420)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 1542) (.var 3)) (.num 7620)) (.var 3)) (.num 64250))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4626) (.var 3)) (.num 13314)) (.var 3)) (.num
    129611)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4974) (.var 3)) (.num 2073))
    (.var 3)) (.num 91327)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2238) (.var 3)) (.neg (.num 7212))) (.var 3)) (.num 24847)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 348) (.var 3)) (.neg (.num 4239))) (.var 3)) (.num 1179))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 648)) (.var 3)) (.neg (.num 300)))
    (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 4560) (.var 3)) (.num 18530)) (.var 3)) (.num
    78236)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15960) (.var 3)) (.num 44159)) (.var 3))
    (.num 188821)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21360) (.var 3)) (.num
    27483)) (.var 3)) (.num 161218)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 13500) (.var 3)) (.neg (.num 8539))) (.var 3)) (.num 51247)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3960) (.var 3)) (.neg (.num 15097))) (.var 3)) (.neg
    (.num 1630))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 420) (.var 3))
    (.neg (.num 5256))) (.var 3)) (.neg (.num 3816))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 552)) (.var 3)) (.neg (.num 492))) (.pow (.var 2) 6)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 8751) (.var 3)) (.num 35740)) (.var 3)) (.num 73897)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 35004) (.var 3)) (.num 114126)) (.var 3)) (.num 217532)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 55791) (.var 3)) (.num 131881)) (.var 3)) (.num
    237672)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 44859) (.var 3))
    (.num 58537)) (.var 3)) (.num 109037)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 18888) (.var 3)) (.neg (.num 2841))) (.var 3)) (.num 8017)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3849) (.var 3)) (.neg (.num 10631))) (.var 3))
    (.neg (.num 9959))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 282)
    (.var 3)) (.neg (.num 2976))) (.var 3)) (.neg (.num 3018))) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.neg (.num 228)) (.var 3)) (.neg (.num 228))) (.pow (.var 2) 7)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 10492) (.var 3)) (.num 42016)) (.var 3)) (.num 52044))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 47214) (.var 3)) (.num 164872)) (.var 3)) (.num
    188028)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 87230) (.var 3)) (.num
    257920)) (.var 3)) (.num 268066)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 84973) (.var 3)) (.num 201369)) (.var 3)) (.num 186310)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 46491) (.var 3)) (.num 77287)) (.var 3)) (.num 58382))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13961) (.var 3)) (.num
    9118)) (.var 3)) (.num 821)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2031) (.var 3)) (.neg (.num 2581))) (.var 3)) (.neg (.num 4146))) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 96) (.var 3)) (.neg (.num 753))) (.var 3)) (.neg (.num
    849))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 36)) (.var 3)) (.neg (.num
    36))) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6722) (.var 3))
    (.num 25524)) (.var 3)) (.num 22962)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33610)
    (.var 3)) (.num 116530)) (.var 3)) (.num 99256)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 70669) (.var 3)) (.num 220978)) (.var 3)) (.num 176567)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 81016) (.var 3)) (.num 224298)) (.var 3)) (.num
    165574)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 54793) (.var 3))
    (.num 130059)) (.var 3)) (.num 85920)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 21985) (.var 3)) (.num 41743)) (.var 3)) (.num 22502)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 4928) (.var 3)) (.num 6054)) (.var 3)) (.num 1426))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 513) (.var 3)) (.neg (.num
    25))) (.var 3)) (.neg (.num 538))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 12) (.var 3)) (.neg (.num 69))) (.var 3)) (.neg (.num 81))) (.pow (.var 2) 8))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1656) (.var 3)) (.num 6178)) (.var 3))
    (.num 4522)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9108) (.var 3)) (.num 31747)) (.var
    3)) (.num 22639)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21472) (.var 3))
    (.num 69277)) (.var 3)) (.num 47805)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 28314) (.var 3)) (.num 83574)) (.var 3)) (.num 55260)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 22826) (.var 3)) (.num 60650)) (.var 3)) (.num 37824))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11515) (.var 3)) (.num
    26847)) (.var 3)) (.num 15332)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3549) (.var 3)) (.num 6929)) (.var 3)) (.num 3380)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 611) (.var 3)) (.num 904)) (.var 3)) (.num 293)) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45) (.var 3)) (.num 38)) (.var 3)) (.neg
    (.num 7))) (.pow (.var 2) 8))) (.pow (.var 1) 2)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add
    (.add (.var 0) (.var 1)) (.var 2))) 3)) (.add (.var 1) (.var 2))) (.mul (.mul (.num 6) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num 20) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 740)) (.var 1)) (.mul (.add
    (.mul (.num 40) (.var 3)) (.num 564)) (.var 2))) (.var 1)) (.mul (.num 84) (.pow (.var 2)
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var
    3)) (.num 624)) (.var 3)) (.num 4190)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100)
    (.var 3)) (.num 1008)) (.var 3)) (.num 5146)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 80) (.var 3)) (.num 424)) (.var 3)) (.num 1828)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 40)) (.var 3)) (.num 172)) (.pow (.var
    2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 552) (.var 3)) (.num 4384)) (.var 3)) (.num 14604)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1656) (.var 3)) (.num 9860)) (.var 3)) (.num 25668)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1796) (.var 3)) (.num 7680)) (.var 3)) (.num 15570)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 832) (.var 3)) (.num 2516)) (.var 3))
    (.num 3846)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 140) (.var 3))
    (.num 312)) (.var 3)) (.num 340)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3292) (.var 3)) (.num 18060))
    (.var 3)) (.num 35352)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11522) (.var 3)) (.num
    52084)) (.var 3)) (.num 83698)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    15614) (.var 3)) (.num 57728)) (.var 3)) (.num 75574)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 10230) (.var 3)) (.num 31172)) (.var 3)) (.num 32922)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3246) (.var 3)) (.num 8396)) (.var
    3)) (.num 7154)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 400) (.var
    3)) (.num 928)) (.var 3)) (.num 660)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11126) (.var 3))
    (.num 47756)) (.var 3)) (.num 62521)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 44504)
    (.var 3)) (.num 167628)) (.var 3)) (.num 190489)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 71946) (.var 3)) (.num 238020)) (.var 3)) (.num 234389)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 60074) (.var 3)) (.num 175956)) (.var 3)) (.num
    150433)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27296) (.var 3))
    (.num 71976)) (.var 3)) (.num 53914)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 6390) (.var 3)) (.num 15560)) (.var 3)) (.num 10422)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 600) (.var 3)) (.num 1392)) (.var 3)) (.num 860))
    (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 23396) (.var 3)) (.num 83398)) (.var 3))
    (.num 80861)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 105282) (.var 3)) (.num 343912))
    (.var 3)) (.num 303977)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 197064)
    (.var 3)) (.num 591216)) (.var 3)) (.num 476793)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 198408) (.var 3)) (.num 549704)) (.var 3)) (.num 405949)) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 115720) (.var 3)) (.num 298790)) (.var
    3)) (.num 203464)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38938)
    (.var 3)) (.num 94848)) (.var 3)) (.num 60180)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 6948) (.var 3)) (.num 16188)) (.var 3)) (.num 9692)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 500) (.var 3)) (.num 1128)) (.var 3)) (.num
    644)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 31379) (.var 3)) (.num
    95516)) (.var 3)) (.num 73917)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 156895) (.var
    3)) (.num 451388)) (.var 3)) (.num 330454)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 333016) (.var 3)) (.num 907112)) (.var 3)) (.num 628756)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 390694) (.var 3)) (.num 1010868)) (.var 3)) (.num 664918))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 275975) (.var 3)) (.num
    681460)) (.var 3)) (.num 426931)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 119455) (.var 3)) (.num 283136)) (.var 3)) (.num 169740)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 30618) (.var 3)) (.num 70072)) (.var 3)) (.num 40394))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4164) (.var 3)) (.num 9240))
    (.var 3)) (.num 5138)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 220)
    (.var 3)) (.num 472)) (.var 3)) (.num 252)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 26192) (.var 3)) (.num 68998)) (.var 3)) (.num 44846)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 144056) (.var 3)) (.num 367034)) (.var 3)) (.num 231600))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 341420) (.var 3)) (.num 842102))
    (.var 3)) (.num 515988)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    455970) (.var 3)) (.num 1090412)) (.var 3)) (.num 649346)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 376252) (.var 3)) (.num 874234)) (.var 3)) (.num 506658)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 197414) (.var 3)) (.num 446726))
    (.var 3)) (.num 252358)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    65010) (.var 3)) (.num 143562)) (.var 3)) (.num 79154)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 12640) (.var 3)) (.num 27260)) (.var 3)) (.num 14672)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1246) (.var 3)) (.num 2616)) (.var
    3)) (.num 1370)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40) (.var
    3)) (.num 80)) (.var 3)) (.num 40)) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 12455) (.var 3)) (.num 28580)) (.var 3)) (.num 16125)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 74730) (.var 3)) (.num 168882)) (.var 3)) (.num 94152))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 195392) (.var 3)) (.num 434992))
    (.var 3)) (.num 239600)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    291935) (.var 3)) (.num 640558)) (.var 3)) (.num 348623)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 274395) (.var 3)) (.num 593764)) (.var 3)) (.num 319369)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 168000) (.var 3)) (.num 358718))
    (.var 3)) (.num 190718)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    66824) (.var 3)) (.num 140820)) (.var 3)) (.num 73996)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 16569) (.var 3)) (.num 34438)) (.var 3)) (.num 17869)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2302) (.var 3)) (.num 4708)) (.var
    3)) (.num 2406)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 134) (.var
    3)) (.num 268)) (.var 3)) (.num 134)) (.pow (.var 2) 9))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 2598) (.var 3)) (.num 5196)) (.var 3)) (.num 2598))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16887) (.var 3)) (.num 33774)) (.var 3)) (.num
    16887)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48236) (.var 3)) (.num
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
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3))) (.mul (.mul (.mul
    (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 270) (.var 1)) (.mul (.num 90) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.num 140) (.var 3)) (.num 2850)) (.var 1)) (.mul (.add
    (.mul (.num 140) (.var 3)) (.num 2098)) (.var 2))) (.var 1)) (.mul (.num 288) (.pow (.var 2)
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 100) (.var
    3)) (.num 1544)) (.var 3)) (.num 13711)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 250)
    (.var 3)) (.num 2288)) (.var 3)) (.num 15788)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 200) (.var 3)) (.num 744)) (.var 3)) (.num 4873)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.num 50) (.pow (.var 3) 2)) (.num 296)) (.pow (.var 2) 3)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1020) (.var 3))
    (.num 8344)) (.var 3)) (.num 39911)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3060) (.var
    3)) (.num 17048)) (.var 3)) (.num 64225)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3320) (.var 3)) (.num 11176)) (.var 3)) (.num 33083)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1540) (.var 3)) (.num 2684)) (.var 3)) (.num 5761)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 260) (.var 3)) (.num 212)) (.var
    3)) (.num 192)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 4692) (.var 3)) (.num 28072)) (.var 3)) (.num
    79597)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16422) (.var 3)) (.num 74742)) (.var 3))
    (.num 171175)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 22214) (.var 3)) (.num
    74014)) (.var 3)) (.num 133023)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 14480) (.var 3)) (.num 34494)) (.var 3)) (.num 45603)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 4546) (.var 3)) (.num 7954)) (.var 3)) (.num 6886)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 550) (.var 3)) (.num 804)) (.var
    3)) (.num 428)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12384) (.var 3)) (.num 62500)) (.var 3))
    (.num 114972)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 49536) (.var 3)) (.num 206528))
    (.var 3)) (.num 320967)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 79820) (.var
    3)) (.num 272016)) (.var 3)) (.num 351239)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 66084) (.var 3)) (.num 184160)) (.var 3)) (.num 193381)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 29532) (.var 3)) (.num 68744)) (.var 3)) (.num
    57611)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6716) (.var 3))
    (.num 13732)) (.var 3)) (.num 9266)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 600) (.var 3)) (.num 1160)) (.var 3)) (.num 672)) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 20076) (.var 3)) (.num 90724)) (.var 3)) (.num 118966)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 90342) (.var 3)) (.num 357206)) (.var 3)) (.num 416014))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 168432) (.var 3)) (.num 581760))
    (.var 3)) (.num 598105)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    167916) (.var 3)) (.num 508876)) (.var 3)) (.num 459899)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 96136) (.var 3)) (.num 258956)) (.var 3)) (.num 205786)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 31348) (.var 3)) (.num 76774))
    (.var 3)) (.num 54119)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    5312) (.var 3)) (.num 12192)) (.var 3)) (.num 7771)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 350) (.var 3)) (.num 776)) (.var 3)) (.num 456)) (.pow (.var 2) 7))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 19673) (.var 3)) (.num 80960)) (.var 3)) (.num
    82263)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 98365) (.var 3)) (.num 368108)) (.var
    3)) (.num 346465)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 208000) (.var 3))
    (.num 708428)) (.var 3)) (.num 616282)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 241810) (.var 3)) (.num 752536)) (.var 3)) (.num 604841)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 167969) (.var 3)) (.num 481312)) (.var 3)) (.num
    358091)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 70705) (.var 3))
    (.num 188636)) (.var 3)) (.num 130481)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 17322) (.var 3)) (.num 43596)) (.var 3)) (.num 28210)) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2184) (.var 3)) (.num 5244)) (.var 3)) (.num 3187))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100) (.var 3)) (.num 228))
    (.var 3)) (.num 128)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 10500) (.var 3)) (.num 39822)) (.var 3)) (.num 33402)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 57750) (.var 3)) (.num 204286)) (.var 3)) (.num 163780)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 136526) (.var 3)) (.num 450712)) (.var 3)) (.num 344798))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 181242) (.var 3)) (.num
    559614)) (.var 3)) (.num 408180)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 147940) (.var 3)) (.num 428862)) (.var 3)) (.num 298274)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 76244) (.var 3)) (.num 208540)) (.var 3)) (.num 138388))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24392) (.var 3)) (.num
    63254)) (.var 3)) (.num 40066)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 4518) (.var 3)) (.num 11132)) (.var 3)) (.num 6718)) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 406) (.var 3)) (.num 942)) (.var 3)) (.num 536)) (.pow (.var 2)
    8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3)) (.num
    10)) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2280) (.var 3)) (.num 8230)) (.var 3)) (.num 5950)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 13680) (.var 3)) (.num 46782)) (.var 3)) (.num 33102)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 35753) (.var 3)) (.num 115714)) (.var 3)) (.num 79961)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53365) (.var 3)) (.num 163418)) (.var 3))
    (.num 110053)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50072) (.var
    3)) (.num 145118)) (.var 3)) (.num 95046)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 30578) (.var 3)) (.num 83874)) (.var 3)) (.num 53296)) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12121) (.var 3)) (.num 31414)) (.var 3)) (.num
    19293)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2993) (.var 3))
    (.num 7286)) (.var 3)) (.num 4293)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 414) (.var 3)) (.num 932)) (.var 3)) (.num 518)) (.pow (.var 2) 8))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 48)) (.var 3)) (.num 24)) (.pow (.var
    2) 9))) (.var 1)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var
    1)) (.var 2))) 3))) (.mul (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 40) (.var 1)) (.mul (.num 16) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.num 16) (.var 3)) (.num 576)) (.var 1)) (.mul (.add (.mul (.num 16) (.var 3)) (.num
    484)) (.var 2))) (.var 1)) (.mul (.num 96) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 232)) (.var 3)) (.num
    3652)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 320)) (.var 3)) (.num
    4648)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 72)) (.var
    3)) (.num 1852)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 16)) (.var 3))
    (.num 224)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 144) (.var 3)) (.num 1620)) (.var 3)) (.num 13641)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 360) (.var 3)) (.num 2922)) (.var 3)) (.num 23177)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 288) (.var 3)) (.num 1336)) (.var 3)) (.num
    13702)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 3)) (.neg
    (.num 62))) (.var 3)) (.num 3210)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num
    96)) (.var 3)) (.num 224)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1128) (.var 3)) (.num 7424)) (.var 3))
    (.num 34289)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3384) (.var 3)) (.num 17150))
    (.var 3)) (.num 73151)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3656) (.var
    3)) (.num 12606)) (.var 3)) (.num 57186)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1672) (.var 3)) (.num 2338)) (.var 3)) (.num 19418)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 272) (.var 3)) (.neg (.num 782))) (.var 3))
    (.num 2414)) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.neg (.num 240)) (.var 3)) (.pow (.var
    2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 5122) (.var 3)) (.num 24662)) (.var 3)) (.num 63669)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 17927) (.var 3)) (.num 71329)) (.var 3)) (.num 166193))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24169) (.var 3)) (.num 74953)) (.var
    3)) (.num 164873)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15605)
    (.var 3)) (.num 32563)) (.var 3)) (.num 75203)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4801) (.var 3)) (.num 2993)) (.var 3)) (.num 13838)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 560) (.var 3)) (.neg (.num 1604))) (.var
    3)) (.neg (.num 124))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 320)) (.var
    3)) (.neg (.num 224))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 14988) (.var 3))
    (.num 59556)) (.var 3)) (.num 92751)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59952)
    (.var 3)) (.num 208896)) (.var 3)) (.num 293791)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 96401) (.var 3)) (.num 287125)) (.var 3)) (.num 367145)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 79371) (.var 3)) (.num 192319)) (.var 3)) (.num
    225095)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 35087) (.var 3))
    (.num 60811)) (.var 3)) (.num 65276)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 7833) (.var 3)) (.num 5045)) (.var 3)) (.num 4670)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 680) (.var 3)) (.neg (.num 1472))) (.var 3)) (.neg (.num
    1512))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 240)) (.var 3)) (.neg
    (.num 224))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 29328) (.var 3))
    (.num 100830)) (.var 3)) (.num 106686)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 131976)
    (.var 3)) (.num 415593)) (.var 3)) (.num 405886)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 245864) (.var 3)) (.num 701722)) (.var 3)) (.num 631279)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 244636) (.var 3)) (.num 621786)) (.var 3)) (.num
    511851)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 139540) (.var 3))
    (.num 304806)) (.var 3)) (.num 224790)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 45204) (.var 3)) (.num 77443)) (.var 3)) (.num 47146)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 7572) (.var 3)) (.num 6942)) (.var 3)) (.num 1254))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 488) (.var 3)) (.neg (.num
    618))) (.var 3)) (.neg (.num 1022))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 96)) (.var 3)) (.neg (.num 96))) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 38142) (.var 3)) (.num 114910)) (.var 3)) (.num 92326)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 190710) (.var 3)) (.num 542868)) (.var 3)) (.num 413784))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 403367) (.var 3)) (.num 1080429))
    (.var 3)) (.num 779411)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    469208) (.var 3)) (.num 1175182)) (.var 3)) (.num 798779)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 326256) (.var 3)) (.num 755504)) (.var 3)) (.num 479032)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 137522) (.var 3)) (.num 287554))
    (.var 3)) (.num 165814)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    33731) (.var 3)) (.num 60023)) (.var 3)) (.num 29004)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 4248) (.var 3)) (.num 5204)) (.var 3)) (.num 1146)) (.pow (.var
    2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 192) (.var 3)) (.neg (.num 74))) (.var
    3)) (.neg (.num 266))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.neg (.num 16)) (.var
    3)) (.neg (.num 16))) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 31682) (.var 3)) (.num 83740)) (.var 3)) (.num 55226)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 174251) (.var 3)) (.num 445270)) (.var 3)) (.num 285149)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 412079) (.var 3)) (.num 1016474)) (.var 3)) (.num
    631165)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 547473) (.var 3))
    (.num 1300793)) (.var 3)) (.num 781463)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 447498) (.var 3)) (.num 1020388)) (.var 3)) (.num 590768)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 231126) (.var 3)) (.num 502167)) (.var 3)) (.num
    277951)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 74174) (.var 3))
    (.num 151253)) (.var 3)) (.num 78591)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 13802) (.var 3)) (.num 25478)) (.var 3)) (.num 11821)) (.pow (.var 2) 7))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1251) (.var 3)) (.num 1865)) (.var 3)) (.num 614))
    (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 32) (.var 3)) (.num 12))
    (.var 3)) (.neg (.num 20))) (.pow (.var 2) 9))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 15300) (.var 3)) (.num 35334)) (.var 3)) (.num 20034)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 91800) (.var 3)) (.num 208710)) (.var 3)) (.num 116910))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 239815) (.var 3)) (.num 536526))
    (.var 3)) (.num 296711)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    357575) (.var 3)) (.num 786762)) (.var 3)) (.num 429187)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 334847) (.var 3)) (.num 723829)) (.var 3)) (.num 388982)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 203738) (.var 3)) (.num 431796))
    (.var 3)) (.num 228058)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    80200) (.var 3)) (.num 165947)) (.var 3)) (.num 85747)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 19532) (.var 3)) (.num 39115)) (.var 3)) (.num 19583)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2626) (.var 3)) (.num 4992)) (.var
    3)) (.num 2366)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 143) (.var
    3)) (.num 245)) (.var 3)) (.num 102)) (.pow (.var 2) 9))) (.pow (.var 1) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3294) (.var 3)) (.num 6588)) (.var 3)) (.num
    3294)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21411) (.var 3)) (.num 42822)) (.var 3))
    (.num 21411)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 61200) (.var 3)) (.num
    122400)) (.var 3)) (.num 61200)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 101079) (.var 3)) (.num 202158)) (.var 3)) (.num 101079)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 106474) (.var 3)) (.num 212948)) (.var 3)) (.num 106474))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 74322) (.var 3)) (.num
    148644)) (.var 3)) (.num 74322)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 34448) (.var 3)) (.num 68896)) (.var 3)) (.num 34448)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 10243) (.var 3)) (.num 20486)) (.var 3)) (.num 10243))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1776) (.var 3)) (.num 3552))
    (.var 3)) (.num 1776)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 137)
    (.var 3)) (.num 274)) (.var 3)) (.num 137)) (.pow (.var 2) 9))) (.pow (.var 1) 3)))) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var 1)
    (.var 2)))) (.mul (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 60) (.var 1)) (.mul (.num 20) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.num 40) (.var 3)) (.num 840)) (.var 1)) (.mul (.add (.mul (.num 40) (.var 3)) (.num 636))
    (.var 2))) (.var 1)) (.mul (.num 96) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 696)) (.var 3)) (.num 5468))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100) (.var 3)) (.num 1112)) (.var 3)) (.num
    6632)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 80) (.var 3)) (.num 456))
    (.var 3)) (.num 2348)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20)
    (.var 3)) (.num 40)) (.var 3)) (.num 224)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 628) (.var 3)) (.num 5588)) (.var
    3)) (.num 22172)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1884) (.var 3)) (.num 12400))
    (.var 3)) (.num 38230)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2044) (.var
    3)) (.num 9484)) (.var 3)) (.num 22860)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 948) (.var 3)) (.num 3040)) (.var 3)) (.num 5590)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 160) (.var 3)) (.num 368)) (.var 3)) (.num 488)) (.pow
    (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 4364) (.var 3)) (.num 26912)) (.var 3)) (.num 63151)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 15274) (.var 3)) (.num 76556)) (.var 3)) (.num 145757)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20718) (.var 3)) (.num 83684)) (.var 3))
    (.num 128813)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13610) (.var
    3)) (.num 44668)) (.var 3)) (.num 55155)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 4342) (.var 3)) (.num 11948)) (.var 3)) (.num 11828)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 540) (.var 3)) (.num 1320)) (.var 3)) (.num
    1080)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 17636) (.var 3)) (.num 85264)) (.var 3)) (.num
    133372)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 70544) (.var 3)) (.num 295312)) (.var
    3)) (.num 394575)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 114240) (.var 3))
    (.num 414752)) (.var 3)) (.num 473841)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 95816) (.var 3)) (.num 304660)) (.var 3)) (.num 298809)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 43908) (.var 3)) (.num 124672)) (.var 3)) (.num
    106151)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10424) (.var 3))
    (.num 27196)) (.var 3)) (.num 20560)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1000) (.var 3)) (.num 2480)) (.var 3)) (.num 1720)) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 45744) (.var 3)) (.num 184030)) (.var 3)) (.num 211111)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 205848) (.var 3)) (.num 749162)) (.var 3)) (.num 769903))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 386316) (.var 3)) (.num 1276420))
    (.var 3)) (.num 1179139)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    391482) (.var 3)) (.num 1183240)) (.var 3)) (.num 988707)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 231070) (.var 3)) (.num 646426)) (.var 3)) (.num 493408)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 79282) (.var 3)) (.num 208422))
    (.var 3)) (.num 147290)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    14582) (.var 3)) (.num 36628)) (.var 3)) (.num 24338)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1100) (.var 3)) (.num 2680)) (.var 3)) (.num 1696)) (.pow (.var
    2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 78973) (.var 3)) (.num 272022)) (.var
    3)) (.num 245901)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 394865) (.var 3)) (.num
    1269480)) (.var 3)) (.num 1067804)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    841114) (.var 3)) (.num 2532112)) (.var 3)) (.num 1987951)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 995266) (.var 3)) (.num 2820184)) (.var 3)) (.num
    2076539)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 713957) (.var 3))
    (.num 1917690)) (.var 3)) (.num 1332714)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 316873) (.var 3)) (.num 813488)) (.var 3)) (.num 537539)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 84468) (.var 3)) (.num 209008)) (.var 3))
    (.num 132282)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12228) (.var
    3)) (.num 29360)) (.var 3)) (.num 17890)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 720) (.var 3)) (.num 1680)) (.var 3)) (.num 984)) (.pow (.var 2) 8)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 90630) (.var 3)) (.num 270930)) (.var 3))
    (.num 202986)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 498465) (.var 3)) (.num 1423466))
    (.var 3)) (.num 1020395)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1186779)
    (.var 3)) (.num 3244946)) (.var 3)) (.num 2229874)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1602018) (.var 3)) (.num 4207720)) (.var 3)) (.num 2779649)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1347392) (.var 3)) (.num 3413254))
    (.var 3)) (.num 2175102)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    729043) (.var 3)) (.num 1789070)) (.var 3)) (.num 1103817)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 251917) (.var 3)) (.num 601298)) (.var 3)) (.num 360342))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 52902) (.var 3)) (.num
    123144)) (.var 3)) (.num 71799)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5970) (.var 3)) (.num 13540)) (.var 3)) (.num 7664)) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 260) (.var 3)) (.num 568)) (.var 3)) (.num 308)) (.pow (.var 2)
    9)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 66649) (.var 3)) (.num
    174062)) (.var 3)) (.num 111793)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 399894) (.var
    3)) (.num 1015812)) (.var 3)) (.num 636744)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1051522) (.var 3)) (.num 2601556)) (.var 3)) (.num 1592972)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1591915) (.var 3)) (.num 3842884)) (.var 3))
    (.num 2301520)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1531509)
    (.var 3)) (.num 3614718)) (.var 3)) (.num 2120708)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 973380) (.var 3)) (.num 2250836)) (.var 3)) (.num 1295550)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 410448) (.var 3)) (.num 931376))
    (.var 3)) (.num 526512)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    111723) (.var 3)) (.num 248912)) (.var 3)) (.num 138202)) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 18264) (.var 3)) (.num 39880)) (.var 3)) (.num 21699)) (.pow
    (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1520) (.var 3)) (.num 3228)) (.var
    3)) (.num 1708)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40) (.var
    3)) (.num 80)) (.var 3)) (.num 40)) (.pow (.var 2) 10)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 28560) (.var 3)) (.num 65316)) (.var 3)) (.num
    36756)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 185640) (.var 3)) (.num 419100)) (.var
    3)) (.num 233460)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 533966) (.var 3))
    (.num 1190694)) (.var 3)) (.num 656728)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 894773) (.var 3)) (.num 1972242)) (.var 3)) (.num 1077469)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 966943) (.var 3)) (.num 2108388)) (.var 3))
    (.num 1141445)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 703506)
    (.var 3)) (.num 1518494)) (.var 3)) (.num 814988)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 348336) (.var 3)) (.num 744534)) (.var 3)) (.num 396198)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 115479) (.var 3)) (.num 244330)) (.var
    3)) (.num 128851)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24361)
    (.var 3)) (.num 50936)) (.var 3)) (.num 26575)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2914) (.var 3)) (.num 5994)) (.var 3)) (.num 3080)) (.pow (.var 2)
    9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 146) (.var 3)) (.num 292)) (.var 3)) (.num
    146)) (.pow (.var 2) 10))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 5454) (.var 3)) (.num 10908)) (.var 3)) (.num 5454)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 38178) (.var 3)) (.num 76356)) (.var 3)) (.num 38178)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 119187) (.var 3)) (.num 238374)) (.var 3))
    (.num 119187)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 218808) (.var
    3)) (.num 437616)) (.var 3)) (.num 218808)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 262003) (.var 3)) (.num 524006)) (.var 3)) (.num 262003)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 214184) (.var 3)) (.num 428368)) (.var 3))
    (.num 214184)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 121277) (.var
    3)) (.num 242554)) (.var 3)) (.num 121277)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 47048) (.var 3)) (.num 94096)) (.var 3)) (.num 47048)) (.pow (.var 2) 7)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11987) (.var 3)) (.num 23974)) (.var 3)) (.num
    11987)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1814) (.var 3))
    (.num 3628)) (.var 3)) (.num 1814)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 124) (.var 3)) (.num 248)) (.var 3)) (.num 124)) (.pow (.var 2) 10))) (.pow (.var
    1) 2)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 2)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.mul (.mul (.num 48) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2)
    (.pow (.var 0) 2)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num
    4)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 24))
    (.var 3)) (.num 20)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10)
    (.var 3)) (.num 28)) (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 4) (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0)))
    (.pow (.var 0) 3)) (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 9) (.var 0)) (.mul (.neg (.num 9)) (.var 2))) (.var 0)) (.mul (.add (.mul (.num 5)
    (.pow (.var 3) 2)) (.num 2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    11) (.var 3)) (.num 38)) (.var 3)) (.num 36)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 7) (.var 3)) (.num 24)) (.var 3)) (.num 17)) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2)
    5)))) (.pow (.var 0) 4))) (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 0)) (.mul (.num 8) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 12)) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 12)) (.var 3)) (.num 8)) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 12)) (.var 3))
    (.num 2)) (.pow (.var 2) 4))) (.var 0)) (.mul (.mul (.add (.mul (.num 4) (.var 3)) (.num 4))
    (.var 3)) (.pow (.var 2) 5))) (.pow (.var 0) 3))) (.pow (.var 0) 1))) (.mul (.mul (.num 6)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13) (.var 0)) (.mul
    (.num 35) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num 8))
    (.var 3)) (.num 30)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27)
    (.var 3)) (.num 28)) (.var 3)) (.num 10)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 27) (.var 3)) (.num 32)) (.var 3)) (.num 5)) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num 12)) (.var 3)) (.num 3)) (.pow (.var 2)
    5))) (.pow (.var 0) 2))) (.pow (.var 0) 2))) (.mul (.mul (.num 36) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.mul (.num 4) (.var 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 16)) (.var 3)) (.num
    8)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20))
    (.var 3)) (.num 10)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.pow (.var 0) 2))) (.pow (.var 0)
    2))) (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 11) (.var 0)) (.mul (.num 9) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7)
    (.var 3)) (.num 4)) (.var 3)) (.neg (.num 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 19) (.var 3)) (.num 34)) (.var 3)) (.num 18)) (.pow (.var 2) 3))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 17) (.var 3)) (.num 40)) (.var 3)) (.num 23)) (.pow (.var
    2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 3)) (.num 10)) (.var 3)) (.num
    5)) (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 3))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.add (.add (.add
    (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 0)) (.mul (.add (.mul (.num 4) (.var
    3)) (.num 60)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num
    40)) (.var 3)) (.num 157)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    94) (.var 3)) (.num 284)) (.var 3)) (.num 357)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 393) (.var 3)) (.num 1136)) (.var 3)) (.num 989)) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 807) (.var 3)) (.num 2306)) (.var 3)) (.num
    1755)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 900) (.var 3)) (.num
    2448)) (.var 3)) (.num 1667)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 546) (.var 3)) (.num 1356)) (.var 3)) (.num 827)) (.pow (.var 2) 7))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 163) (.var 3)) (.num 360)) (.var 3)) (.num 197)) (.pow (.var 2)
    8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 17) (.var 3)) (.num 34)) (.var 3)) (.num
    17)) (.pow (.var 2) 9))) (.var 0))) (.pow (.var 0) 3)) (.mul (.mul (.num 3) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 27) (.var 0)) (.mul (.add (.mul (.num 14) (.var 3)) (.num 226)) (.var 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 66)) (.var 3)) (.num 352)) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 181) (.var 3)) (.num 314)) (.var 3))
    (.num 346)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 580) (.var 3))
    (.num 1384)) (.var 3)) (.num 1291)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 893) (.var 3)) (.num 2728)) (.var 3)) (.num 2453)) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 716) (.var 3)) (.num 2382)) (.var 3)) (.num 1942)) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 291) (.var 3)) (.num 930)) (.var
    3)) (.num 676)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 52) (.var
    3)) (.num 144)) (.var 3)) (.num 92)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 3) (.var 3)) (.num 6)) (.var 3)) (.num 3)) (.pow (.var 2) 9)))) (.pow (.var 0)
    4))) (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.mul (.add (.mul (.num 8)
    (.var 3)) (.num 148)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3))
    (.num 88)) (.var 3)) (.num 576)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 192) (.var 3)) (.num 564)) (.var 3)) (.num 1344)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 818) (.var 3)) (.num 2008)) (.var 3)) (.num 2360)) (.pow (.var
    2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1726) (.var 3)) (.num 3906)) (.var 3))
    (.num 3050)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2006) (.var 3))
    (.num 4252)) (.var 3)) (.num 2600)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1298) (.var 3)) (.num 2564)) (.var 3)) (.num 1324)) (.pow (.var 2) 7))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 432) (.var 3)) (.num 788)) (.var 3)) (.num 356)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 56) (.var 3)) (.num 94)) (.var 3))
    (.num 38)) (.pow (.var 2) 9))) (.pow (.var 0) 3))) (.pow (.var 0) 1))) (.mul (.mul (.num 3)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 78) (.var 0)) (.mul (.add (.mul (.num 44) (.var 3)) (.num 846))
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 3)) (.num 328)) (.var 3))
    (.num 2627)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 752) (.var 3))
    (.num 1668)) (.var 3)) (.num 4693)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 2816) (.var 3)) (.num 5810)) (.var 3)) (.num 7054)) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 5268) (.var 3)) (.num 11220)) (.var 3)) (.num 8872)) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5460) (.var 3)) (.num 11764))
    (.var 3)) (.num 7483)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3160)
    (.var 3)) (.num 6620)) (.var 3)) (.num 3649)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 940) (.var 3)) (.num 1842)) (.var 3)) (.num 902)) (.pow (.var 2) 8))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 108) (.var 3)) (.num 192)) (.var 3)) (.num 84)) (.pow
    (.var 2) 9))) (.pow (.var 0) 2))) (.pow (.var 0) 2))) (.mul (.mul (.num 18) (.mul (.add (.mul
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
    2))) (.pow (.var 0) 2))) (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
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
    (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.mul (.add (.mul (.num 8) (.var 3)) (.num
    162)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 92)) (.var
    3)) (.num 700)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 194) (.var
    3)) (.num 550)) (.var 3)) (.num 1586)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 834) (.var 3)) (.num 1794)) (.var 3)) (.num 2300)) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1786) (.var 3)) (.num 3346)) (.var 3)) (.num 2382)) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2124) (.var 3)) (.num 3672)) (.var
    3)) (.num 1812)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1422) (.var
    3)) (.num 2338)) (.var 3)) (.num 950)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 498) (.var 3)) (.num 794)) (.var 3)) (.num 296)) (.pow (.var 2) 8))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 70) (.var 3)) (.num 110)) (.var 3)) (.num 40)) (.pow (.var
    2) 9))) (.pow (.var 0) 4)))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 90) (.var 0))
    (.mul (.add (.mul (.num 52) (.var 3)) (.num 1085)) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 88) (.var 3)) (.num 438)) (.var 3)) (.num 3943)) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 953) (.var 3)) (.num 2128)) (.var 3)) (.num 7258))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3692) (.var 3)) (.num 6591))
    (.var 3)) (.num 8699)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7190)
    (.var 3)) (.num 12239)) (.var 3)) (.num 8276)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 7824) (.var 3)) (.num 13304)) (.var 3)) (.num 6469)) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4805) (.var 3)) (.num 8210)) (.var 3)) (.num
    3534)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1540) (.var 3)) (.num
    2627)) (.var 3)) (.num 1087)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 196) (.var 3)) (.num 331)) (.var 3)) (.num 135)) (.pow (.var 2) 9))) (.pow (.var 0) 3)))
    (.pow (.var 0) 1))) (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 0)) (.mul (.add
    (.mul (.num 4) (.var 3)) (.num 74)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    8) (.var 3)) (.num 44)) (.var 3)) (.num 275)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 96) (.var 3)) (.num 270)) (.var 3)) (.num 551)) (.pow (.var 2) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 409) (.var 3)) (.num 932)) (.var 3)) (.num 831)) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 867) (.var 3)) (.num 1830)) (.var
    3)) (.num 1091)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1018) (.var
    3)) (.num 2084)) (.var 3)) (.num 1089)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 670) (.var 3)) (.num 1354)) (.var 3)) (.num 685)) (.pow (.var 2) 7))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 229) (.var 3)) (.num 460)) (.var 3)) (.num 231)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 31) (.var 3)) (.num 62)) (.var 3))
    (.num 31)) (.pow (.var 2) 9))) (.pow (.var 0) 3))) (.pow (.var 0) 1))) (.mul (.mul (.num 3)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 39) (.var 0)) (.mul (.add (.mul (.num 22) (.var 3)) (.num 423))
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 36) (.var 3)) (.num 164)) (.var 3))
    (.num 1255)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 376) (.var 3))
    (.num 792)) (.var 3)) (.num 1850)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 1408) (.var 3)) (.num 2680)) (.var 3)) (.num 2271)) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 2643) (.var 3)) (.num 5286)) (.var 3)) (.num 3102)) (.pow (.var
    2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2756) (.var 3)) (.num 5802)) (.var 3))
    (.num 3201)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1606) (.var 3))
    (.num 3446)) (.var 3)) (.num 1866)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 480) (.var 3)) (.num 1010)) (.var 3)) (.num 530)) (.pow (.var 2) 8))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 55) (.var 3)) (.num 110)) (.var 3)) (.num 55)) (.pow (.var
    2) 9))) (.pow (.var 0) 2))) (.pow (.var 0) 2))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow2121.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow2121.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow2121.leading0 e g v + f * FullLow2121.leading1 e g v +
        f^2 * FullLow2121.remainder e f g v := by
  have hden : denominatorOne FullLow2121.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow2121.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow2121.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 549755813888 17 12 2) lhs =
      value (Encoding4.vars 549755813888 17 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 549755813888 := by
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
    FullLow2121.source e f g v =
      FullLow2121.leading0 e g v + f * FullLow2121.leading1 e g v +
        f^2 * FullLow2121.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 549755813888 17 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow212Encoded1

namespace SPR.N6.Tail.CoreEndpoint.FullLow212
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition1 (e f g v : ℝ) :
    FullLow2121.source e f g v =
      FullLow2121.leading0 e g v + f * FullLow2121.leading1 e g v +
        f^2 * FullLow2121.remainder e f g v :=
  FullLow212Encoded1.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow212
