import SPR.N6.Algebra.Tail.NonnegativeExpression
import SPR.N6.Algebra.Tail.OuterCore
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsHigh0
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsHigh1
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsHigh2
import SPR.N6.Algebra.Tail.SmallGap.ReducedLayers
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullHigh0410
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    2*SmallGap.PolarCoefficientsHigh0.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    3*SmallGap.PolarCoefficientsHigh0.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    4*SmallGap.PolarCoefficientsHigh0.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    5*SmallGap.PolarCoefficientsHigh0.c050 e f g v*e^4*((e+f)*(e+f+g))^5

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_010_0 e g v*e^7+1*SmallGap.ReducedLayers.high0_001_0
    e g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_0 e g v*e^5+1*SmallGap.ReducedLayers.high1_011_0 e g
    v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 658 1) .e) (.add (.mul
    (.rational 6788 1) .f) (.add (.mul (.rational 8607 1) .g) (.mul (.rational 1248 1) .v)))) .e)
    (.add (.mul (.add (.mul (.rational 43866 1) .f) (.add (.mul (.rational 75926 1) .g) (.mul
    (.rational 12178 1) .v))) .f) (.add (.mul (.add (.mul (.rational 46872 1) .g) (.mul (.rational
    15898 1) .v)) .g) (.mul (.rational 590 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.rational 199420 1) .f) (.add (.mul (.rational 437078 1) .g) (.mul (.rational 74226 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 364127 1) .g) (.mul (.rational 132776 1) .v)) .g)
    (.mul (.rational 5428 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 143323 1)
    .g) (.mul (.rational 84532 1) .v)) .g) (.mul (.rational 7313 1) (.pow .v 2))) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 678672 1) .f) (.add (.mul (.rational
    1799230 1) .g) (.mul (.rational 317235 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1886583
    1) .g) (.mul (.rational 720429 1) .v)) .g) (.mul (.rational 31092 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 994834 1) .g) (.mul (.rational 621307 1) .v)) .g) (.mul
    (.rational 57626 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 275947 1)
    .g) (.mul (.rational 252819 1) .v)) .g) (.mul (.rational 37926 1) (.pow .v 2))) (.pow .g 2))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1795712 1) .f)
    (.add (.mul (.rational 5583414 1) .g) (.mul (.rational 1011261 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 7055127 1) .g) (.mul (.rational 2783256 1) .v)) .g) (.mul (.rational 124429
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4661811 1) .g) (.mul (.rational
    3029120 1) .v)) .g) (.mul (.rational 293562 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1723463 1) .g) (.mul (.rational 1657210 1) .v)) .g) (.mul (.rational 262767
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 352065 1) .g)
    (.mul (.rational 476651 1) .v)) .g) (.mul (.rational 110798 1) (.pow .v 2))) (.pow .g 3))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3785864
    1) .f) (.add (.mul (.rational 13502806 1) .g) (.mul (.rational 2495859 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 19960195 1) .g) (.mul (.rational 8069011 1) .v)) .g) (.mul
    (.rational 369874 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 15846454 1)
    .g) (.mul (.rational 10604236 1) .v)) .g) (.mul (.rational 1059705 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7315322 1) .g) (.mul (.rational 7288626 1) .v)) .g)
    (.mul (.rational 1200384 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1983674 1) .g) (.mul (.rational 2803171 1) .v)) .g) (.mul (.rational 683159 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 302687 1) .g) (.mul
    (.rational 595847 1) .v)) .g) (.mul (.rational 204218 1) (.pow .v 2))) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    6464388 1) .f) (.add (.mul (.rational 26008478 1) .g) (.mul (.rational 4884909 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 44020323 1) .g) (.mul (.rational 18138930 1) .v)) .g) (.mul
    (.rational 847231 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 40795727 1)
    .g) (.mul (.rational 27932793 1) .v)) .g) (.mul (.rational 2855881 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 22569568 1) .g) (.mul (.rational 23114322 1) .v)) .g)
    (.mul (.rational 3914694 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7619220 1) .g) (.mul (.rational 11127907 1) .v)) .g) (.mul (.rational 2806909 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1537921 1) .g) (.mul
    (.rational 3148950 1) .v)) .g) (.mul (.rational 1126083 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 173537 1) .g) (.mul (.rational 501963 1) .v)) .g)
    (.mul (.rational 249648 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9035260 1) .f)
    (.add (.mul (.rational 40474694 1) .g) (.mul (.rational 7700823 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 77169339 1) .g) (.mul (.rational 32292117 1) .v)) .g) (.mul (.rational
    1530568 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 81750058 1) .g) (.mul
    (.rational 57014685 1) .v)) .g) (.mul (.rational 5933668 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 52691569 1) .g) (.mul (.rational 55165733 1) .v)) .g) (.mul
    (.rational 9547062 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    21267876 1) .g) (.mul (.rational 31891349 1) .v)) .g) (.mul (.rational 8259517 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5329583 1) .g) (.mul
    (.rational 11260893 1) .v)) .g) (.mul (.rational 4159372 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 792902 1) .g) (.mul (.rational 2380441 1) .v)) .g)
    (.mul (.rational 1231755 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 63543 1) .g) (.mul (.rational 281857 1) .v)) .g) (.mul (.rational 205618 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10403016 1) .f) (.add (.mul (.rational
    51346100 1) .g) (.mul (.rational 9873825 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    108880681 1) .g) (.mul (.rational 46143708 1) .v)) .g) (.mul (.rational 2212977 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 129764583 1) .g) (.mul (.rational 91881894
    1) .v)) .g) (.mul (.rational 9699352 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 95459889 1) .g) (.mul (.rational 101766198 1) .v)) .g) (.mul (.rational 17918337 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 44806545 1) .g) (.mul
    (.rational 68655174 1) .v)) .g) (.mul (.rational 18158385 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 13394535 1) .g) (.mul (.rational 29040102 1) .v)) .g)
    (.mul (.rational 11004861 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2467203 1) .g) (.mul (.rational 7637154 1) .v)) .g) (.mul (.rational 4077465 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 259809 1) .g) (.mul
    (.rational 1194702 1) .v)) .g) (.mul (.rational 905401 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 13412 1) .g) (.mul (.rational 100969 1) .v)) .g)
    (.mul (.rational 112786 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 9894508 1) .f) (.add (.mul (.rational 53348074 1) .g) (.mul (.rational 10350483 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 124534839 1) .g) (.mul (.rational 53340287 1)
    .v)) .g) (.mul (.rational 2582866 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 164903882 1) .g) (.mul (.rational 118248130 1) .v)) .g) (.mul (.rational 12628759
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 136307556 1) .g) (.mul
    (.rational 147521880 1) .v)) .g) (.mul (.rational 26343504 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 72911916 1) .g) (.mul (.rational 113751792 1) .v))
    .g) (.mul (.rational 30605586 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25299876 1) .g) (.mul (.rational 56044464 1) .v)) .g) (.mul (.rational 21685860 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5546412 1) .g) (.mul
    (.rational 17614296 1) .v)) .g) (.mul (.rational 9646434 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 721026 1) .g) (.mul (.rational 3417720 1) .v)) .g)
    (.mul (.rational 2671592 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 48728 1) .g) (.mul (.rational 380135 1) .v)) .g) (.mul (.rational 440877 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1237 1) .g) (.mul
    (.rational 20811 1) .v)) .g) (.mul (.rational 39408 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 7770464 1) .f) (.add (.mul (.rational 45439966
    1) .g) (.mul (.rational 8882549 1) .v))) .f) (.add (.mul (.add (.mul (.rational 115793613 1)
    .g) (.mul (.rational 50041550 1) .v)) .g) (.mul (.rational 2442583 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 168652913 1) .g) (.mul (.rational 122232539 1) .v)) .g)
    (.mul (.rational 13181025 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    154733194 1) .g) (.mul (.rational 169608362 1) .v)) .g) (.mul (.rational 30643998 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 92886948 1) .g) (.mul
    (.rational 147135912 1) .v)) .g) (.mul (.rational 40153938 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 36675114 1) .g) (.mul (.rational 82732944 1) .v)) .g)
    (.mul (.rational 32570496 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9314586 1) .g) (.mul (.rational 30230172 1) .v)) .g) (.mul (.rational 16907688 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1437624 1) .g) (.mul
    (.rational 6992820 1) .v)) .g) (.mul (.rational 5608330 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 119552 1) .g) (.mul (.rational 961621 1) .v)) .g)
    (.mul (.rational 1150679 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3956 1) .g) (.mul (.rational 68986 1) .v)) .g) (.mul (.rational 135669 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1869 1) .v) .g) (.mul (.rational
    7903 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 5019928 1) .f) (.add (.mul (.rational 31646378 1) .g) (.mul (.rational 6225609 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 87417005 1) .g) (.mul (.rational 38065391 1) .v))
    .g) (.mul (.rational 1870492 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    138896758 1) .g) (.mul (.rational 101580037 1) .v)) .g) (.mul (.rational 11042954 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 140056301 1) .g) (.mul (.rational
    155185965 1) .v)) .g) (.mul (.rational 28314330 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 93227750 1) .g) (.mul (.rational 149593444 1) .v)) .g) (.mul
    (.rational 41312898 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 41258742 1) .g) (.mul (.rational 94521210 1) .v)) .g) (.mul (.rational 37753296 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11904636 1) .g) (.mul
    (.rational 39356982 1) .v)) .g) (.mul (.rational 22403682 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2124210 1) .g) (.mul (.rational 10563510 1) .v)) .g)
    (.mul (.rational 8656340 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 209148 1) .g) (.mul (.rational 1727264 1) .v)) .g) (.mul (.rational 2121893 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8484 1) .g) (.mul
    (.rational 152652 1) .v)) .g) (.mul (.rational 309984 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 5392 1) .v) .g) (.mul (.rational 23703 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 688 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2648160 1) .f) (.add (.mul (.rational
    17904154 1) .g) (.mul (.rational 3541143 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    53293197 1) .g) (.mul (.rational 23355456 1) .v)) .g) (.mul (.rational 1154127 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 91741897 1) .g) (.mul (.rational 67609204
    1) .v)) .g) (.mul (.rational 7400042 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 100853641 1) .g) (.mul (.rational 112774806 1) .v)) .g) (.mul (.rational 20746305
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 73725267 1) .g)
    (.mul (.rational 119601559 1) .v)) .g) (.mul (.rational 33361680 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 36143506 1) .g) (.mul (.rational 83896106 1)
    .v)) .g) (.mul (.rational 33919074 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11674302 1) .g) (.mul (.rational 39208176 1) .v)) .g) (.mul (.rational
    22652154 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2362590
    1) .g) (.mul (.rational 11973348 1) .v)) .g) (.mul (.rational 9991030 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 268320 1) .g) (.mul (.rational 2266858 1)
    .v)) .g) (.mul (.rational 2847279 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12846 1) .g) (.mul (.rational 237516 1) .v)) .g) (.mul (.rational 495624 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 10292 1) .v) .g) (.mul
    (.rational 46777 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1772 1) (.pow .v
    2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1127336 1) .f) (.add (.mul (.rational 8137650 1) .g) (.mul (.rational 1616745 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 25969113 1) .g) (.mul (.rational 11442129 1) .v)) .g) (.mul
    (.rational 568078 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 48153714 1)
    .g) (.mul (.rational 35715512 1) .v)) .g) (.mul (.rational 3931431 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 57325562 1) .g) (.mul (.rational 64596154 1) .v)) .g)
    (.mul (.rational 11965296 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 45659586 1) .g) (.mul (.rational 74757347 1) .v)) .g) (.mul (.rational 21027755 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 24564295 1) .g) (.mul
    (.rational 57653071 1) .v)) .g) (.mul (.rational 23547258 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8780618 1) .g) (.mul (.rational 29885254 1) .v)) .g)
    (.mul (.rational 17481576 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1986624 1) .g) (.mul (.rational 10231092 1) .v)) .g) (.mul (.rational 8668016 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 255432 1) .g) (.mul
    (.rational 2200274 1) .v)) .g) (.mul (.rational 2815771 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14070 1) .g) (.mul (.rational 266322 1) .v)) .g)
    (.mul (.rational 568680 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    13636 1) .v) .g) (.mul (.rational 63763 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 2968 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 380462 1) .f) (.add (.mul (.rational 2920768 1) .g)
    (.mul (.rational 582423 1) .v))) .f) (.add (.mul (.add (.mul (.rational 9949297 1) .g) (.mul
    (.rational 4403086 1) .v)) .g) (.mul (.rational 219445 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19773781 1) .g) (.mul (.rational 14743855 1) .v)) .g) (.mul (.rational
    1630527 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 25348148 1) .g)
    (.mul (.rational 28744590 1) .v)) .g) (.mul (.rational 5354622 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 21855092 1) .g) (.mul (.rational 36056251 1) .v))
    .g) (.mul (.rational 10211873 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12804533 1) .g) (.mul (.rational 30329390 1) .v)) .g) (.mul (.rational 12491675 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5019397 1) .g) (.mul
    (.rational 17273991 1) .v)) .g) (.mul (.rational 10208604 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1255636 1) .g) (.mul (.rational 6553850 1) .v)) .g)
    (.mul (.rational 5622862 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 180258 1) .g) (.mul (.rational 1578250 1) .v)) .g) (.mul (.rational 2051317 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 11220 1) .g) (.mul
    (.rational 216636 1) .v)) .g) (.mul (.rational 471558 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 12782 1) .v) .g) (.mul (.rational 61215 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 3374 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 99138 1) .f) (.add (.mul
    (.rational 806642 1) .g) (.mul (.rational 161313 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2921877 1) .g) (.mul (.rational 1297563 1) .v)) .g) (.mul (.rational 64864 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6197774 1) .g) (.mul (.rational 4640499
    1) .v)) .g) (.mul (.rational 515080 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8514247 1) .g) (.mul (.rational 9703611 1) .v)) .g) (.mul (.rational 1815714 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7903224 1) .g) (.mul
    (.rational 13117741 1) .v)) .g) (.mul (.rational 3735529 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5011027 1) .g) (.mul (.rational 11956497 1) .v)) .g)
    (.mul (.rational 4957428 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2138462 1) .g) (.mul (.rational 7425033 1) .v)) .g) (.mul (.rational 4424091 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 586359 1) .g) (.mul
    (.rational 3093809 1) .v)) .g) (.mul (.rational 2681210 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 93002 1) .g) (.mul (.rational 825126 1) .v)) .g)
    (.mul (.rational 1085919 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6456 1) .g) (.mul (.rational 126696 1) .v)) .g) (.mul (.rational 280104 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 8464 1) .v) .g) (.mul (.rational
    41333 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 2632 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    19156 1) .f) (.add (.mul (.rational 164701 1) .g) (.mul (.rational 33003 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 632304 1) .g) (.mul (.rational 281484 1) .v)) .g) (.mul
    (.rational 14101 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1426213 1) .g)
    (.mul (.rational 1071042 1) .v)) .g) (.mul (.rational 119194 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2091103 1) .g) (.mul (.rational 2391866 1) .v)) .g) (.mul
    (.rational 449007 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2080155 1) .g) (.mul (.rational 3467912 1) .v)) .g) (.mul (.rational 991489 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1419971 1) .g) (.mul (.rational
    3406410 1) .v)) .g) (.mul (.rational 1419313 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 655799 1) .g) (.mul (.rational 2292094 1) .v)) .g) (.mul
    (.rational 1374009 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    195753 1) .g) (.mul (.rational 1041262 1) .v)) .g) (.mul (.rational 909209 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 34028 1) .g) (.mul (.rational
    304941 1) .v)) .g) (.mul (.rational 405107 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2609 1) .g) (.mul (.rational 51842 1) .v)) .g) (.mul (.rational
    115974 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3872 1) .v) .g)
    (.mul (.rational 19193 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1388 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2570 1) .f) (.add (.mul (.rational 23288 1) .g) (.mul (.rational 4671 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 94485 1) .g) (.mul (.rational 42115 1) .v)) .g)
    (.mul (.rational 2112 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 225912 1)
    .g) (.mul (.rational 169926 1) .v)) .g) (.mul (.rational 18937 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 352296 1) .g) (.mul (.rational 403788 1) .v)) .g) (.mul
    (.rational 75936 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    374136 1) .g) (.mul (.rational 625338 1) .v)) .g) (.mul (.rational 179196 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 273798 1) .g) (.mul (.rational
    658938 1) .v)) .g) (.mul (.rational 275352 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 136200 1) .g) (.mul (.rational 477960 1) .v)) .g) (.mul
    (.rational 287574 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    44022 1) .g) (.mul (.rational 235356 1) .v)) .g) (.mul (.rational 206472 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8336 1) .g) (.mul (.rational 75183
    1) .v)) .g) (.mul (.rational 100476 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 701 1) .g) (.mul (.rational 14043 1) .v)) .g) (.mul (.rational 31656 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1162 1) .v) .g) (.mul (.rational
    5817 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 472 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    212 1) .f) (.add (.mul (.rational 2020 1) .g) (.mul (.rational 405 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 8640 1) .g) (.mul (.rational 3850 1) .v)) .g) (.mul (.rational 193 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 21840 1) .g) (.mul (.rational
    16425 1) .v)) .g) (.mul (.rational 1830 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36120 1) .g) (.mul (.rational 41400 1) .v)) .g) (.mul (.rational 7785 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 40824 1) .g) (.mul
    (.rational 68250 1) .v)) .g) (.mul (.rational 19560 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 31920 1) .g) (.mul (.rational 76860 1) .v)) .g) (.mul
    (.rational 32130 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    17040 1) .g) (.mul (.rational 59850 1) .v)) .g) (.mul (.rational 36036 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5940 1) .g) (.mul (.rational 31800 1)
    .v)) .g) (.mul (.rational 27930 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1220 1) .g) (.mul (.rational 11025 1) .v)) .g) (.mul (.rational 14760 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 112 1) .g) (.mul
    (.rational 2250 1) .v)) .g) (.mul (.rational 5085 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 205 1) .v) .g) (.mul (.rational 1030 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 93 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 7))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8 1) .f) (.add (.mul
    (.rational 80 1) .g) (.mul (.rational 16 1) .v))) .f) (.add (.mul (.add (.mul (.rational 360
    1) .g) (.mul (.rational 160 1) .v)) .g) (.mul (.rational 8 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 960 1) .g) (.mul (.rational 720 1) .v)) .g) (.mul (.rational 80
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1680 1) .g) (.mul
    (.rational 1920 1) .v)) .g) (.mul (.rational 360 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2016 1) .g) (.mul (.rational 3360 1) .v)) .g) (.mul
    (.rational 960 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1680 1) .g) (.mul (.rational 4032 1) .v)) .g) (.mul (.rational 1680 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 960 1) .g) (.mul (.rational 3360 1) .v)) .g)
    (.mul (.rational 2016 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 360 1) .g) (.mul (.rational 1920 1) .v)) .g) (.mul (.rational 1680 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 80 1) .g) (.mul (.rational 720 1)
    .v)) .g) (.mul (.rational 960 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8 1) .g) (.mul (.rational 160 1) .v)) .g) (.mul (.rational 360 1) (.pow .v 2)))
    (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 16 1) .v) .g) (.mul (.rational 80 1)
    (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 8 1) (.pow .v 2)) (.pow .g 10))) (.pow
    .f 8))) .e)

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0410

namespace FullHigh0411
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    4*SmallGap.PolarCoefficientsHigh0.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    2*SmallGap.PolarCoefficientsHigh1.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    12*SmallGap.PolarCoefficientsHigh0.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    3*SmallGap.PolarCoefficientsHigh1.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    24*SmallGap.PolarCoefficientsHigh0.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    4*SmallGap.PolarCoefficientsHigh1.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    40*SmallGap.PolarCoefficientsHigh0.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    5*SmallGap.PolarCoefficientsHigh1.c050 e f g v*e^4*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh0.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    1*SmallGap.PolarCoefficientsHigh0.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsHigh0.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh0.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e^4*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^6+4*SmallGap.ReducedLayers.high0_010_1 e g v*e^7+8*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^7+1*SmallGap.ReducedLayers.high0_001_1 e g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.high1_020_0 e g v*e^4+3*SmallGap.ReducedLayers.high1_020_1 e
    g v*e^5+6*SmallGap.ReducedLayers.high1_011_0 e g v*e^5+1*SmallGap.ReducedLayers.high1_011_1 e
    g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7329 1) .e) (.add (.mul
    (.rational 73394 1) .f) (.add (.mul (.rational 92586 1) .g) (.mul (.rational 13796 1) .v))))
    .e) (.add (.mul (.add (.mul (.rational 460942 1) .f) (.add (.mul (.rational 793789 1) .g)
    (.mul (.rational 129837 1) .v))) .f) (.add (.mul (.add (.mul (.rational 487828 1) .g) (.mul
    (.rational 167814 1) .v)) .g) (.mul (.rational 6475 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 2037115 1) .f) (.add (.mul (.rational 4442933 1) .g) (.mul
    (.rational 764765 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3685279 1) .g) (.mul
    (.rational 1354542 1) .v)) .g) (.mul (.rational 57086 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1446072 1) .g) (.mul (.rational 852731 1) .v)) .g) (.mul (.rational
    75857 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    6736913 1) .f) (.add (.mul (.rational 17775422 1) .g) (.mul (.rational 3161671 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 18560282 1) .g) (.mul (.rational 7112241 1) .v)) .g) (.mul
    (.rational 314199 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9757283 1)
    .g) (.mul (.rational 6069979 1) .v)) .g) (.mul (.rational 574373 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2703673 1) .g) (.mul (.rational 2442687 1) .v)) .g)
    (.mul (.rational 371657 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 17304249 1) .f) (.add (.mul (.rational 53555749 1)
    .g) (.mul (.rational 9749983 1) .v))) .f) (.add (.mul (.add (.mul (.rational 67396670 1) .g)
    (.mul (.rational 26594496 1) .v)) .g) (.mul (.rational 1210030 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 44398097 1) .g) (.mul (.rational 28665512 1) .v)) .g) (.mul
    (.rational 2817300 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16392910
    1) .g) (.mul (.rational 15525646 1) .v)) .g) (.mul (.rational 2482527 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3353942 1) .g) (.mul (.rational 4421737
    1) .v)) .g) (.mul (.rational 1027598 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 35359841 1) .f) (.add (.mul
    (.rational 125546952 1) .g) (.mul (.rational 23263743 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 184844999 1) .g) (.mul (.rational 74576591 1) .v)) .g) (.mul (.rational 3463137 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 146298913 1) .g) (.mul (.rational
    97134948 1) .v)) .g) (.mul (.rational 9799064 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 67434687 1) .g) (.mul (.rational 66153894 1) .v)) .g) (.mul (.rational
    10941316 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 18303216
    1) .g) (.mul (.rational 25217089 1) .v)) .g) (.mul (.rational 6124951 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2805921 1) .g) (.mul (.rational 5319271
    1) .v)) .g) (.mul (.rational 1797231 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 58394287 1) .f)
    (.add (.mul (.rational 233900957 1) .g) (.mul (.rational 43958375 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 394320073 1) .g) (.mul (.rational 161934370 1) .v)) .g) (.mul
    (.rational 7634822 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 364292250 1)
    .g) (.mul (.rational 247305307 1) .v)) .g) (.mul (.rational 25437749 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 201181826 1) .g) (.mul (.rational 202927122 1) .v))
    .g) (.mul (.rational 34412711 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 67940531 1) .g) (.mul (.rational 96905459 1) .v)) .g) (.mul (.rational 24312433 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13762539 1) .g) (.mul
    (.rational 27230006 1) .v)) .g) (.mul (.rational 9595748 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1565828 1) .g) (.mul (.rational 4320579 1) .v)) .g)
    (.mul (.rational 2090674 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 78720759 1) .f)
    (.add (.mul (.rational 351104910 1) .g) (.mul (.rational 66764607 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 666780466 1) .g) (.mul (.rational 277881053 1) .v)) .g) (.mul
    (.rational 13258807 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 704086359
    1) .g) (.mul (.rational 486844957 1) .v)) .g) (.mul (.rational 50849279 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 452887184 1) .g) (.mul (.rational 467403157 1)
    .v)) .g) (.mul (.rational 80837799 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 182758625 1) .g) (.mul (.rational 268194501 1) .v)) .g) (.mul (.rational
    69013756 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 45914238
    1) .g) (.mul (.rational 94084145 1) .v)) .g) (.mul (.rational 34256131 1) (.pow .v 2))) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6875919 1) .g) (.mul (.rational 19798797
    1) .v)) .g) (.mul (.rational 9991458 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 557902 1) .g) (.mul (.rational 2342381 1) .v)) .g) (.mul (.rational
    1643077 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 87122425 1) .f) (.add
    (.mul (.rational 428163489 1) .g) (.mul (.rational 82240795 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 904349484 1) .g) (.mul (.rational 381654252 1) .v)) .g) (.mul (.rational
    18389992 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1074217711 1) .g)
    (.mul (.rational 754494058 1) .v)) .g) (.mul (.rational 79804236 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 788391941 1) .g) (.mul (.rational 829637294 1) .v))
    .g) (.mul (.rational 145825769 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 369761923 1) .g) (.mul (.rational 555831166 1) .v)) .g) (.mul (.rational
    146028013 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    110709257 1) .g) (.mul (.rational 233671814 1) .v)) .g) (.mul (.rational 87373007 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 20494367 1) .g) (.mul
    (.rational 61179386 1) .v)) .g) (.mul (.rational 31942483 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2179838 1) .g) (.mul (.rational 9557034 1) .v)) .g)
    (.mul (.rational 6999843 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 114468 1) .g) (.mul (.rational 810767 1) .v)) .g) (.mul (.rational 862062 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 79315977 1) .f) (.add (.mul
    (.rational 425836086 1) .g) (.mul (.rational 82518293 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 990131065 1) .g) (.mul (.rational 422470147 1) .v)) .g) (.mul (.rational 20527991
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1306559639 1) .g) (.mul
    (.rational 930276204 1) .v)) .g) (.mul (.rational 99460130 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1077144660 1) .g) (.mul (.rational 1152774072 1) .v)) .g)
    (.mul (.rational 205427424 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 575399622 1) .g) (.mul (.rational 883127154 1) .v)) .g) (.mul (.rational 236122566
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 199781820 1) .g)
    (.mul (.rational 432583200 1) .v)) .g) (.mul (.rational 165410070 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 43951610 1) .g) (.mul (.rational 135354366
    1) .v)) .g) (.mul (.rational 72713214 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5758017 1) .g) (.mul (.rational 26211692 1) .v)) .g) (.mul (.rational
    19904350 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 394545 1)
    .g) (.mul (.rational 2922046 1) .v)) .g) (.mul (.rational 3250967 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10243 1) .g) (.mul (.rational 161447 1) .v))
    .g) (.mul (.rational 288638 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 59314775 1) .f) (.add (.mul (.rational 345413081 1) .g) (.mul
    (.rational 67462733 1) .v))) .f) (.add (.mul (.add (.mul (.rational 876714877 1) .g) (.mul
    (.rational 377744762 1) .v)) .g) (.mul (.rational 18490274 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1272358076 1) .g) (.mul (.rational 916910599 1) .v)) .g) (.mul
    (.rational 98957133 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1163927569 1) .g) (.mul (.rational 1264291678 1) .v)) .g) (.mul (.rational 228013287 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 697391796 1) .g) (.mul
    (.rational 1090083978 1) .v)) .g) (.mul (.rational 295923342 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 275274426 1) .g) (.mul (.rational 609530292 1)
    .v)) .g) (.mul (.rational 237612312 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 70059172 1) .g) (.mul (.rational 221723726 1) .v)) .g) (.mul (.rational
    122060400 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 10873638
    1) .g) (.mul (.rational 51161824 1) .v)) .g) (.mul (.rational 40070404 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 913952 1) .g) (.mul (.rational 7042014 1)
    .v)) .g) (.mul (.rational 8144971 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 30792 1) .g) (.mul (.rational 508484 1) .v)) .g) (.mul (.rational 953976 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 13990 1) .v) .g) (.mul
    (.rational 55521 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 36256123 1) .f) (.add (.mul (.rational 227627762 1) .g) (.mul
    (.rational 44775029 1) .v))) .f) (.add (.mul (.add (.mul (.rational 626280682 1) .g) (.mul
    (.rational 272216043 1) .v)) .g) (.mul (.rational 13412909 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 991416297 1) .g) (.mul (.rational 722189909 1) .v)) .g) (.mul
    (.rational 78598019 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    996483497 1) .g) (.mul (.rational 1096807865 1) .v)) .g) (.mul (.rational 199917623 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 661704803 1) .g) (.mul
    (.rational 1051178308 1) .v)) .g) (.mul (.rational 289211551 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 292502718 1) .g) (.mul (.rational 660619326 1)
    .v)) .g) (.mul (.rational 261920106 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 84459470 1) .g) (.mul (.rational 273822206 1) .v)) .g) (.mul (.rational
    153990060 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 15124224
    1) .g) (.mul (.rational 73274642 1) .v)) .g) (.mul (.rational 58951946 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1500626 1) .g) (.mul (.rational 11977304
    1) .v)) .g) (.mul (.rational 14328673 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 61714 1) .g) (.mul (.rational 1062844 1) .v)) .g) (.mul (.rational
    2079768 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 37964 1) .v) .g)
    (.mul (.rational 158683 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 4634 1)
    (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 17951723 1) .f) (.add (.mul (.rational 120885431 1) .g) (.mul (.rational 23932429
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 358402550 1) .g) (.mul (.rational 157018200 1)
    .v)) .g) (.mul (.rational 7783266 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 614633327 1) .g) (.mul (.rational 452075476 1) .v)) .g) (.mul (.rational 49573952
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 673334800 1) .g) (.mul
    (.rational 749928570 1) .v)) .g) (.mul (.rational 137995865 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 490788404 1) .g) (.mul (.rational 790976965 1) .v))
    .g) (.mul (.rational 220231832 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 240130477 1) .g) (.mul (.rational 551947542 1) .v)) .g) (.mul (.rational
    222130897 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 77519302
    1) .g) (.mul (.rational 256756056 1) .v)) .g) (.mul (.rational 147126840 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 15713532 1) .g) (.mul (.rational
    78134536 1) .v)) .g) (.mul (.rational 64359452 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1793308 1) .g) (.mul (.rational 14770754 1) .v)) .g) (.mul
    (.rational 18200143 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 86690 1) .g) (.mul (.rational 1550512 1) .v)) .g) (.mul (.rational 3148216 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 67680 1) .v) .g) (.mul (.rational
    296181 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 11252 1) (.pow .v 2)) (.pow
    .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    7099491 1) .f) (.add (.mul (.rational 51048712 1) .g) (.mul (.rational 10165717 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 162271817 1) .g) (.mul (.rational 71600421 1) .v)) .g)
    (.mul (.rational 3568627 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    299735723 1) .g) (.mul (.rational 222379784 1) .v)) .g) (.mul (.rational 24553068 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 355511743 1) .g) (.mul (.rational
    400143022 1) .v)) .g) (.mul (.rational 74261352 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 282218588 1) .g) (.mul (.rational 460694773 1) .v)) .g) (.mul
    (.rational 129640859 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 151415677 1) .g) (.mul (.rational 353492495 1) .v)) .g) (.mul (.rational 144158771
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 54030247 1) .g)
    (.mul (.rational 182376576 1) .v)) .g) (.mul (.rational 106246971 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 12222258 1) .g) (.mul (.rational 62189624 1)
    .v)) .g) (.mul (.rational 52294778 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1574978 1) .g) (.mul (.rational 13340172 1) .v)) .g) (.mul (.rational
    16867997 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 87262 1)
    .g) (.mul (.rational 1614438 1) .v)) .g) (.mul (.rational 3385884 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 82978 1) .v) .g) (.mul (.rational 378121 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 17604 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2195948 1) .f)
    (.add (.mul (.rational 16795476 1) .g) (.mul (.rational 3362157 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 56994095 1) .g) (.mul (.rational 25307726 1) .v)) .g) (.mul (.rational
    1267602 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 112835962 1) .g) (.mul
    (.rational 84359157 1) .v)) .g) (.mul (.rational 9371315 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 144090360 1) .g) (.mul (.rational 163690566 1) .v)) .g) (.mul
    (.rational 30609817 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 123774987 1) .g) (.mul (.rational 204333487 1) .v)) .g) (.mul (.rational 58041613
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 72272451 1) .g)
    (.mul (.rational 171041494 1) .v)) .g) (.mul (.rational 70567980 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 28251560 1) .g) (.mul (.rational 96954491 1)
    .v)) .g) (.mul (.rational 57303562 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7054462 1) .g) (.mul (.rational 36625602 1) .v)) .g) (.mul (.rational
    31356645 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1012495
    1) .g) (.mul (.rational 8789056 1) .v)) .g) (.mul (.rational 11365637 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 63164 1) .g) (.mul (.rational 1204052 1)
    .v)) .g) (.mul (.rational 2597208 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 71092 1) .v) .g) (.mul (.rational 335585 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 18460 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 514828 1) .f) (.add (.mul (.rational
    4174340 1) .g) (.mul (.rational 839411 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    15065545 1) .g) (.mul (.rational 6726241 1) .v)) .g) (.mul (.rational 338357 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 31835613 1) .g) (.mul (.rational 23957875 1) .v))
    .g) (.mul (.rational 2675609 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 43564382 1) .g) (.mul (.rational 49883859 1) .v)) .g) (.mul (.rational 9389321 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 40278755 1) .g) (.mul
    (.rational 67133789 1) .v)) .g) (.mul (.rational 19223566 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 25439310 1) .g) (.mul (.rational 60907901 1) .v)) .g)
    (.mul (.rational 25379831 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10816195 1) .g) (.mul (.rational 37646541 1) .v)) .g) (.mul (.rational 22525306 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2956138 1) .g) (.mul
    (.rational 15613945 1) .v)) .g) (.mul (.rational 13573169 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 467737 1) .g) (.mul (.rational 4146484 1) .v)) .g)
    (.mul (.rational 5465086 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32437 1) .g) (.mul (.rational 634454 1) .v)) .g) (.mul (.rational 1401596 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 42300 1) .v) .g) (.mul (.rational
    205761 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 13054 1) (.pow .v 2)) (.pow
    .g 10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    87153 1) .f) (.add (.mul (.rational 746969 1) .g) (.mul (.rational 150741 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 2858062 1) .g) (.mul (.rational 1281512 1) .v)) .g) (.mul
    (.rational 64687 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6423573 1) .g)
    (.mul (.rational 4859182 1) .v)) .g) (.mul (.rational 544973 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9382541 1) .g) (.mul (.rational 10811146 1) .v)) .g) (.mul
    (.rational 2045535 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9296147 1) .g) (.mul (.rational 15612324 1) .v)) .g) (.mul (.rational 4499293 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6319299 1) .g) (.mul (.rational
    15270290 1) .v)) .g) (.mul (.rational 6413533 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2905927 1) .g) (.mul (.rational 10228862 1) .v)) .g) (.mul
    (.rational 6180531 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    863638 1) .g) (.mul (.rational 4625022 1) .v)) .g) (.mul (.rational 4069793 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 149496 1) .g) (.mul (.rational
    1347991 1) .v)) .g) (.mul (.rational 1803935 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 11419 1) .g) (.mul (.rational 228094 1) .v)) .g) (.mul (.rational
    513648 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 16964 1) .v) .g)
    (.mul (.rational 84548 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 6084 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 9829 1) .f) (.add (.mul (.rational 88829 1) .g) (.mul (.rational 17962 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 359363 1) .g) (.mul (.rational 161539 1) .v)) .g)
    (.mul (.rational 8170 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 856540 1)
    .g) (.mul (.rational 649975 1) .v)) .g) (.mul (.rational 73080 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1331162 1) .g) (.mul (.rational 1539836 1) .v)) .g) (.mul
    (.rational 292277 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1408414 1) .g) (.mul (.rational 2376808 1) .v)) .g) (.mul (.rational 687736 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1026494 1) .g) (.mul (.rational
    2495402 1) .v)) .g) (.mul (.rational 1053416 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 508348 1) .g) (.mul (.rational 1802794 1) .v)) .g) (.mul
    (.rational 1096312 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    163505 1) .g) (.mul (.rational 883820 1) .v)) .g) (.mul (.rational 784070 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 30797 1) .g) (.mul (.rational
    280966 1) .v)) .g) (.mul (.rational 379912 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2575 1) .g) (.mul (.rational 52203 1) .v)) .g) (.mul (.rational
    119126 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 4295 1) .v) .g)
    (.mul (.rational 21776 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1757 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 634 1) .f) (.add (.mul (.rational 6030 1) .g) (.mul (.rational 1218 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 25740 1) .g) (.mul (.rational 11560 1) .v)) .g) (.mul
    (.rational 584 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 64920 1) .g)
    (.mul (.rational 49230 1) .v)) .g) (.mul (.rational 5530 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 107100 1) .g) (.mul (.rational 123840 1) .v)) .g) (.mul
    (.rational 23490 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    120708 1) .g) (.mul (.rational 203700 1) .v)) .g) (.mul (.rational 58920 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 94080 1) .g) (.mul (.rational
    228816 1) .v)) .g) (.mul (.rational 96600 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50040 1) .g) (.mul (.rational 177660 1) .v)) .g) (.mul (.rational
    108108 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 17370 1)
    .g) (.mul (.rational 94080 1) .v)) .g) (.mul (.rational 83580 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3550 1) .g) (.mul (.rational 32490 1) .v)) .g)
    (.mul (.rational 44040 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 324 1) .g) (.mul (.rational 6600 1) .v)) .g) (.mul (.rational 15120 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 598 1) .v) .g) (.mul (.rational 3050
    1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 274 1) (.pow .v 2)) (.pow .g 10)))
    (.pow .f 7))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16 1)
    .f) (.add (.mul (.rational 160 1) .g) (.mul (.rational 32 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 720 1) .g) (.mul (.rational 320 1) .v)) .g) (.mul (.rational 16 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1920 1) .g) (.mul (.rational 1440 1) .v)) .g)
    (.mul (.rational 160 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3360
    1) .g) (.mul (.rational 3840 1) .v)) .g) (.mul (.rational 720 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4032 1) .g) (.mul (.rational 6720 1) .v)) .g)
    (.mul (.rational 1920 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3360 1) .g) (.mul (.rational 8064 1) .v)) .g) (.mul (.rational 3360 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1920 1) .g) (.mul (.rational
    6720 1) .v)) .g) (.mul (.rational 4032 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 720 1) .g) (.mul (.rational 3840 1) .v)) .g) (.mul (.rational 3360 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 160 1) .g) (.mul
    (.rational 1440 1) .v)) .g) (.mul (.rational 1920 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16 1) .g) (.mul (.rational 320 1) .v)) .g) (.mul (.rational
    720 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 32 1) .v) .g) (.mul
    (.rational 160 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 16 1) (.pow .v 2))
    (.pow .g 10))) (.pow .f 8)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0411

namespace FullHigh0412
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    4*SmallGap.PolarCoefficientsHigh1.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    2*SmallGap.PolarCoefficientsHigh2.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    12*SmallGap.PolarCoefficientsHigh0.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    12*SmallGap.PolarCoefficientsHigh1.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    3*SmallGap.PolarCoefficientsHigh2.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    48*SmallGap.PolarCoefficientsHigh0.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsHigh1.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    4*SmallGap.PolarCoefficientsHigh2.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    120*SmallGap.PolarCoefficientsHigh0.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsHigh1.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    5*SmallGap.PolarCoefficientsHigh2.c050 e f g v*e^4*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh1.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    3*SmallGap.PolarCoefficientsHigh0.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsHigh1.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    6*SmallGap.PolarCoefficientsHigh0.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh1.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    9*SmallGap.PolarCoefficientsHigh0.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsHigh1.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e^4*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(84*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^5+28*SmallGap.ReducedLayers.high0_010_1 e g v*e^6+4*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^7+28*SmallGap.ReducedLayers.high0_001_0 e g v*e^6+8*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^7+1*SmallGap.ReducedLayers.high0_001_2 e g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(30*SmallGap.ReducedLayers.high1_020_0 e g v*e^3+15*SmallGap.ReducedLayers.high1_020_1 e
    g v*e^4+3*SmallGap.ReducedLayers.high1_020_2 e g v*e^5+15*SmallGap.ReducedLayers.high1_011_0 e
    g v*e^4+6*SmallGap.ReducedLayers.high1_011_1 e g v*e^5+1*SmallGap.ReducedLayers.high1_011_2 e
    g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 37161 1) .e) (.add (.mul (.rational
    361906 1) .f) (.add (.mul (.rational 454272 1) .g) (.mul (.rational 69370 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 2210191 1) .f) (.add (.mul (.rational 3786629 1) .g) (.mul
    (.rational 630281 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2316507 1) .g) (.mul
    (.rational 805690 1) .v)) .g) (.mul (.rational 32325 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 9490990 1) .f) (.add (.mul (.rational 20593131 1) .g) (.mul
    (.rational 3586901 1) .v))) .f) (.add (.mul (.add (.mul (.rational 17002464 1) .g) (.mul
    (.rational 6282377 1) .v)) .g) (.mul (.rational 273316 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6649319 1) .g) (.mul (.rational 3903661 1) .v)) .g) (.mul (.rational
    357682 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    30456090 1) .f) (.add (.mul (.rational 79946674 1) .g) (.mul (.rational 14326688 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 83091494 1) .g) (.mul (.rational 31879103 1) .v)) .g) (.mul
    (.rational 1444579 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 43529111 1)
    .g) (.mul (.rational 26874063 1) .v)) .g) (.mul (.rational 2599982 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 12044104 1) .g) (.mul (.rational 10668839 1) .v)) .g)
    (.mul (.rational 1649423 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 75760289 1) .f) (.add (.mul (.rational 233279753 1)
    .g) (.mul (.rational 42650968 1) .v))) .f) (.add (.mul (.add (.mul (.rational 292218968 1) .g)
    (.mul (.rational 115131411 1) .v)) .g) (.mul (.rational 5344666 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 191810300 1) .g) (.mul (.rational 122677332 1) .v)) .g)
    (.mul (.rational 12257006 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    70692817 1) .g) (.mul (.rational 65624846 1) .v)) .g) (.mul (.rational 10602617 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 14479167 1) .g) (.mul
    (.rational 18454202 1) .v)) .g) (.mul (.rational 4290622 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 149548766
    1) .f) (.add (.mul (.rational 528293887 1) .g) (.mul (.rational 98094630 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 774248072 1) .g) (.mul (.rational 311374699 1) .v)) .g) (.mul
    (.rational 14689702 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 610539301
    1) .g) (.mul (.rational 401248211 1) .v)) .g) (.mul (.rational 40972060 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 280826686 1) .g) (.mul (.rational 270196292 1)
    .v)) .g) (.mul (.rational 44974936 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 76253447 1) .g) (.mul (.rational 101825408 1) .v)) .g) (.mul (.rational
    24673478 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11739432
    1) .g) (.mul (.rational 21255003 1) .v)) .g) (.mul (.rational 7070720 1) (.pow .v 2))) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 237828198 1) .f) (.add (.mul (.rational 947841780 1) .g) (.mul (.rational
    178266176 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1590576226 1) .g) (.mul (.rational
    650626264 1) .v)) .g) (.mul (.rational 31062197 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1463910763 1) .g) (.mul (.rational 983834408 1) .v)) .g) (.mul (.rational
    102112990 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 806521012 1) .g)
    (.mul (.rational 798992879 1) .v)) .g) (.mul (.rational 136009356 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 272317924 1) .g) (.mul (.rational 377639106
    1) .v)) .g) (.mul (.rational 94379256 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 55337604 1) .g) (.mul (.rational 105121668 1) .v)) .g) (.mul (.rational
    36494200 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6346837
    1) .g) (.mul (.rational 16564260 1) .v)) .g) (.mul (.rational 7773222 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 307559320 1) .f) (.add (.mul (.rational 1364900481 1) .g) (.mul
    (.rational 259597797 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2580136732 1) .g) (.mul
    (.rational 1071103451 1) .v)) .g) (.mul (.rational 51630900 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2713928871 1) .g) (.mul (.rational 1859427216 1) .v)) .g) (.mul
    (.rational 195572932 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1741026332 1) .g) (.mul (.rational 1768395193 1) .v)) .g) (.mul (.rational 306571306 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 702058212 1) .g) (.mul
    (.rational 1005288644 1) .v)) .g) (.mul (.rational 257601446 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 176763426 1) .g) (.mul (.rational 349688849 1)
    .v)) .g) (.mul (.rational 125615806 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 26643229 1) .g) (.mul (.rational 73123212 1) .v)) .g) (.mul (.rational
    35941370 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2189079
    1) .g) (.mul (.rational 8633141 1) .v)) .g) (.mul (.rational 5797072 1) (.pow .v 2))) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 324989467 1) .f) (.add (.mul (.rational 1589232898 1) .g)
    (.mul (.rational 305367447 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3341185818 1) .g)
    (.mul (.rational 1405637986 1) .v)) .g) (.mul (.rational 68327417 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3952918842 1) .g) (.mul (.rational 2755340661 1) .v)) .g)
    (.mul (.rational 293175204 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2892601998 1) .g) (.mul (.rational 3003672208 1) .v)) .g) (.mul (.rational 529001866 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1354924103 1) .g) (.mul
    (.rational 1995409141 1) .v)) .g) (.mul (.rational 522374294 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 406185674 1) .g) (.mul (.rational 832470943 1)
    .v)) .g) (.mul (.rational 307803249 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 75569524 1) .g) (.mul (.rational 216695403 1) .v)) .g) (.mul (.rational
    110714848 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8121491
    1) .g) (.mul (.rational 33776258 1) .v)) .g) (.mul (.rational 23873217 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 434149 1) .g) (.mul (.rational 2877164 1)
    .v)) .g) (.mul (.rational 2900098 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 280857320 1) .f) (.add (.mul (.rational 1500451178 1) .g) (.mul (.rational
    291083331 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3472541366 1) .g) (.mul (.rational
    1479028117 1) .v)) .g) (.mul (.rational 72454807 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4563415845 1) .g) (.mul (.rational 3231389054 1) .v)) .g) (.mul (.rational
    347482262 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3749996394 1) .g)
    (.mul (.rational 3972616262 1) .v)) .g) (.mul (.rational 709688414 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1999590565 1) .g) (.mul (.rational
    3019966129 1) .v)) .g) (.mul (.rational 805803764 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 694521842 1) .g) (.mul (.rational 1468976578 1) .v)) .g)
    (.mul (.rational 557108049 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 153342508 1) .g) (.mul (.rational 457178201 1) .v)) .g) (.mul (.rational 241566170
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 20255595 1) .g)
    (.mul (.rational 88328072 1) .v)) .g) (.mul (.rational 65245796 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1408712 1) .g) (.mul (.rational 9875991 1) .v))
    .g) (.mul (.rational 10537422 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 37461 1) .g) (.mul (.rational 552047 1) .v)) .g) (.mul (.rational 930427 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 197948644 1) .f)
    (.add (.mul (.rational 1147100393 1) .g) (.mul (.rational 224581415 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 2897912976 1) .g) (.mul (.rational 1248708841 1) .v)) .g) (.mul
    (.rational 61630254 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4187792717
    1) .g) (.mul (.rational 3009190435 1) .v)) .g) (.mul (.rational 326837760 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3817425012 1) .g) (.mul (.rational
    4119115509 1) .v)) .g) (.mul (.rational 745668262 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2281942487 1) .g) (.mul (.rational 3526471341 1) .v)) .g)
    (.mul (.rational 957507786 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 900262860 1) .g) (.mul (.rational 1959216451 1) .v)) .g) (.mul (.rational 760228235
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 229630056 1) .g)
    (.mul (.rational 709096825 1) .v)) .g) (.mul (.rational 386049262 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 35861716 1) .g) (.mul (.rational 163212932
    1) .v)) .g) (.mul (.rational 125337830 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3050401 1) .g) (.mul (.rational 22507817 1) .v)) .g) (.mul (.rational
    25244666 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 104846 1)
    .g) (.mul (.rational 1640163 1) .v)) .g) (.mul (.rational 2943558 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 46063 1) .v) .g) (.mul (.rational 172200 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    113004238 1) .f) (.add (.mul (.rational 706048788 1) .g) (.mul (.rational 139459874 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1933454226 1) .g) (.mul (.rational 842390933 1) .v))
    .g) (.mul (.rational 41882899 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3047282789 1) .g) (.mul (.rational 2220027991 1) .v)) .g) (.mul (.rational 243456694 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3051178024 1) .g) (.mul (.rational
    3349062185 1) .v)) .g) (.mul (.rational 613909111 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2020290898 1) .g) (.mul (.rational 3188829382 1) .v)) .g)
    (.mul (.rational 879993042 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 891818086 1) .g) (.mul (.rational 1992076424 1) .v)) .g) (.mul (.rational 789353355
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 257731664 1) .g)
    (.mul (.rational 821713629 1) .v)) .g) (.mul (.rational 459616866 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 46345744 1) .g) (.mul (.rational 219287398
    1) .v)) .g) (.mul (.rational 174352783 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4640067 1) .g) (.mul (.rational 35874823 1) .v)) .g) (.mul (.rational
    42062444 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 193888 1)
    .g) (.mul (.rational 3205116 1) .v)) .g) (.mul (.rational 6083021 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 116357 1) .v) .g) (.mul (.rational 465980 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 13857 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 51647535 1) .f) (.add
    (.mul (.rational 346133029 1) .g) (.mul (.rational 68957606 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1021389092 1) .g) (.mul (.rational 449739191 1) .v)) .g) (.mul (.rational
    22524172 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1743708800 1) .g)
    (.mul (.rational 1286952534 1) .v)) .g) (.mul (.rational 142457318 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1902407521 1) .g) (.mul (.rational 2121708654 1) .v))
    .g) (.mul (.rational 393594753 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1381942244 1) .g) (.mul (.rational 2224321511 1) .v)) .g) (.mul (.rational
    623229786 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    674628610 1) .g) (.mul (.rational 1543417422 1) .v)) .g) (.mul (.rational 623523892 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 217681358 1) .g) (.mul
    (.rational 714579589 1) .v)) .g) (.mul (.rational 409656252 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 44222232 1) .g) (.mul (.rational 216790090 1) .v))
    .g) (.mul (.rational 177848115 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5077961 1) .g) (.mul (.rational 40973679 1) .v)) .g) (.mul (.rational
    49985388 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 248402 1)
    .g) (.mul (.rational 4320435 1) .v)) .g) (.mul (.rational 8619744 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 190873 1) .v) .g) (.mul (.rational 813256 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 31324 1) (.pow .v 2)) (.pow .g 10))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 18561194 1) .f) (.add
    (.mul (.rational 132839639 1) .g) (.mul (.rational 26684800 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 420281744 1) .g) (.mul (.rational 186931533 1) .v)) .g) (.mul (.rational
    9429712 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 772727291 1) .g) (.mul
    (.rational 577333803 1) .v)) .g) (.mul (.rational 64488032 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 912506794 1) .g) (.mul (.rational 1032932704 1) .v)) .g)
    (.mul (.rational 193804828 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 721551814 1) .g) (.mul (.rational 1182544403 1) .v)) .g) (.mul (.rational 336084622
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 385928144 1) .g)
    (.mul (.rational 902515873 1) .v)) .g) (.mul (.rational 371176507 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 137466399 1) .g) (.mul (.rational 463445118
    1) .v)) .g) (.mul (.rational 271714446 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 31104116 1) .g) (.mul (.rational 157485358 1) .v)) .g) (.mul (.rational
    132895052 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4021409
    1) .g) (.mul (.rational 33737539 1) .v)) .g) (.mul (.rational 42645238 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 224560 1) .g) (.mul (.rational 4092228 1)
    .v)) .g) (.mul (.rational 8536247 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 212033 1) .v) .g) (.mul (.rational 954902 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 44894 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5104742 1) .f) (.add (.mul (.rational
    38865106 1) .g) (.mul (.rational 7869138 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    131270738 1) .g) (.mul (.rational 58942606 1) .v)) .g) (.mul (.rational 2994241 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 258666745 1) .g) (.mul (.rational 195475322
    1) .v)) .g) (.mul (.rational 22024006 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 328786552 1) .g) (.mul (.rational 377318541 1) .v)) .g) (.mul (.rational 71553572
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 281190373 1) .g)
    (.mul (.rational 468525627 1) .v)) .g) (.mul (.rational 134923492 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 163545536 1) .g) (.mul (.rational 390176353
    1) .v)) .g) (.mul (.rational 163108337 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 63734843 1) .g) (.mul (.rational 220123131 1) .v)) .g) (.mul (.rational
    131700448 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 15888170
    1) .g) (.mul (.rational 82828287 1) .v)) .g) (.mul (.rational 71683511 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2281557 1) .g) (.mul (.rational 19828151
    1) .v)) .g) (.mul (.rational 25866532 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 142886 1) .g) (.mul (.rational 2716677 1) .v)) .g) (.mul (.rational
    5894642 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 161095 1) .v)
    .g) (.mul (.rational 762002 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 42177 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1030359 1) .f) (.add (.mul (.rational 8317653 1) .g) (.mul (.rational
    1696505 1) .v))) .f) (.add (.mul (.add (.mul (.rational 29881615 1) .g) (.mul (.rational
    13534801 1) .v)) .g) (.mul (.rational 692102 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 62845261 1) .g) (.mul (.rational 47987978 1) .v)) .g) (.mul (.rational
    5450200 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 85583476 1) .g)
    (.mul (.rational 99441367 1) .v)) .g) (.mul (.rational 19042376 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 78747005 1) .g) (.mul (.rational 133172233 1)
    .v)) .g) (.mul (.rational 38809058 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 49502858 1) .g) (.mul (.rational 120225793 1) .v)) .g) (.mul (.rational
    50996665 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 20957435
    1) .g) (.mul (.rational 73953731 1) .v)) .g) (.mul (.rational 45047332 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5707681 1) .g) (.mul (.rational 30537893
    1) .v)) .g) (.mul (.rational 27021175 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 901126 1) .g) (.mul (.rational 8081162 1) .v)) .g) (.mul (.rational
    10836146 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 62491 1)
    .g) (.mul (.rational 1234098 1) .v)) .g) (.mul (.rational 2771033 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 82343 1) .v) .g) (.mul (.rational 406480 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 25865 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 142531 1) .f)
    (.add (.mul (.rational 1216512 1) .g) (.mul (.rational 249729 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 4634032 1) .g) (.mul (.rational 2114984 1) .v)) .g) (.mul (.rational 108777
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 10366290 1) .g) (.mul
    (.rational 7987083 1) .v)) .g) (.mul (.rational 913456 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 15066632 1) .g) (.mul (.rational 17694212 1) .v)) .g) (.mul
    (.rational 3416852 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    14850794 1) .g) (.mul (.rational 25436726 1) .v)) .g) (.mul (.rational 7488386 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10041402 1) .g) (.mul
    (.rational 24762276 1) .v)) .g) (.mul (.rational 10633980 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4592662 1) .g) (.mul (.rational 16506994 1) .v)) .g)
    (.mul (.rational 10207834 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1357765 1) .g) (.mul (.rational 7427788 1) .v)) .g) (.mul (.rational 6695626 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 233902 1) .g) (.mul
    (.rational 2155017 1) .v)) .g) (.mul (.rational 2956902 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 17798 1) .g) (.mul (.rational 363236 1) .v)) .g)
    (.mul (.rational 839291 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    26947 1) .v) .g) (.mul (.rational 137870 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 9922 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 11905 1) .f) (.add (.mul (.rational 107179 1) .g)
    (.mul (.rational 22110 1) .v))) .f) (.add (.mul (.add (.mul (.rational 431799 1) .g) (.mul
    (.rational 198217 1) .v)) .g) (.mul (.rational 10238 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1024548 1) .g) (.mul (.rational 794829 1) .v)) .g) (.mul (.rational
    91368 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1584450 1) .g) (.mul
    (.rational 1876020 1) .v)) .g) (.mul (.rational 364515 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1667442 1) .g) (.mul (.rational 2884056 1) .v)) .g)
    (.mul (.rational 855432 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1208214 1) .g) (.mul (.rational 3014718 1) .v)) .g) (.mul (.rational 1306536 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 594564 1) .g) (.mul
    (.rational 2167662 1) .v)) .g) (.mul (.rational 1355592 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 189933 1) .g) (.mul (.rational 1057284 1) .v)) .g)
    (.mul (.rational 966378 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35515 1) .g) (.mul (.rational 334290 1) .v)) .g) (.mul (.rational 466680 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2947 1) .g) (.mul
    (.rational 61761 1) .v)) .g) (.mul (.rational 145842 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 5053 1) .v) .g) (.mul (.rational 26576 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 2139 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 6))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 442 1) .f) (.add (.mul
    (.rational 4190 1) .g) (.mul (.rational 866 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    17820 1) .g) (.mul (.rational 8200 1) .v)) .g) (.mul (.rational 424 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 44760 1) .g) (.mul (.rational 34830 1) .v)) .g) (.mul
    (.rational 4010 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 73500 1)
    .g) (.mul (.rational 87360 1) .v)) .g) (.mul (.rational 17010 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 82404 1) .g) (.mul (.rational 143220 1) .v)) .g)
    (.mul (.rational 42600 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 63840 1) .g) (.mul (.rational 160272 1) .v)) .g) (.mul (.rational 69720 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 33720 1) .g) (.mul (.rational
    123900 1) .v)) .g) (.mul (.rational 77868 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11610 1) .g) (.mul (.rational 65280 1) .v)) .g) (.mul (.rational 60060
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2350 1) .g) (.mul
    (.rational 22410 1) .v)) .g) (.mul (.rational 31560 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 212 1) .g) (.mul (.rational 4520 1) .v)) .g) (.mul
    (.rational 10800 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 406 1)
    .v) .g) (.mul (.rational 2170 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 194 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 7)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0412

namespace FullHigh0413
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsHigh2.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    12*SmallGap.PolarCoefficientsHigh1.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    12*SmallGap.PolarCoefficientsHigh2.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    32*SmallGap.PolarCoefficientsHigh0.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    48*SmallGap.PolarCoefficientsHigh1.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsHigh2.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    160*SmallGap.PolarCoefficientsHigh0.c050 e f g v*e*((e+f)*(e+f+g))^5+
    120*SmallGap.PolarCoefficientsHigh1.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsHigh2.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh2.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    3*SmallGap.PolarCoefficientsHigh1.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsHigh2.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    8*SmallGap.PolarCoefficientsHigh0.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh1.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh2.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    24*SmallGap.PolarCoefficientsHigh0.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    9*SmallGap.PolarCoefficientsHigh1.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsHigh2.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    48*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    12*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e^4*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh0.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsHigh0.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh0.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(140*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^4+84*SmallGap.ReducedLayers.high0_010_1 e g v*e^5+28*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^6+4*SmallGap.ReducedLayers.high0_010_3 e g v*e^7+56*SmallGap.ReducedLayers.high0_001_0 e
    g v*e^5+28*SmallGap.ReducedLayers.high0_001_1 e g v*e^6+8*SmallGap.ReducedLayers.high0_001_2 e
    g v*e^7+1*SmallGap.ReducedLayers.high0_001_3 e g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(30*SmallGap.ReducedLayers.high1_020_0 e g v*e^2+30*SmallGap.ReducedLayers.high1_020_1 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_020_2 e g v*e^4+3*SmallGap.ReducedLayers.high1_020_3 e
    g v*e^5+20*SmallGap.ReducedLayers.high1_011_0 e g v*e^3+15*SmallGap.ReducedLayers.high1_011_1
    e g v*e^4+6*SmallGap.ReducedLayers.high1_011_2 e g v*e^5+1*SmallGap.ReducedLayers.high1_011_3
    e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 113214 1) .e) (.add (.mul (.rational 1074329 1) .f)
    (.add (.mul (.rational 1342065 1) .g) (.mul (.rational 209414 1) .v)))) .e) (.add (.mul (.add
    (.mul (.rational 6384996 1) .f) (.add (.mul (.rational 10882728 1) .g) (.mul (.rational
    1838861 1) .v))) .f) (.add (.mul (.add (.mul (.rational 6627764 1) .g) (.mul (.rational
    2322136 1) .v)) .g) (.mul (.rational 96900 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.rational 26633238 1) .f) (.add (.mul (.rational 57477681 1) .g) (.mul (.rational
    10110153 1) .v))) .f) (.add (.mul (.add (.mul (.rational 47227768 1) .g) (.mul (.rational
    17485494 1) .v)) .g) (.mul (.rational 786467 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 18406233 1) .g) (.mul (.rational 10701807 1) .v)) .g) (.mul (.rational
    1012034 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    82815079 1) .f) (.add (.mul (.rational 216192659 1) .g) (.mul (.rational 38970256 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 223575431 1) .g) (.mul (.rational 85638026 1) .v)) .g)
    (.mul (.rational 3989812 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    116674623 1) .g) (.mul (.rational 71151610 1) .v)) .g) (.mul (.rational 7055933 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 32227426 1) .g) (.mul (.rational
    27782948 1) .v)) .g) (.mul (.rational 4374382 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 199015964 1) .f) (.add (.mul
    (.rational 609377026 1) .g) (.mul (.rational 111759518 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 759428671 1) .g) (.mul (.rational 298055656 1) .v)) .g) (.mul (.rational 14157823
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 496434855 1) .g) (.mul
    (.rational 313264248 1) .v)) .g) (.mul (.rational 31909977 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 182546565 1) .g) (.mul (.rational 165036228 1) .v)) .g)
    (.mul (.rational 27005666 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 37414893 1) .g) (.mul (.rational 45657068 1) .v)) .g) (.mul (.rational 10628233 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 378141629 1) .f) (.add (.mul (.rational 1328246277 1) .g) (.mul
    (.rational 246983825 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1936454997 1) .g) (.mul
    (.rational 774984732 1) .v)) .g) (.mul (.rational 37266640 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1520411353 1) .g) (.mul (.rational 985948356 1) .v)) .g) (.mul
    (.rational 102229866 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    697437480 1) .g) (.mul (.rational 654700660 1) .v)) .g) (.mul (.rational 109961856 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 189355182 1) .g) (.mul
    (.rational 243124999 1) .v)) .g) (.mul (.rational 58837593 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 29263302 1) .g) (.mul (.rational 50028886 1) .v)) .g)
    (.mul (.rational 16352766 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 576313677 1) .f) (.add (.mul
    (.rational 2283706065 1) .g) (.mul (.rational 429834871 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 3811931377 1) .g) (.mul (.rational 1551765202 1) .v)) .g) (.mul (.rational 75299493
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3492584824 1) .g) (.mul
    (.rational 2318714942 1) .v)) .g) (.mul (.rational 243714000 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1918267882 1) .g) (.mul (.rational 1859215756 1) .v)) .g)
    (.mul (.rational 318661511 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 647185184 1) .g) (.mul (.rational 867241561 1) .v)) .g) (.mul (.rational 216294467
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 131869992 1) .g)
    (.mul (.rational 238374602 1) .v)) .g) (.mul (.rational 81472989 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 15241647 1) .g) (.mul (.rational 37177312 1)
    .v)) .g) (.mul (.rational 16836075 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 710498734
    1) .f) (.add (.mul (.rational 3134939358 1) .g) (.mul (.rational 596843592 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 5894191478 1) .g) (.mul (.rational 2437519126 1) .v)) .g) (.mul
    (.rational 119211792 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6170927820
    1) .g) (.mul (.rational 4185279961 1) .v)) .g) (.mul (.rational 445148283 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3945270163 1) .g) (.mul (.rational
    3934565290 1) .v)) .g) (.mul (.rational 686306394 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1588713805 1) .g) (.mul (.rational 2210538116 1) .v)) .g)
    (.mul (.rational 565676758 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 400691407 1) .g) (.mul (.rational 760423826 1) .v)) .g) (.mul (.rational 269799306
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 60772311 1) .g)
    (.mul (.rational 157595753 1) .v)) .g) (.mul (.rational 75306062 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5055880 1) .g) (.mul (.rational 18529760 1)
    .v)) .g) (.mul (.rational 11837134 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    711165873 1) .f) (.add (.mul (.rational 3457598968 1) .g) (.mul (.rational 665731400 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 7229565736 1) .g) (.mul (.rational 3035368210 1) .v))
    .g) (.mul (.rational 149591695 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8512019008 1) .g) (.mul (.rational 5890188929 1) .v)) .g) (.mul (.rational 633616539 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6205680033 1) .g) (.mul (.rational
    6354110968 1) .v)) .g) (.mul (.rational 1126653884 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2901203364 1) .g) (.mul (.rational 4177146904 1) .v)) .g)
    (.mul (.rational 1094257416 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 870439677 1) .g) (.mul (.rational 1725742394 1) .v)) .g) (.mul (.rational 632965758
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 162726747 1) .g)
    (.mul (.rational 445757165 1) .v)) .g) (.mul (.rational 223169596 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 17673308 1) .g) (.mul (.rational 69238328 1)
    .v)) .g) (.mul (.rational 47169030 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 962154 1) .g) (.mul (.rational 5922826 1) .v)) .g) (.mul (.rational 5637231
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 577620146 1) .f)
    (.add (.mul (.rational 3068044920 1) .g) (.mul (.rational 597472523 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 7061324068 1) .g) (.mul (.rational 3009153026 1) .v)) .g) (.mul
    (.rational 149492828 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9233498794
    1) .g) (.mul (.rational 6513941959 1) .v)) .g) (.mul (.rational 708757348 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7557235807 1) .g) (.mul (.rational
    7932638570 1) .v)) .g) (.mul (.rational 1429211088 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4019812605 1) .g) (.mul (.rational 5974253052 1) .v)) .g)
    (.mul (.rational 1600137338 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1396127227 1) .g) (.mul (.rational 2881182854 1) .v)) .g) (.mul (.rational
    1089583528 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    309329557 1) .g) (.mul (.rational 890708465 1) .v)) .g) (.mul (.rational 465020266 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 41213754 1) .g) (.mul
    (.rational 171581946 1) .v)) .g) (.mul (.rational 123712180 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2911652 1) .g) (.mul (.rational 19256632 1) .v)) .g)
    (.mul (.rational 19752965 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 79406 1) .g) (.mul (.rational 1092334 1) .v)) .g) (.mul (.rational 1741070 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 378858636 1) .f)
    (.add (.mul (.rational 2182793799 1) .g) (.mul (.rational 430020311 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 5483683730 1) .g) (.mul (.rational 2371615922 1) .v)) .g) (.mul
    (.rational 118839205 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7883960761
    1) .g) (.mul (.rational 5667211091 1) .v)) .g) (.mul (.rational 623930098 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7155748859 1) .g) (.mul (.rational
    7691435748 1) .v)) .g) (.mul (.rational 1408012793 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4264747602 1) .g) (.mul (.rational 6530056488 1) .v)) .g)
    (.mul (.rational 1786917270 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1680975459 1) .g) (.mul (.rational 3600542388 1) .v)) .g) (.mul (.rational
    1401356156 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    429705615 1) .g) (.mul (.rational 1295538483 1) .v)) .g) (.mul (.rational 702869346 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 67558708 1) .g) (.mul
    (.rational 297431876 1) .v)) .g) (.mul (.rational 225661388 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5822149 1) .g) (.mul (.rational 41148648 1) .v)) .g)
    (.mul (.rational 45110499 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 204534 1) .g) (.mul (.rational 3036724 1) .v)) .g) (.mul (.rational 5264262 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 87637 1) .v) .g) (.mul
    (.rational 313323 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 198727851 1) .f) (.add (.mul (.rational 1234507791 1) .g) (.mul
    (.rational 246084576 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3361612843 1) .g) (.mul
    (.rational 1475394854 1) .v)) .g) (.mul (.rational 74617684 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5270265343 1) .g) (.mul (.rational 3858470388 1) .v)) .g) (.mul
    (.rational 430004723 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    5252653635 1) .g) (.mul (.rational 5775886652 1) .v)) .g) (.mul (.rational 1074367890 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3465743927 1) .g) (.mul
    (.rational 5458456744 1) .v)) .g) (.mul (.rational 1525198117 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1527170641 1) .g) (.mul (.rational 3386929754 1)
    .v)) .g) (.mul (.rational 1354671100 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 441729227 1) .g) (.mul (.rational 1389797655 1) .v)) .g) (.mul
    (.rational 781325264 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 79811438 1) .g) (.mul (.rational 370006438 1) .v)) .g) (.mul (.rational 294012012
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8073668 1) .g)
    (.mul (.rational 60683572 1) .v)) .g) (.mul (.rational 70605333 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 343548 1) .g) (.mul (.rational 5478758 1) .v))
    .g) (.mul (.rational 10236930 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 203521 1) .v) .g) (.mul (.rational 796823 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 24644 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 82049794 1) .f) (.add (.mul (.rational 546738278 1) .g)
    (.mul (.rational 110294398 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1604216111 1) .g)
    (.mul (.rational 714447780 1) .v)) .g) (.mul (.rational 36489017 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2723851199 1) .g) (.mul (.rational 2030177290 1) .v)) .g)
    (.mul (.rational 229097971 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2957095440 1) .g) (.mul (.rational 3323595696 1) .v)) .g) (.mul (.rational 628142506 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2139350519 1) .g) (.mul
    (.rational 3460759752 1) .v)) .g) (.mul (.rational 986825845 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1041597683 1) .g) (.mul (.rational 2386661706 1)
    .v)) .g) (.mul (.rational 979626757 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 335928347 1) .g) (.mul (.rational 1099678111 1) .v)) .g) (.mul (.rational
    638995232 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 68433882
    1) .g) (.mul (.rational 332811196 1) .v)) .g) (.mul (.rational 275838632 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7917433 1) .g) (.mul (.rational
    63003368 1) .v)) .g) (.mul (.rational 77329411 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 392866 1) .g) (.mul (.rational 6697982 1) .v)) .g) (.mul
    (.rational 13381174 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    301441 1) .v) .g) (.mul (.rational 1280589 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 50962 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 26014169 1) .f) (.add (.mul (.rational 185122309 1) .g)
    (.mul (.rational 37795019 1) .v))) .f) (.add (.mul (.add (.mul (.rational 582356605 1) .g)
    (.mul (.rational 263121624 1) .v)) .g) (.mul (.rational 13575768 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1064736205 1) .g) (.mul (.rational 807487014 1) .v)) .g)
    (.mul (.rational 92279066 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1250715157 1) .g) (.mul (.rational 1435496100 1) .v)) .g) (.mul (.rational 275590272 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 984390945 1) .g) (.mul
    (.rational 1633231893 1) .v)) .g) (.mul (.rational 474901901 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 524623687 1) .g) (.mul (.rational 1239405036 1)
    .v)) .g) (.mul (.rational 521297562 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 186517467 1) .g) (.mul (.rational 633502035 1) .v)) .g) (.mul (.rational
    379539959 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 42233258
    1) .g) (.mul (.rational 214690788 1) .v)) .g) (.mul (.rational 184890944 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5485394 1) .g) (.mul (.rational
    46016436 1) .v)) .g) (.mul (.rational 59254739 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 309444 1) .g) (.mul (.rational 5613812 1) .v)) .g) (.mul
    (.rational 11903834 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    294963 1) .v) .g) (.mul (.rational 1347759 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 65044 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 6093896 1) .f) (.add (.mul (.rational 46135188
    1) .g) (.mul (.rational 9531305 1) .v))) .f) (.add (.mul (.add (.mul (.rational 154932357 1)
    .g) (.mul (.rational 70991830 1) .v)) .g) (.mul (.rational 3700595 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 303535494 1) .g) (.mul (.rational 234073776 1) .v)) .g)
    (.mul (.rational 27084876 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    383650997 1) .g) (.mul (.rational 449180992 1) .v)) .g) (.mul (.rational 87551917 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 326388352 1) .g) (.mul
    (.rational 554549809 1) .v)) .g) (.mul (.rational 164263595 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 188969633 1) .g) (.mul (.rational 459323054 1) .v))
    .g) (.mul (.rational 197634143 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 73396382 1) .g) (.mul (.rational 257935065 1) .v)) .g) (.mul (.rational
    158919927 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 18270739
    1) .g) (.mul (.rational 96745516 1) .v)) .g) (.mul (.rational 86248551 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2627752 1) .g) (.mul (.rational 23141822
    1) .v)) .g) (.mul (.rational 31101137 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 165546 1) .g) (.mul (.rational 3180784 1) .v)) .g) (.mul (.rational
    7109810 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 190399 1) .v)
    .g) (.mul (.rational 927873 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 52392 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 989586 1) .f) (.add (.mul (.rational 7944162 1) .g) (.mul (.rational
    1660150 1) .v))) .f) (.add (.mul (.add (.mul (.rational 28375324 1) .g) (.mul (.rational
    13177572 1) .v)) .g) (.mul (.rational 693800 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 59323958 1) .g) (.mul (.rational 46475273 1) .v)) .g) (.mul (.rational
    5442037 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 80304644 1) .g)
    (.mul (.rational 95786598 1) .v)) .g) (.mul (.rational 18937862 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 73454150 1) .g) (.mul (.rational 127582014 1)
    .v)) .g) (.mul (.rational 38443692 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 45918292 1) .g) (.mul (.rational 114572542 1) .v)) .g) (.mul (.rational
    50328278 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19344874
    1) .g) (.mul (.rational 70136892 1) .v)) .g) (.mul (.rational 44313346 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5249218 1) .g) (.mul (.rational 28848738
    1) .v)) .g) (.mul (.rational 26520102 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 827384 1) .g) (.mul (.rational 7616828 1) .v)) .g) (.mul (.rational
    10628452 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 57464 1)
    .g) (.mul (.rational 1163734 1) .v)) .g) (.mul (.rational 2723762 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 78027 1) .v) .g) (.mul (.rational 402233 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 25956 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 98920 1) .f)
    (.add (.mul (.rational 839679 1) .g) (.mul (.rational 177366 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 3180080 1) .g) (.mul (.rational 1495298 1) .v)) .g) (.mul (.rational 79456 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7070486 1) .g) (.mul (.rational
    5619799 1) .v)) .g) (.mul (.rational 665206 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10210998 1) .g) (.mul (.rational 12387364 1) .v)) .g) (.mul (.rational
    2480552 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9998548 1)
    .g) (.mul (.rational 17715348 1) .v)) .g) (.mul (.rational 5419610 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6715534 1) .g) (.mul (.rational 17154872 1)
    .v)) .g) (.mul (.rational 7673358 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3051450 1) .g) (.mul (.rational 11376638 1) .v)) .g) (.mul (.rational 7346206
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 896666 1) .g)
    (.mul (.rational 5094684 1) .v)) .g) (.mul (.rational 4808566 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 153693 1) .g) (.mul (.rational 1472254 1) .v))
    .g) (.mul (.rational 2121342 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11658 1) .g) (.mul (.rational 247558 1) .v)) .g) (.mul (.rational 602570 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 18371 1) .v) .g) (.mul (.rational
    99348 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 7210 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    4548 1) .f) (.add (.mul (.rational 40726 1) .g) (.mul (.rational 8684 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 163126 1) .g) (.mul (.rational 77538 1) .v)) .g) (.mul (.rational 4152
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 384632 1) .g) (.mul (.rational
    309566 1) .v)) .g) (.mul (.rational 36972 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 590800 1) .g) (.mul (.rational 727240 1) .v)) .g) (.mul (.rational 147160 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 617204 1) .g) (.mul
    (.rational 1112384 1) .v)) .g) (.mul (.rational 344528 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 443716 1) .g) (.mul (.rational 1156540 1) .v)) .g)
    (.mul (.rational 524944 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 216536 1) .g) (.mul (.rational 826868 1) .v)) .g) (.mul (.rational 543368 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 68572 1) .g) (.mul
    (.rational 400936 1) .v)) .g) (.mul (.rational 386512 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12710 1) .g) (.mul (.rational 126020 1) .v)) .g) (.mul
    (.rational 186320 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1046 1) .g) (.mul (.rational 23154 1) .v)) .g) (.mul (.rational 58168 1) (.pow .v 2))) (.pow
    .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1886 1) .v) .g) (.mul (.rational 10604 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 856 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0413

namespace FullHigh0414
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  12*SmallGap.PolarCoefficientsHigh2.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    32*SmallGap.PolarCoefficientsHigh1.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    48*SmallGap.PolarCoefficientsHigh2.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsHigh0.c050 e f g v*((e+f)*(e+f+g))^5+
    160*SmallGap.PolarCoefficientsHigh1.c050 e f g v*e*((e+f)*(e+f+g))^5+
    120*SmallGap.PolarCoefficientsHigh2.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    3*SmallGap.PolarCoefficientsHigh2.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    8*SmallGap.PolarCoefficientsHigh1.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh2.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    20*SmallGap.PolarCoefficientsHigh0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsHigh1.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    9*SmallGap.PolarCoefficientsHigh2.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    80*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e*((e+f)*(e+f+g))^4+
    48*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    12*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh1.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    5*SmallGap.PolarCoefficientsHigh0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh1.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    10*SmallGap.PolarCoefficientsHigh0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsHigh1.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    15*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(140*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^3+140*SmallGap.ReducedLayers.high0_010_1 e g v*e^4+84*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^5+28*SmallGap.ReducedLayers.high0_010_3 e g v*e^6+4*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^7+70*SmallGap.ReducedLayers.high0_001_0 e g v*e^4+56*SmallGap.ReducedLayers.high0_001_1
    e g v*e^5+28*SmallGap.ReducedLayers.high0_001_2 e g v*e^6+8*SmallGap.ReducedLayers.high0_001_3
    e g v*e^7)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.high1_020_0 e g v*e^1+30*SmallGap.ReducedLayers.high1_020_1 e
    g v*e^2+30*SmallGap.ReducedLayers.high1_020_2 e g v*e^3+15*SmallGap.ReducedLayers.high1_020_3
    e g v*e^4+3*SmallGap.ReducedLayers.high1_020_4 e g v*e^5+15*SmallGap.ReducedLayers.high1_011_0
    e g v*e^2+20*SmallGap.ReducedLayers.high1_011_1 e g
    v*e^3+15*SmallGap.ReducedLayers.high1_011_2 e g v*e^4+6*SmallGap.ReducedLayers.high1_011_3 e g
    v*e^5+1*SmallGap.ReducedLayers.high1_011_4 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 230256 1) .e) (.add (.mul (.rational 2133256 1) .f) (.add (.mul
    (.rational 2652738 1) .g) (.mul (.rational 421672 1) .v)))) .e) (.add (.mul (.add (.mul
    (.rational 12350327 1) .f) (.add (.mul (.rational 20942230 1) .g) (.mul (.rational 3582447 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 12699419 1) .g) (.mul (.rational 4463538 1) .v))
    .g) (.mul (.rational 193800 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 50035379 1) .f) (.add (.mul (.rational 107384772 1) .g) (.mul (.rational 19029739
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 87804673 1) .g) (.mul (.rational 32446705 1)
    .v)) .g) (.mul (.rational 1511440 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34106092 1) .g) (.mul (.rational 19514237 1) .v)) .g) (.mul (.rational 1909270 1)
    (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 150570571
    1) .f) (.add (.mul (.rational 390770175 1) .g) (.mul (.rational 70714173 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 401974680 1) .g) (.mul (.rational 153183816 1) .v)) .g) (.mul
    (.rational 7357338 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 208927375 1)
    .g) (.mul (.rational 125112194 1) .v)) .g) (.mul (.rational 12756732 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 57608795 1) .g) (.mul (.rational 47876448 1) .v)) .g)
    (.mul (.rational 7699478 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 348695470 1) .f) (.add (.mul (.rational 1061155512 1)
    .g) (.mul (.rational 194933499 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1315012409 1)
    .g) (.mul (.rational 512614720 1) .v)) .g) (.mul (.rational 24999595 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 855708113 1) .g) (.mul (.rational 530023979 1) .v))
    .g) (.mul (.rational 55237216 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 313838253 1) .g) (.mul (.rational 274014555 1) .v)) .g) (.mul (.rational 45551443
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 64358523 1) .g)
    (.mul (.rational 74222574 1) .v)) .g) (.mul (.rational 17317038 1) (.pow .v 2))) (.pow .g
    3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    635277240 1) .f) (.add (.mul (.rational 2217315183 1) .g) (.mul (.rational 412548292 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 3213569065 1) .g) (.mul (.rational 1277067847 1) .v))
    .g) (.mul (.rational 62843523 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2510636281 1) .g) (.mul (.rational 1599832214 1) .v)) .g) (.mul (.rational 169106266 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1147906355 1) .g) (.mul (.rational
    1044035765 1) .v)) .g) (.mul (.rational 177532981 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 311490164 1) .g) (.mul (.rational 380390609 1) .v)) .g)
    (.mul (.rational 92077308 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 48307680 1) .g) (.mul (.rational 76751992 1) .v)) .g) (.mul (.rational 24575998 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 922885640 1) .f) (.add (.mul (.rational 3633230121 1) .g)
    (.mul (.rational 684327156 1) .v))) .f) (.add (.mul (.add (.mul (.rational 6027412300 1) .g)
    (.mul (.rational 2438907885 1) .v)) .g) (.mul (.rational 120842516 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5493235397 1) .g) (.mul (.rational 3592317713 1) .v)) .g)
    (.mul (.rational 384108432 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3005611951 1) .g) (.mul (.rational 2835140312 1) .v)) .g) (.mul (.rational 491237919 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1012611400 1) .g) (.mul
    (.rational 1300180489 1) .v)) .g) (.mul (.rational 324420464 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 206789257 1) .g) (.mul (.rational 351288286 1)
    .v)) .g) (.mul (.rational 118107471 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 24076346 1) .g) (.mul (.rational 53960022 1) .v)) .g) (.mul (.rational
    23407546 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1076874743 1) .f) (.add (.mul
    (.rational 4719922501 1) .g) (.mul (.rational 900315362 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 8818236546 1) .g) (.mul (.rational 3632686569 1) .v)) .g) (.mul (.rational
    181227757 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9180773976 1) .g)
    (.mul (.rational 6155260591 1) .v)) .g) (.mul (.rational 665617688 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5844522841 1) .g) (.mul (.rational 5704244089 1) .v))
    .g) (.mul (.rational 1006237486 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2348512162 1) .g) (.mul (.rational 3157005270 1) .v)) .g) (.mul (.rational
    810118747 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    592993411 1) .g) (.mul (.rational 1070029778 1) .v)) .g) (.mul (.rational 375720473 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 90462781 1) .g) (.mul
    (.rational 218946418 1) .v)) .g) (.mul (.rational 101507391 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7617511 1) .g) (.mul (.rational 25553492 1) .v)) .g)
    (.mul (.rational 15401682 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1011491862 1) .f) (.add (.mul (.rational 4884549098 1) .g) (.mul (.rational 944318692 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 10147210208 1) .g) (.mul (.rational 4257374297 1) .v))
    .g) (.mul (.rational 214081858 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11877676875 1) .g) (.mul (.rational 8161910218 1) .v)) .g) (.mul (.rational 893487722 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8619032290 1) .g) (.mul (.rational
    8692327978 1) .v)) .g) (.mul (.rational 1561908079 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4018336618 1) .g) (.mul (.rational 5639458045 1) .v)) .g)
    (.mul (.rational 1487497708 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1205814703 1) .g) (.mul (.rational 2300563085 1) .v)) .g) (.mul (.rational
    841388589 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    226430198 1) .g) (.mul (.rational 588014791 1) .v)) .g) (.mul (.rational 289436766 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 24848485 1) .g) (.mul
    (.rational 90832357 1) .v)) .g) (.mul (.rational 59682428 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1377485 1) .g) (.mul (.rational 7800650 1) .v)) .g)
    (.mul (.rational 6999902 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 762781387 1) .f) (.add (.mul (.rational 4023876208 1) .g) (.mul (.rational
    789191487 1) .v))) .f) (.add (.mul (.add (.mul (.rational 9200208267 1) .g) (.mul (.rational
    3933647321 1) .v)) .g) (.mul (.rational 199689284 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11957699526 1) .g) (.mul (.rational 8421842980 1) .v)) .g) (.mul
    (.rational 934649534 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    9737728730 1) .g) (.mul (.rational 10139117836 1) .v)) .g) (.mul (.rational 1857777148 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5162358689 1) .g)
    (.mul (.rational 7548641379 1) .v)) .g) (.mul (.rational 2046947604 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1791662048 1) .g) (.mul (.rational
    3601514666 1) .v)) .g) (.mul (.rational 1369803899 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 398227093 1) .g) (.mul (.rational 1103902996 1) .v)) .g)
    (.mul (.rational 574219230 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 53520783 1) .g) (.mul (.rational 211821193 1) .v)) .g) (.mul (.rational 150299745
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3842602 1) .g)
    (.mul (.rational 23882756 1) .v)) .g) (.mul (.rational 23771418 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 107523 1) .g) (.mul (.rational 1380034 1) .v))
    .g) (.mul (.rational 2110334 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 458240927 1) .f) (.add (.mul (.rational 2621990250 1) .g) (.mul
    (.rational 522173419 1) .v))) .f) (.add (.mul (.add (.mul (.rational 6542916403 1) .g) (.mul
    (.rational 2852527806 1) .v)) .g) (.mul (.rational 146431126 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9348151370 1) .g) (.mul (.rational 6748751705 1) .v)) .g) (.mul
    (.rational 760428069 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    8439193584 1) .g) (.mul (.rational 9066289142 1) .v)) .g) (.mul (.rational 1695768995 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5010102610 1) .g) (.mul
    (.rational 7620465451 1) .v)) .g) (.mul (.rational 2124954413 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1971664405 1) .g) (.mul (.rational 4163571961 1)
    .v)) .g) (.mul (.rational 1644770822 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 504984157 1) .g) (.mul (.rational 1487729670 1) .v)) .g) (.mul
    (.rational 814702063 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 79948509 1) .g) (.mul (.rational 340640614 1) .v)) .g) (.mul (.rational 259016496
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 6986669 1) .g)
    (.mul (.rational 47358962 1) .v)) .g) (.mul (.rational 51631467 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 251228 1) .g) (.mul (.rational 3556033 1) .v))
    .g) (.mul (.rational 6096887 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 106349 1) .v) .g) (.mul (.rational 377076 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 216227309 1) .f) (.add (.mul
    (.rational 1333923469 1) .g) (.mul (.rational 269966625 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 3607627706 1) .g) (.mul (.rational 1604549039 1) .v)) .g) (.mul (.rational 83417178
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5619570427 1) .g) (.mul
    (.rational 4158632131 1) .v)) .g) (.mul (.rational 476357468 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5568844850 1) .g) (.mul (.rational 6168922685 1) .v)) .g)
    (.mul (.rational 1178828197 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3658042792 1) .g) (.mul (.rational 5778929191 1) .v)) .g) (.mul (.rational
    1657138505 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1607996305 1) .g) (.mul (.rational 3557860838 1) .v)) .g) (.mul (.rational 1457877122 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 465410441 1) .g) (.mul
    (.rational 1451569194 1) .v)) .g) (.mul (.rational 833931706 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 84525072 1) .g) (.mul (.rational 385723398 1)
    .v)) .g) (.mul (.rational 312220143 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8649709 1) .g) (.mul (.rational 63564003 1) .v)) .g) (.mul (.rational
    75097588 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 375596 1)
    .g) (.mul (.rational 5828696 1) .v)) .g) (.mul (.rational 11044294 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 223512 1) .v) .g) (.mul (.rational 891207 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 29540 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 78327214 1) .f) (.add
    (.mul (.rational 518307704 1) .g) (.mul (.rational 106666723 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1510305083 1) .g) (.mul (.rational 685491169 1) .v)) .g) (.mul (.rational
    36134197 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2547371419 1) .g)
    (.mul (.rational 1932125559 1) .v)) .g) (.mul (.rational 225194473 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2748734284 1) .g) (.mul (.rational 3137497483 1) .v))
    .g) (.mul (.rational 612792145 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1978612312 1) .g) (.mul (.rational 3241732735 1) .v)) .g) (.mul (.rational
    955608181 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    960133616 1) .g) (.mul (.rational 2220430144 1) .v)) .g) (.mul (.rational 942283341 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 309441751 1) .g) (.mul
    (.rational 1018057973 1) .v)) .g) (.mul (.rational 611514622 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 63242606 1) .g) (.mul (.rational 307635515 1)
    .v)) .g) (.mul (.rational 263494750 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7382102 1) .g) (.mul (.rational 58480162 1) .v)) .g) (.mul (.rational
    74182493 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 372485 1)
    .g) (.mul (.rational 6300161 1) .v)) .g) (.mul (.rational 13028988 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 291320 1) .v) .g) (.mul (.rational 1288039 1)
    (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 54387 1) (.pow .v 2)) (.pow .g 10)))
    .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20999566 1) .f)
    (.add (.mul (.rational 148395523 1) .g) (.mul (.rational 31066094 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 463550793 1) .g) (.mul (.rational 214719826 1) .v)) .g) (.mul
    (.rational 11485065 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 841701105
    1) .g) (.mul (.rational 654111499 1) .v)) .g) (.mul (.rational 77607580 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 982332725 1) .g) (.mul (.rational 1154348505 1)
    .v)) .g) (.mul (.rational 230425421 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 768775117 1) .g) (.mul (.rational 1304227718 1) .v)) .g) (.mul (.rational
    394911578 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    407948238 1) .g) (.mul (.rational 983687934 1) .v)) .g) (.mul (.rational 431511900 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 144726003 1) .g) (.mul
    (.rational 500541631 1) .v)) .g) (.mul (.rational 313268983 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 32808235 1) .g) (.mul (.rational 169353709 1) .v))
    .g) (.mul (.rational 152636930 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4286740 1) .g) (.mul (.rational 36411050 1) .v)) .g) (.mul (.rational
    49185316 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 244931 1)
    .g) (.mul (.rational 4489098 1) .v)) .g) (.mul (.rational 10022003 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 241080 1) .v) .g) (.mul (.rational 1167015 1)
    (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 59153 1) (.pow .v 2)) (.pow .g 10)))
    (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3919098 1) .f) (.add (.mul (.rational 29462597 1) .g) (.mul (.rational 6274838 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 98236008 1) .g) (.mul (.rational 46429656 1) .v)) .g) (.mul
    (.rational 2520694 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 191086093 1)
    .g) (.mul (.rational 152061021 1) .v)) .g) (.mul (.rational 18363933 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 239849807 1) .g) (.mul (.rational 289849921 1) .v))
    .g) (.mul (.rational 59098790 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 202745396 1) .g) (.mul (.rational 355547720 1) .v)) .g) (.mul (.rational 110441231
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 116749212 1) .g)
    (.mul (.rational 292802845 1) .v)) .g) (.mul (.rational 132471054 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 45175833 1) .g) (.mul (.rational 163694866
    1) .v)) .g) (.mul (.rational 106364628 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11232893 1) .g) (.mul (.rational 61264811 1) .v)) .g) (.mul (.rational
    57794933 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1620017
    1) .g) (.mul (.rational 14677546 1) .v)) .g) (.mul (.rational 20956595 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 102918 1) .g) (.mul (.rational 2032415 1)
    .v)) .g) (.mul (.rational 4850746 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 123657 1) .v) .g) (.mul (.rational 647869 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 38039 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 453593 1) .f) (.add (.mul (.rational
    3615655 1) .g) (.mul (.rational 783224 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    12820280 1) .g) (.mul (.rational 6179396 1) .v)) .g) (.mul (.rational 340423 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 26603294 1) .g) (.mul (.rational 21658636 1) .v))
    .g) (.mul (.rational 2660708 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35742904 1) .g) (.mul (.rational 44359712 1) .v)) .g) (.mul (.rational 9228109 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 32456836 1) .g) (.mul
    (.rational 58722792 1) .v)) .g) (.mul (.rational 18678670 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 20154310 1) .g) (.mul (.rational 52434968 1) .v)) .g)
    (.mul (.rational 24401476 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8443490 1) .g) (.mul (.rational 31945216 1) .v)) .g) (.mul (.rational 21468278 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2282639 1) .g) (.mul
    (.rational 13098336 1) .v)) .g) (.mul (.rational 12865448 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 359509 1) .g) (.mul (.rational 3456832 1) .v)) .g)
    (.mul (.rational 5180474 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25058 1) .g) (.mul (.rational 530212 1) .v)) .g) (.mul (.rational 1340845 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 35924 1) .v) .g) (.mul (.rational
    201566 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 13395 1) (.pow .v 2)) (.pow
    .g 10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    24446 1) .f) (.add (.mul (.rational 206028 1) .g) (.mul (.rational 45366 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 774410 1) .g) (.mul (.rational 380322 1) .v)) .g) (.mul
    (.rational 21242 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1708241 1) .g)
    (.mul (.rational 1421024 1) .v)) .g) (.mul (.rational 177353 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2446899 1) .g) (.mul (.rational 3113418 1) .v)) .g) (.mul
    (.rational 659655 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2376157 1) .g) (.mul (.rational 4425442 1) .v)) .g) (.mul (.rational 1438021 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1582903 1) .g) (.mul (.rational
    4259878 1) .v)) .g) (.mul (.rational 2032639 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 713715 1) .g) (.mul (.rational 2809422 1) .v)) .g) (.mul
    (.rational 1944579 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    208331 1) .g) (.mul (.rational 1252334 1) .v)) .g) (.mul (.rational 1273853 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 35539 1) .g) (.mul (.rational
    360848 1) .v)) .g) (.mul (.rational 563735 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2691 1) .g) (.mul (.rational 60672 1) .v)) .g) (.mul (.rational
    161211 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 4522 1) .v) .g)
    (.mul (.rational 26904 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1992 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0414

namespace FullHigh0415
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  32*SmallGap.PolarCoefficientsHigh2.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsHigh1.c050 e f g v*((e+f)*(e+f+g))^5+
    160*SmallGap.PolarCoefficientsHigh2.c050 e f g v*e*((e+f)*(e+f+g))^5+
    8*SmallGap.PolarCoefficientsHigh2.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    20*SmallGap.PolarCoefficientsHigh1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsHigh2.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    48*SmallGap.PolarCoefficientsHigh0.c140 e f g v*((e+f)*(e+f+g))^4+
    80*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    48*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh2.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    5*SmallGap.PolarCoefficientsHigh1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh2.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    12*SmallGap.PolarCoefficientsHigh0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    10*SmallGap.PolarCoefficientsHigh1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsHigh2.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    36*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    15*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    3*SmallGap.PolarCoefficientsHigh0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(84*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^2+140*SmallGap.ReducedLayers.high0_010_1 e g v*e^3+140*SmallGap.ReducedLayers.high0_010_2
    e g v*e^4+84*SmallGap.ReducedLayers.high0_010_3 e g
    v*e^5+28*SmallGap.ReducedLayers.high0_010_4 e g v*e^6+56*SmallGap.ReducedLayers.high0_001_0 e
    g v*e^3+70*SmallGap.ReducedLayers.high0_001_1 e g v*e^4+56*SmallGap.ReducedLayers.high0_001_2
    e g v*e^5+28*SmallGap.ReducedLayers.high0_001_3 e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_0 e g v+15*SmallGap.ReducedLayers.high1_020_1 e g
    v*e^1+30*SmallGap.ReducedLayers.high1_020_2 e g v*e^2+30*SmallGap.ReducedLayers.high1_020_3 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_020_4 e g v*e^4+3*SmallGap.ReducedLayers.high1_020_5 e
    g v*e^5+6*SmallGap.ReducedLayers.high1_011_0 e g v*e^1+15*SmallGap.ReducedLayers.high1_011_1 e
    g v*e^2+20*SmallGap.ReducedLayers.high1_011_2 e g v*e^3+15*SmallGap.ReducedLayers.high1_011_3
    e g v*e^4+6*SmallGap.ReducedLayers.high1_011_4 e g v*e^5+1*SmallGap.ReducedLayers.high1_011_5
    e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 328230 1) .e) (.add (.mul (.rational 2975000 1) .f) (.add (.mul (.rational
    3683568 1) .g) (.mul (.rational 594608 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    16796717 1) .f) (.add (.mul (.rational 28338184 1) .g) (.mul (.rational 4893091 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 17116113 1) .g) (.mul (.rational 6006854 1) .v)) .g) (.mul
    (.rational 271530 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    66098126 1) .f) (.add (.mul (.rational 141055665 1) .g) (.mul (.rational 25115389 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 114780444 1) .g) (.mul (.rational 42141598 1) .v)) .g)
    (.mul (.rational 2037224 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    44451067 1) .g) (.mul (.rational 24836969 1) .v)) .g) (.mul (.rational 2521862 1) (.pow .v
    2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 192279396 1) .f)
    (.add (.mul (.rational 495926894 1) .g) (.mul (.rational 89886387 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 507342382 1) .g) (.mul (.rational 191536789 1) .v)) .g) (.mul
    (.rational 9513980 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 262633192 1)
    .g) (.mul (.rational 153312435 1) .v)) .g) (.mul (.rational 16134370 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 72314846 1) .g) (.mul (.rational 57234291 1) .v)) .g)
    (.mul (.rational 9439024 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 428021401 1) .f) (.add (.mul (.rational 1293891597 1)
    .g) (.mul (.rational 237660661 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1593684112 1)
    .g) (.mul (.rational 614819886 1) .v)) .g) (.mul (.rational 30909911 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1032025762 1) .g) (.mul (.rational 623380638 1) .v))
    .g) (.mul (.rational 66762079 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 377496109 1) .g) (.mul (.rational 314831166 1) .v)) .g) (.mul (.rational 53388631
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 77469633 1) .g)
    (.mul (.rational 82964065 1) .v)) .g) (.mul (.rational 19433885 1) (.pow .v 2))) (.pow .g
    3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    744614462 1) .f) (.add (.mul (.rational 2580584133 1) .g) (.mul (.rational 479957019 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 3715464755 1) .g) (.mul (.rational 1462230573 1) .v))
    .g) (.mul (.rational 73995227 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2886694455 1) .g) (.mul (.rational 1798009282 1) .v)) .g) (.mul (.rational 194734726 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1314997881 1) .g) (.mul (.rational
    1148191990 1) .v)) .g) (.mul (.rational 198584840 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 356571038 1) .g) (.mul (.rational 408059195 1) .v)) .g)
    (.mul (.rational 99033280 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 55492626 1) .g) (.mul (.rational 80112093 1) .v)) .g) (.mul (.rational 25022781 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1024864994 1) .f) (.add (.mul (.rational 4004817189 1) .g)
    (.mul (.rational 754881173 1) .v))) .f) (.add (.mul (.add (.mul (.rational 6597319118 1) .g)
    (.mul (.rational 2649636768 1) .v)) .g) (.mul (.rational 134833972 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5975867274 1) .g) (.mul (.rational 3835300475 1) .v)) .g)
    (.mul (.rational 419700221 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3254929595 1) .g) (.mul (.rational 2967560584 1) .v)) .g) (.mul (.rational 522762430 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1094489432 1) .g) (.mul
    (.rational 1331152459 1) .v)) .g) (.mul (.rational 333658944 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 223927763 1) .g) (.mul (.rational 351261592 1)
    .v)) .g) (.mul (.rational 116127800 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 26253821 1) .g) (.mul (.rational 52737485 1) .v)) .g) (.mul (.rational
    21680635 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1122429294 1) .f) (.add (.mul
    (.rational 4881720157 1) .g) (.mul (.rational 934129831 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 9053293946 1) .g) (.mul (.rational 3715336053 1) .v)) .g) (.mul (.rational
    190399595 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9363183483 1) .g)
    (.mul (.rational 6194868687 1) .v)) .g) (.mul (.rational 686134015 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5929556651 1) .g) (.mul (.rational 5639453649 1) .v))
    .g) (.mul (.rational 1013522805 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2375691396 1) .g) (.mul (.rational 3061329667 1) .v)) .g) (.mul (.rational
    793024690 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    600158819 1) .g) (.mul (.rational 1017075589 1) .v)) .g) (.mul (.rational 354997465 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 92040770 1) .g) (.mul
    (.rational 204302421 1) .v)) .g) (.mul (.rational 91842845 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7838688 1) .g) (.mul (.rational 23541233 1) .v)) .g)
    (.mul (.rational 13262187 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    978213558 1) .f) (.add (.mul (.rational 4686359507 1) .g) (.mul (.rational 912126153 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 9660732619 1) .g) (.mul (.rational 4057575560 1) .v))
    .g) (.mul (.rational 209957186 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11228720651 1) .g) (.mul (.rational 7665531358 1) .v)) .g) (.mul (.rational 861779240 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8100762516 1) .g) (.mul (.rational
    8034983654 1) .v)) .g) (.mul (.rational 1477314667 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3762433341 1) .g) (.mul (.rational 5126457022 1) .v)) .g)
    (.mul (.rational 1375016737 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1128282608 1) .g) (.mul (.rational 2056784076 1) .v)) .g) (.mul (.rational
    757312536 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    212682674 1) .g) (.mul (.rational 518125644 1) .v)) .g) (.mul (.rational 252889852 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 23569145 1) .g) (.mul
    (.rational 79343850 1) .v)) .g) (.mul (.rational 50640401 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1328951 1) .g) (.mul (.rational 6833995 1) .v)) .g)
    (.mul (.rational 5829219 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 674590493 1) .f) (.add (.mul (.rational 3529713805 1) .g) (.mul (.rational
    700132270 1) .v))) .f) (.add (.mul (.add (.mul (.rational 8006296563 1) .g) (.mul (.rational
    3446948279 1) .v)) .g) (.mul (.rational 180635809 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10329028898 1) .g) (.mul (.rational 7282490993 1) .v)) .g) (.mul
    (.rational 833583596 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    8358214885 1) .g) (.mul (.rational 8645185588 1) .v)) .g) (.mul (.rational 1630702516 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4411022002 1) .g) (.mul
    (.rational 6344657185 1) .v)) .g) (.mul (.rational 1765197502 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1528339510 1) .g) (.mul (.rational 2985889822 1)
    .v)) .g) (.mul (.rational 1158930458 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 340552557 1) .g) (.mul (.rational 905037039 1) .v)) .g) (.mul
    (.rational 476698142 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 46150362 1) .g) (.mul (.rational 172736712 1) .v)) .g) (.mul (.rational 122925950
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3366048 1) .g)
    (.mul (.rational 19586038 1) .v)) .g) (.mul (.rational 19398586 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 96537 1) .g) (.mul (.rational 1158265 1) .v)) .g)
    (.mul (.rational 1767153 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 363613286 1) .f) (.add (.mul (.rational 2063297160 1) .g) (.mul
    (.rational 417803130 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5106746341 1) .g) (.mul
    (.rational 2256734732 1) .v)) .g) (.mul (.rational 120116020 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 7239989335 1) .g) (.mul (.rational 5275786850 1) .v)) .g) (.mul
    (.rational 616548449 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    6491671928 1) .g) (.mul (.rational 7000488914 1) .v)) .g) (.mul (.rational 1357787853 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3833969633 1) .g) (.mul
    (.rational 5812350623 1) .v)) .g) (.mul (.rational 1679274028 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1504882049 1) .g) (.mul (.rational 3140191904 1)
    .v)) .g) (.mul (.rational 1283166132 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 385919221 1) .g) (.mul (.rational 1112566059 1) .v)) .g) (.mul
    (.rational 628725316 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 61513529 1) .g) (.mul (.rational 254015986 1) .v)) .g) (.mul (.rational 198868403
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5452555 1) .g)
    (.mul (.rational 35573614 1) .v)) .g) (.mul (.rational 39944842 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 200771 1) .g) (.mul (.rational 2734354 1) .v))
    .g) (.mul (.rational 4868302 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 85614 1) .v) .g) (.mul (.rational 322447 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 149973092 1) .f) (.add (.mul
    (.rational 917400055 1) .g) (.mul (.rational 189911722 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2460393260 1) .g) (.mul (.rational 1117171424 1) .v)) .g) (.mul (.rational 60538437
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3801864113 1) .g) (.mul
    (.rational 2864584216 1) .v)) .g) (.mul (.rational 342506901 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3740352628 1) .g) (.mul (.rational 4203394294 1) .v)) .g)
    (.mul (.rational 839559525 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2442679594 1) .g) (.mul (.rational 3896471861 1) .v)) .g) (.mul (.rational
    1169335979 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1069981650 1) .g) (.mul (.rational 2376779221 1) .v)) .g) (.mul (.rational 1020490286 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 309695542 1) .g) (.mul
    (.rational 963431301 1) .v)) .g) (.mul (.rational 580806882 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 56535767 1) .g) (.mul (.rational 255703637 1) .v))
    .g) (.mul (.rational 217716110 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5857020 1) .g) (.mul (.rational 42472476 1) .v)) .g) (.mul (.rational
    53051527 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 259927 1)
    .g) (.mul (.rational 3982380 1) .v)) .g) (.mul (.rational 8064669 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 159380 1) .v) .g) (.mul (.rational 693111 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 25373 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 45705153 1) .f) (.add
    (.mul (.rational 299853772 1) .g) (.mul (.rational 63524422 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 866275457 1) .g) (.mul (.rational 404421230 1) .v)) .g) (.mul (.rational
    22350721 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1448988281 1) .g)
    (.mul (.rational 1128959798 1) .v)) .g) (.mul (.rational 138291173 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1551551951 1) .g) (.mul (.rational 1815716440 1) .v))
    .g) (.mul (.rational 373694514 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1109637514 1) .g) (.mul (.rational 1859017099 1) .v)) .g) (.mul (.rational
    579151627 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    536064672 1) .g) (.mul (.rational 1263452516 1) .v)) .g) (.mul (.rational 568538132 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 172543224 1) .g) (.mul
    (.rational 576321630 1) .v)) .g) (.mul (.rational 368565173 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 35382527 1) .g) (.mul (.rational 174090722 1) .v))
    .g) (.mul (.rational 159605493 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4171477 1) .g) (.mul (.rational 33347247 1) .v)) .g) (.mul (.rational
    45630096 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 214508 1)
    .g) (.mul (.rational 3665316 1) .v)) .g) (.mul (.rational 8274638 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 176028 1) .v) .g) (.mul (.rational 865263 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 39834 1) (.pow .v 2)) (.pow .g 10))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9696112 1) .f) (.add
    (.mul (.rational 67923298 1) .g) (.mul (.rational 14735816 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 210315597 1) .g) (.mul (.rational 100977966 1) .v)) .g) (.mul (.rational
    5697346 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 378591139 1) .g) (.mul
    (.rational 304935348 1) .v)) .g) (.mul (.rational 38288540 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 438246748 1) .g) (.mul (.rational 533511004 1) .v)) .g)
    (.mul (.rational 113121208 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 340512860 1) .g) (.mul (.rational 597930236 1) .v)) .g) (.mul (.rational 193117529
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 179702320 1) .g)
    (.mul (.rational 447915707 1) .v)) .g) (.mul (.rational 210601913 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 63575615 1) .g) (.mul (.rational 226916405
    1) .v)) .g) (.mul (.rational 153101957 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14431196 1) .g) (.mul (.rational 76756394 1) .v)) .g) (.mul (.rational
    75112562 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1899256
    1) .g) (.mul (.rational 16610678 1) .v)) .g) (.mul (.rational 24587231 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 110195 1) .g) (.mul (.rational 2082897 1)
    .v)) .g) (.mul (.rational 5158351 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 115485 1) .v) .g) (.mul (.rational 630511 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 34388 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1278032 1) .f) (.add (.mul (.rational
    9522848 1) .g) (.mul (.rational 2116224 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    31465161 1) .g) (.mul (.rational 15534938 1) .v)) .g) (.mul (.rational 895108 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 60653366 1) .g) (.mul (.rational 50470520
    1) .v)) .g) (.mul (.rational 6494682 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 75467303 1) .g) (.mul (.rational 95444586 1) .v)) .g) (.mul (.rational 20829795 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 63281547 1) .g) (.mul
    (.rational 116212244 1) .v)) .g) (.mul (.rational 38836687 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 36196858 1) .g) (.mul (.rational 95100904 1) .v)) .g)
    (.mul (.rational 46564370 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13943836 1) .g) (.mul (.rational 52940118 1) .v)) .g) (.mul (.rational 37485780 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3463551 1) .g) (.mul
    (.rational 19797010 1) .v)) .g) (.mul (.rational 20518997 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 501523 1) .g) (.mul (.rational 4765136 1) .v)) .g)
    (.mul (.rational 7549735 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32215 1) .g) (.mul (.rational 668514 1) .v)) .g) (.mul (.rational 1792332 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 41710 1) .v) .g) (.mul (.rational
    249260 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 15542 1) (.pow .v 2)) (.pow
    .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    78764 1) .f) (.add (.mul (.rational 622150 1) .g) (.mul (.rational 141604 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 2185354 1) .g) (.mul (.rational 1108946 1) .v)) .g) (.mul
    (.rational 65228 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4491650 1) .g)
    (.mul (.rational 3857532 1) .v)) .g) (.mul (.rational 508288 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5977705 1) .g) (.mul (.rational 7841560 1) .v)) .g) (.mul
    (.rational 1758728 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5379032 1) .g) (.mul (.rational 10306462 1) .v)) .g) (.mul (.rational 3555158 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3313015 1) .g) (.mul (.rational
    9144816 1) .v)) .g) (.mul (.rational 4645941 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1378994 1) .g) (.mul (.rational 5544866 1) .v)) .g) (.mul
    (.rational 4099264 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    371395 1) .g) (.mul (.rational 2268752 1) .v)) .g) (.mul (.rational 2473183 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 58510 1) .g) (.mul (.rational
    600030 1) .v)) .g) (.mul (.rational 1008318 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4103 1) .g) (.mul (.rational 92822 1) .v)) .g) (.mul (.rational
    266423 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 6402 1) .v) .g)
    (.mul (.rational 41356 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 2881 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0415

namespace FullHigh0416
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  80*SmallGap.PolarCoefficientsHigh2.c050 e f g v*((e+f)*(e+f+g))^5+
    20*SmallGap.PolarCoefficientsHigh2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    48*SmallGap.PolarCoefficientsHigh1.c140 e f g v*((e+f)*(e+f+g))^4+
    80*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    5*SmallGap.PolarCoefficientsHigh2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    12*SmallGap.PolarCoefficientsHigh1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    10*SmallGap.PolarCoefficientsHigh2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    28*SmallGap.PolarCoefficientsHigh0.c230 e f g v*((e+f)*(e+f+g))^3+
    36*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    15*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    7*SmallGap.PolarCoefficientsHigh0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    14*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^1+84*SmallGap.ReducedLayers.high0_010_1 e g v*e^2+140*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^3+140*SmallGap.ReducedLayers.high0_010_3 e g v*e^4+84*SmallGap.ReducedLayers.high0_010_4
    e g v*e^5+28*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^2+56*SmallGap.ReducedLayers.high0_001_1 e g v*e^3+70*SmallGap.ReducedLayers.high0_001_2 e
    g v*e^4+56*SmallGap.ReducedLayers.high0_001_3 e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_1 e g v+15*SmallGap.ReducedLayers.high1_020_2 e g
    v*e^1+30*SmallGap.ReducedLayers.high1_020_3 e g v*e^2+30*SmallGap.ReducedLayers.high1_020_4 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_020_5 e g v*e^4+3*SmallGap.ReducedLayers.high1_020_6 e
    g v*e^5+1*SmallGap.ReducedLayers.high1_011_0 e g v+6*SmallGap.ReducedLayers.high1_011_1 e g
    v*e^1+15*SmallGap.ReducedLayers.high1_011_2 e g v*e^2+20*SmallGap.ReducedLayers.high1_011_3 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_011_4 e g v*e^4+6*SmallGap.ReducedLayers.high1_011_5 e
    g v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    334614 1) .e) (.add (.mul (.rational 2973124 1) .f) (.add (.mul (.rational 3666516 1) .g)
    (.mul (.rational 599116 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 16390437 1) .f) (.add
    (.mul (.rational 27516804 1) .g) (.mul (.rational 4780657 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 16561573 1) .g) (.mul (.rational 5773754 1) .v)) .g) (.mul (.rational 271950 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 62663325 1) .f) (.add (.mul
    (.rational 132958488 1) .g) (.mul (.rational 23715225 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 107692709 1) .g) (.mul (.rational 39079017 1) .v)) .g) (.mul (.rational 1965376 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 41608242 1) .g) (.mul (.rational
    22497171 1) .v)) .g) (.mul (.rational 2379832 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 176027063 1) .f) (.add (.mul (.rational 451057702 1)
    .g) (.mul (.rational 81670866 1) .v))) .f) (.add (.mul (.add (.mul (.rational 458871577 1) .g)
    (.mul (.rational 170769631 1) .v)) .g) (.mul (.rational 8805944 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 236657178 1) .g) (.mul (.rational 133467659 1) .v)) .g)
    (.mul (.rational 14568148 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    65121218 1) .g) (.mul (.rational 48326477 1) .v)) .g) (.mul (.rational 8218952 1) (.pow .v
    2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    375672594 1) .f) (.add (.mul (.rational 1127458799 1) .g) (.mul (.rational 206664368 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1379750510 1) .g) (.mul (.rational 524516861 1) .v))
    .g) (.mul (.rational 27319505 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    889101362 1) .g) (.mul (.rational 519488682 1) .v)) .g) (.mul (.rational 57500850 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 324459360 1) .g) (.mul (.rational
    254810686 1) .v)) .g) (.mul (.rational 44337487 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 66687147 1) .g) (.mul (.rational 64741582 1) .v)) .g) (.mul
    (.rational 15274208 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 621259683 1) .f) (.add (.mul (.rational
    2136173434 1) .g) (.mul (.rational 396772634 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    3053376052 1) .g) (.mul (.rational 1186299675 1) .v)) .g) (.mul (.rational 62115392 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2358142975 1) .g) (.mul (.rational
    1426248137 1) .v)) .g) (.mul (.rational 159349744 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1070149600 1) .g) (.mul (.rational 886331262 1) .v)) .g) (.mul
    (.rational 156972171 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 290041465 1) .g) (.mul (.rational 304789214 1) .v)) .g) (.mul (.rational 74491086
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 45321681 1) .g)
    (.mul (.rational 57542599 1) .v)) .g) (.mul (.rational 17438311 1) (.pow .v 2))) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 804605109 1) .f) (.add (.mul (.rational 3117616999 1) .g) (.mul (.rational
    588305662 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5094987869 1) .g) (.mul (.rational
    2027938882 1) .v)) .g) (.mul (.rational 106799830 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4583199146 1) .g) (.mul (.rational 2873964758 1) .v)) .g) (.mul
    (.rational 324565966 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2483727483 1) .g) (.mul (.rational 2169170963 1) .v)) .g) (.mul (.rational 391856919 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 833337043 1) .g) (.mul
    (.rational 945189346 1) .v)) .g) (.mul (.rational 239767850 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 170813739 1) .g) (.mul (.rational 241306238 1) .v))
    .g) (.mul (.rational 78605731 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20165028 1) .g) (.mul (.rational 34975914 1) .v)) .g) (.mul (.rational 13431854 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 818958273 1) .f) (.add (.mul (.rational
    3530014561 1) .g) (.mul (.rational 678958510 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    6490338121 1) .g) (.mul (.rational 2654629452 1) .v)) .g) (.mul (.rational 141079468 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6660606567 1) .g) (.mul (.rational
    4340614658 1) .v)) .g) (.mul (.rational 497616450 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4192016890 1) .g) (.mul (.rational 3864391105 1) .v)) .g) (.mul
    (.rational 715719394 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1673380904 1) .g) (.mul (.rational 2045808393 1) .v)) .g) (.mul (.rational
    541355884 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    422730268 1) .g) (.mul (.rational 661434976 1) .v)) .g) (.mul (.rational 231948345 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 65139406 1) .g) (.mul
    (.rational 129310658 1) .v)) .g) (.mul (.rational 56707328 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5604182 1) .g) (.mul (.rational 14576975 1) .v)) .g)
    (.mul (.rational 7646091 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    653104767 1) .f) (.add (.mul (.rational 3099495810 1) .g) (.mul (.rational 609645438 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 6331081049 1) .g) (.mul (.rational 2669061861 1) .v))
    .g) (.mul (.rational 143789674 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7296420515 1) .g) (.mul (.rational 4953337035 1) .v)) .g) (.mul (.rational 579469979 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5226320433 1) .g) (.mul (.rational
    5090690776 1) .v)) .g) (.mul (.rational 972076722 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2415412677 1) .g) (.mul (.rational 3179314600 1) .v)) .g)
    (.mul (.rational 881862584 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 723168267 1) .g) (.mul (.rational 1247811972 1) .v)) .g) (.mul (.rational 471394551
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 136720667 1) .g)
    (.mul (.rational 308052181 1) .v)) .g) (.mul (.rational 152330791 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 15281008 1) .g) (.mul (.rational 46540244 1)
    .v)) .g) (.mul (.rational 29619765 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 873963 1) .g) (.mul (.rational 4011302 1) .v)) .g) (.mul (.rational 3382276
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 403922404 1) .f)
    (.add (.mul (.rational 2092832231 1) .g) (.mul (.rational 422226783 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 4701377685 1) .g) (.mul (.rational 2048336999 1) .v)) .g) (.mul
    (.rational 112382720 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6010178644
    1) .g) (.mul (.rational 4258525348 1) .v)) .g) (.mul (.rational 510882266 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4824670108 1) .g) (.mul (.rational
    4968636280 1) .v)) .g) (.mul (.rational 982809261 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2530874201 1) .g) (.mul (.rational 3581262267 1) .v)) .g)
    (.mul (.rational 1044619168 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 874287677 1) .g) (.mul (.rational 1656007952 1) .v)) .g) (.mul (.rational 673111870
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 195083219 1) .g)
    (.mul (.rational 494632849 1) .v)) .g) (.mul (.rational 272404202 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 26625592 1) .g) (.mul (.rational 93723332 1)
    .v)) .g) (.mul (.rational 69773518 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1969019 1) .g) (.mul (.rational 10701151 1) .v)) .g) (.mul (.rational
    11195766 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 57628 1)
    .g) (.mul (.rational 651235 1) .v)) .g) (.mul (.rational 1081519 1) (.pow .v 2))) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 189991314 1) .f) (.add (.mul
    (.rational 1067196608 1) .g) (.mul (.rational 221399703 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2614792935 1) .g) (.mul (.rational 1179814565 1) .v)) .g) (.mul (.rational 66192122
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3671313925 1) .g) (.mul
    (.rational 2718569281 1) .v)) .g) (.mul (.rational 335764614 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3263224698 1) .g) (.mul (.rational 3553091577 1) .v)) .g)
    (.mul (.rational 730364502 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1913817730 1) .g) (.mul (.rational 2905523059 1) .v)) .g) (.mul (.rational
    892396128 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    748055184 1) .g) (.mul (.rational 1547875403 1) .v)) .g) (.mul (.rational 674874564 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 191830743 1) .g) (.mul
    (.rational 542684209 1) .v)) .g) (.mul (.rational 328924732 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 30752815 1) .g) (.mul (.rational 123539580 1) .v))
    .g) (.mul (.rational 104658451 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2761872 1) .g) (.mul (.rational 17485445 1) .v)) .g) (.mul (.rational
    21602890 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 103932 1)
    .g) (.mul (.rational 1386527 1) .v)) .g) (.mul (.rational 2797073 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 45955 1) .v) .g) (.mul (.rational 204342 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    65728302 1) .f) (.add (.mul (.rational 397879545 1) .g) (.mul (.rational 85046400 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 1055935146 1) .g) (.mul (.rational 494135103 1) .v)) .g)
    (.mul (.rational 28436760 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1615100305 1) .g) (.mul (.rational 1250671765 1) .v)) .g) (.mul (.rational 159448238 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1574105860 1) .g) (.mul (.rational
    1810988743 1) .v)) .g) (.mul (.rational 387482964 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1019935728 1) .g) (.mul (.rational 1657243019 1) .v)) .g)
    (.mul (.rational 535723300 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 444406886 1) .g) (.mul (.rational 999542491 1) .v)) .g) (.mul (.rational 465475520
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 128454072 1) .g)
    (.mul (.rational 402128895 1) .v)) .g) (.mul (.rational 265339412 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 23550506 1) .g) (.mul (.rational 106702980
    1) .v)) .g) (.mul (.rational 100720906 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2469008 1) .g) (.mul (.rational 17940844 1) .v)) .g) (.mul (.rational
    25314696 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 111958 1)
    .g) (.mul (.rational 1734979 1) .v)) .g) (.mul (.rational 4076527 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 73373 1) .v) .g) (.mul (.rational 382720 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 15689 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15778583 1) .f) (.add
    (.mul (.rational 102408503 1) .g) (.mul (.rational 22584550 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 292656867 1) .g) (.mul (.rational 142155980 1) .v)) .g) (.mul (.rational
    8408577 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 484314155 1) .g) (.mul
    (.rational 392201585 1) .v)) .g) (.mul (.rational 51685433 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 513418917 1) .g) (.mul (.rational 623411551 1) .v)) .g)
    (.mul (.rational 138872951 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 364007294 1) .g) (.mul (.rational 631231753 1) .v)) .g) (.mul (.rational 214398043
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 174732491 1) .g)
    (.mul (.rational 425034166 1) .v)) .g) (.mul (.rational 210382347 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 56087717 1) .g) (.mul (.rational 192796912
    1) .v)) .g) (.mul (.rational 137151896 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11532242 1) .g) (.mul (.rational 58304239 1) .v)) .g) (.mul (.rational
    60327567 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1373483
    1) .g) (.mul (.rational 11305331 1) .v)) .g) (.mul (.rational 17792385 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 72052 1) .g) (.mul (.rational 1278784 1)
    .v)) .g) (.mul (.rational 3401406 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 64589 1) .v) .g) (.mul (.rational 384707 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 19616 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2349144 1) .f) (.add (.mul (.rational 16274883 1) .g)
    (.mul (.rational 3706182 1) .v))) .f) (.add (.mul (.add (.mul (.rational 49828272 1) .g) (.mul
    (.rational 25130810 1) .v)) .g) (.mul (.rational 1529430 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 88698377 1) .g) (.mul (.rational 75079948 1) .v)) .g) (.mul
    (.rational 10230486 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    101583332 1) .g) (.mul (.rational 129975573 1) .v)) .g) (.mul (.rational 30119976 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 78178184 1) .g) (.mul
    (.rational 144246836 1) .v)) .g) (.mul (.rational 51347536 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 40948444 1) .g) (.mul (.rational 107194174 1) .v))
    .g) (.mul (.rational 56112844 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14425721 1) .g) (.mul (.rational 54057527 1) .v)) .g) (.mul (.rational 41108040 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3276968 1) .g) (.mul
    (.rational 18310921 1) .v)) .g) (.mul (.rational 20502247 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 434651 1) .g) (.mul (.rational 4006260 1) .v)) .g)
    (.mul (.rational 6911140 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25656 1) .g) (.mul (.rational 515114 1) .v)) .g) (.mul (.rational 1519752 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 29839 1) .v) .g) (.mul (.rational
    198918 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 11871 1) (.pow .v 2)) (.pow
    .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    163464 1) .f) (.add (.mul (.rational 1204141 1) .g) (.mul (.rational 283250 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 3932325 1) .g) (.mul (.rational 2058858 1) .v)) .g) (.mul
    (.rational 128940 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7491447 1)
    .g) (.mul (.rational 6622284 1) .v)) .g) (.mul (.rational 932526 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9215221 1) .g) (.mul (.rational 12401252 1) .v)) .g)
    (.mul (.rational 2984959 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7646269 1) .g) (.mul (.rational 14963828 1) .v)) .g) (.mul (.rational 5566125 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4335251 1) .g) (.mul
    (.rational 12155408 1) .v)) .g) (.mul (.rational 6696463 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1660125 1) .g) (.mul (.rational 6737168 1) .v)) .g)
    (.mul (.rational 5436429 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 411727 1) .g) (.mul (.rational 2521164 1) .v)) .g) (.mul (.rational 3023321 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 59906 1) .g) (.mul
    (.rational 612122 1) .v)) .g) (.mul (.rational 1142199 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3900 1) .g) (.mul (.rational 87638 1) .v)) .g) (.mul
    (.rational 282425 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 5668
    1) .v) .g) (.mul (.rational 41633 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    2804 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0416

namespace FullHigh0417
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  48*SmallGap.PolarCoefficientsHigh2.c140 e f g v*((e+f)*(e+f+g))^4+
    12*SmallGap.PolarCoefficientsHigh2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    28*SmallGap.PolarCoefficientsHigh1.c230 e f g v*((e+f)*(e+f+g))^3+
    36*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    7*SmallGap.PolarCoefficientsHigh1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    16*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2+
    14*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    4*SmallGap.PolarCoefficientsHigh0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_010_0 e g v+28*SmallGap.ReducedLayers.high0_010_1 e
    g v*e^1+84*SmallGap.ReducedLayers.high0_010_2 e g v*e^2+140*SmallGap.ReducedLayers.high0_010_3
    e g v*e^3+140*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^4+8*SmallGap.ReducedLayers.high0_001_0 e g v*e^1+28*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^2+56*SmallGap.ReducedLayers.high0_001_2 e g v*e^3+70*SmallGap.ReducedLayers.high0_001_3 e
    g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_2 e g v+15*SmallGap.ReducedLayers.high1_020_3 e g
    v*e^1+30*SmallGap.ReducedLayers.high1_020_4 e g v*e^2+30*SmallGap.ReducedLayers.high1_020_5 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_020_6 e g v*e^4+1*SmallGap.ReducedLayers.high1_011_1 e
    g v+6*SmallGap.ReducedLayers.high1_011_2 e g v*e^1+15*SmallGap.ReducedLayers.high1_011_3 e g
    v*e^2+20*SmallGap.ReducedLayers.high1_011_4 e g v*e^3+15*SmallGap.ReducedLayers.high1_011_5 e
    g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 243936 1)
    .e) (.add (.mul (.rational 2129006 1) .f) (.add (.mul (.rational 2615862 1) .g) (.mul
    (.rational 431300 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 11475181 1) .f) (.add (.mul
    (.rational 19173494 1) .g) (.mul (.rational 3340671 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 11506117 1) .g) (.mul (.rational 3962610 1) .v)) .g) (.mul (.rational 194700 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 42635530 1) .f) (.add (.mul
    (.rational 89941131 1) .g) (.mul (.rational 16018901 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 72540464 1) .g) (.mul (.rational 25862972 1) .v)) .g) (.mul (.rational 1357226 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 27987779 1) .g) (.mul (.rational
    14486461 1) .v)) .g) (.mul (.rational 1604552 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 115536200 1) .f) (.add (.mul (.rational 294043299 1)
    .g) (.mul (.rational 53035988 1) .v))) .f) (.add (.mul (.add (.mul (.rational 297497199 1) .g)
    (.mul (.rational 108505998 1) .v)) .g) (.mul (.rational 5835534 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 152956301 1) .g) (.mul (.rational 82433518 1) .v)) .g)
    (.mul (.rational 9391482 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    42119689 1) .g) (.mul (.rational 28727054 1) .v)) .g) (.mul (.rational 5079298 1) (.pow .v
    2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    235755004 1) .f) (.add (.mul (.rational 702039328 1) .g) (.mul (.rational 128159768 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 853399363 1) .g) (.mul (.rational 318093296 1) .v)) .g)
    (.mul (.rational 17270261 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    547359525 1) .g) (.mul (.rational 306271522 1) .v)) .g) (.mul (.rational 35302451 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 199461097 1) .g) (.mul (.rational
    144783566 1) .v)) .g) (.mul (.rational 26074037 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 41125707 1) .g) (.mul (.rational 35001762 1) .v)) .g) (.mul
    (.rational 8368917 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 368783749 1) .f) (.add (.mul (.rational
    1256992485 1) .g) (.mul (.rational 233001031 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1782647234 1) .g) (.mul (.rational 681384218 1) .v)) .g) (.mul (.rational 37209162 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1368282579 1) .g) (.mul (.rational
    797176554 1) .v)) .g) (.mul (.rational 92735290 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 618812818 1) .g) (.mul (.rational 478643022 1) .v)) .g) (.mul
    (.rational 87704966 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 167806108 1) .g) (.mul (.rational 157438435 1) .v)) .g) (.mul (.rational 39091488
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 26368407 1) .g)
    (.mul (.rational 28042240 1) .v)) .g) (.mul (.rational 8200300 1) (.pow .v 2))) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 445890256 1) .f) (.add (.mul (.rational 1711113142 1) .g) (.mul (.rational
    323619577 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2771474241 1) .g) (.mul (.rational
    1091893262 1) .v)) .g) (.mul (.rational 60123659 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2474254226 1) .g) (.mul (.rational 1508233712 1) .v)) .g) (.mul (.rational
    177892258 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1333778211 1) .g)
    (.mul (.rational 1103387968 1) .v)) .g) (.mul (.rational 207228823 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 446668611 1) .g) (.mul (.rational 462658189
    1) .v)) .g) (.mul (.rational 120514499 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 91795584 1) .g) (.mul (.rational 112657584 1) .v)) .g) (.mul (.rational
    36533632 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10919437
    1) .g) (.mul (.rational 15429170 1) .v)) .g) (.mul (.rational 5456907 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 416802485 1) .f) (.add (.mul (.rational 1777858831 1) .g) (.mul
    (.rational 344857612 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3236325590 1) .g) (.mul
    (.rational 1321209782 1) .v)) .g) (.mul (.rational 73781634 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3291799010 1) .g) (.mul (.rational 2109802767 1) .v)) .g) (.mul
    (.rational 254266305 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2057323559 1) .g) (.mul (.rational 1826951368 1) .v)) .g) (.mul (.rational 355203652 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 817906924 1) .g) (.mul
    (.rational 936286394 1) .v)) .g) (.mul (.rational 258733182 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 206602635 1) .g) (.mul (.rational 291636344 1) .v))
    .g) (.mul (.rational 105445398 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 31982487 1) .g) (.mul (.rational 54762073 1) .v)) .g) (.mul (.rational
    24114899 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2775599
    1) .g) (.mul (.rational 5943982 1) .v)) .g) (.mul (.rational 2996088 1) (.pow .v 2))) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 298869866 1) .f) (.add (.mul (.rational 1402533328 1) .g)
    (.mul (.rational 280378694 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2833668597 1) .g)
    (.mul (.rational 1204390176 1) .v)) .g) (.mul (.rational 68677353 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3232844054 1) .g) (.mul (.rational 2187488719 1) .v)) .g)
    (.mul (.rational 271555673 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2295876700 1) .g) (.mul (.rational 2194066568 1) .v)) .g) (.mul (.rational 445570850 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1054650816 1) .g) (.mul
    (.rational 1333648700 1) .v)) .g) (.mul (.rational 394034046 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 314974574 1) .g) (.mul (.rational 508521252 1)
    .v)) .g) (.mul (.rational 204782692 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 59666349 1) .g) (.mul (.rational 122101865 1) .v)) .g) (.mul (.rational
    64441566 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6712081
    1) .g) (.mul (.rational 18076110 1) .v)) .g) (.mul (.rational 12387919 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 387199 1) .g) (.mul (.rational 1552894 1)
    .v)) .g) (.mul (.rational 1462339 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 161519998 1) .f) (.add (.mul (.rational 826958557 1) .g) (.mul (.rational
    171074188 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1835868702 1) .g) (.mul (.rational
    815414096 1) .v)) .g) (.mul (.rational 47778506 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2320707009 1) .g) (.mul (.rational 1662515102 1) .v)) .g) (.mul (.rational
    214016536 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1844409279 1) .g)
    (.mul (.rational 1898880138 1) .v)) .g) (.mul (.rational 405303060 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 959948998 1) .g) (.mul (.rational 1338132065
    1) .v)) .g) (.mul (.rational 424115792 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 330084772 1) .g) (.mul (.rational 605086174 1) .v)) .g) (.mul
    (.rational 269772684 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 73631672 1) .g) (.mul (.rational 177362068 1) .v)) .g) (.mul (.rational 108715770
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 10096467 1) .g)
    (.mul (.rational 33300780 1) .v)) .g) (.mul (.rational 28307878 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 753298 1) .g) (.mul (.rational 3837454 1) .v))
    .g) (.mul (.rational 4795196 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22236 1) .g) (.mul (.rational 241714 1) .v)) .g) (.mul (.rational 511656 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 63722288 1) .f)
    (.add (.mul (.rational 353463353 1) .g) (.mul (.rational 75910196 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 855171899 1) .g) (.mul (.rational 397969674 1) .v)) .g) (.mul
    (.rational 24079747 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1186066839
    1) .g) (.mul (.rational 900979710 1) .v)) .g) (.mul (.rational 120820840 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1042388315 1) .g) (.mul (.rational 1155767594 1)
    .v)) .g) (.mul (.rational 260101753 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 605585799 1) .g) (.mul (.rational 927393245 1) .v)) .g) (.mul (.rational
    315185086 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    235170656 1) .g) (.mul (.rational 485481116 1) .v)) .g) (.mul (.rational 237605746 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 60169699 1) .g) (.mul
    (.rational 168047598 1) .v)) .g) (.mul (.rational 116675358 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9675892 1) .g) (.mul (.rational 38160798 1) .v)) .g)
    (.mul (.rational 38138172 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 876816 1) .g) (.mul (.rational 5485100 1) .v)) .g) (.mul (.rational 8330735 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 33456 1) .g) (.mul
    (.rational 452680 1) .v)) .g) (.mul (.rational 1179410 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 16013 1) .v) .g) (.mul (.rational 95909 1) (.pow .v 2)))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 17336555 1)
    .f) (.add (.mul (.rational 103571878 1) .g) (.mul (.rational 23144226 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 271217613 1) .g) (.mul (.rational 132453432 1) .v)) .g) (.mul
    (.rational 8303024 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 409396363 1)
    .g) (.mul (.rational 329909882 1) .v)) .g) (.mul (.rational 46197531 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 394061660 1) .g) (.mul (.rational 469876706 1) .v))
    .g) (.mul (.rational 111563240 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 252563708 1) .g) (.mul (.rational 423092334 1) .v)) .g) (.mul (.rational
    153752313 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    109149155 1) .g) (.mul (.rational 251617180 1) .v)) .g) (.mul (.rational 133955672 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 31420899 1) .g) (.mul
    (.rational 100331079 1) .v)) .g) (.mul (.rational 77373604 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5769913 1) .g) (.mul (.rational 26653482 1) .v)) .g)
    (.mul (.rational 30266900 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 610180 1) .g) (.mul (.rational 4562022 1) .v)) .g) (.mul (.rational 8026845 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 28132 1) .g) (.mul
    (.rational 459504 1) .v)) .g) (.mul (.rational 1399858 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 20761 1) .v) .g) (.mul (.rational 144983 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 6582 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2910600 1) .f) (.add (.mul
    (.rational 18632610 1) .g) (.mul (.rational 4338636 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 52502072 1) .g) (.mul (.rational 26926140 1) .v)) .g) (.mul (.rational 1751808 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 85669929 1) .g) (.mul (.rational
    73201596 1) .v)) .g) (.mul (.rational 10711428 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 89596453 1) .g) (.mul (.rational 114636974 1) .v)) .g) (.mul (.rational
    28684583 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 62751839
    1) .g) (.mul (.rational 114446892 1) .v)) .g) (.mul (.rational 44290880 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 29830354 1) .g) (.mul (.rational 76161694
    1) .v)) .g) (.mul (.rational 43725992 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9520195 1) .g) (.mul (.rational 34319211 1) .v)) .g) (.mul (.rational
    28954953 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1957509
    1) .g) (.mul (.rational 10407254 1) .v)) .g) (.mul (.rational 13124175 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 234955 1) .g) (.mul (.rational 2054242 1)
    .v)) .g) (.mul (.rational 4066698 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12540 1) .g) (.mul (.rational 241498 1) .v)) .g) (.mul (.rational 834898 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 12983 1) .v) .g) (.mul
    (.rational 103321 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 5824 1) (.pow .v
    2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    227496 1) .f) (.add (.mul (.rational 1553604 1) .g) (.mul (.rational 377256 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 4686717 1) .g) (.mul (.rational 2524188 1) .v)) .g) (.mul
    (.rational 170544 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 8219086 1)
    .g) (.mul (.rational 7438286 1) .v)) .g) (.mul (.rational 1136856 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9276907 1) .g) (.mul (.rational 12702180 1) .v)) .g)
    (.mul (.rational 3342696 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7044086 1) .g) (.mul (.rational 13918646 1) .v)) .g) (.mul (.rational 5711223 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3648375 1) .g) (.mul
    (.rational 10237226 1) .v)) .g) (.mul (.rational 6290298 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1275706 1) .g) (.mul (.rational 5134220 1) .v)) .g)
    (.mul (.rational 4684193 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 289277 1) .g) (.mul (.rational 1744184 1) .v)) .g) (.mul (.rational 2403982 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 38606 1) .g) (.mul
    (.rational 387822 1) .v)) .g) (.mul (.rational 847505 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2316 1) .g) (.mul (.rational 51614 1) .v)) .g) (.mul
    (.rational 198614 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3162
    1) .v) .g) (.mul (.rational 28207 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    1850 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0417

namespace FullHigh0418
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  28*SmallGap.PolarCoefficientsHigh2.c230 e f g v*((e+f)*(e+f+g))^3+
    7*SmallGap.PolarCoefficientsHigh2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    16*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    14*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    9*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsHigh1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_010_1 e g v+28*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^1+84*SmallGap.ReducedLayers.high0_010_3 e g v*e^2+140*SmallGap.ReducedLayers.high0_010_4
    e g v*e^3+1*SmallGap.ReducedLayers.high0_001_0 e g v+8*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^1+28*SmallGap.ReducedLayers.high0_001_2 e g v*e^2+56*SmallGap.ReducedLayers.high0_001_3 e
    g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_3 e g v+15*SmallGap.ReducedLayers.high1_020_4 e g
    v*e^1+30*SmallGap.ReducedLayers.high1_020_5 e g v*e^2+30*SmallGap.ReducedLayers.high1_020_6 e
    g v*e^3+1*SmallGap.ReducedLayers.high1_011_2 e g v+6*SmallGap.ReducedLayers.high1_011_3 e g
    v*e^1+15*SmallGap.ReducedLayers.high1_011_4 e g v*e^2+20*SmallGap.ReducedLayers.high1_011_5 e
    g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 124614 1) .e) (.add
    (.mul (.rational 1070404 1) .f) (.add (.mul (.rational 1310775 1) .g) (.mul (.rational 217384
    1) .v)))) .e) (.add (.mul (.add (.mul (.rational 5648131 1) .f) (.add (.mul (.rational 9394388
    1) .g) (.mul (.rational 1635971 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5625009 1) .g)
    (.mul (.rational 1902316 1) .v)) .g) (.mul (.rational 97650 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 20400793 1) .f) (.add (.mul (.rational 42787146 1) .g)
    (.mul (.rational 7583663 1) .v))) .f) (.add (.mul (.add (.mul (.rational 34380648 1) .g) (.mul
    (.rational 11963999 1) .v)) .g) (.mul (.rational 657532 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 13263413 1) .g) (.mul (.rational 6488827 1) .v)) .g) (.mul
    (.rational 757489 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 53273649 1) .f) (.add (.mul (.rational 134623909 1) .g) (.mul (.rational 24116266
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 135493151 1) .g) (.mul (.rational 48112841 1)
    .v)) .g) (.mul (.rational 2714002 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 69519053 1) .g) (.mul (.rational 35330085 1) .v)) .g) (.mul (.rational 4236458 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 19196296 1) .g) (.mul
    (.rational 11723503 1) .v)) .g) (.mul (.rational 2181332 1) (.pow .v 2))) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 103627754 1) .f) (.add
    (.mul (.rational 305999116 1) .g) (.mul (.rational 55527738 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 369456986 1) .g) (.mul (.rational 134267586 1) .v)) .g) (.mul (.rational
    7657348 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 236015270 1) .g) (.mul
    (.rational 124931403 1) .v)) .g) (.mul (.rational 15148802 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 86022930 1) .g) (.mul (.rational 56320873 1) .v)) .g) (.mul
    (.rational 10637546 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17842008 1) .g) (.mul (.rational 12686303 1) .v)) .g) (.mul (.rational 3113848 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 152472246 1) .f) (.add (.mul (.rational 514663109 1) .g) (.mul
    (.rational 95205657 1) .v))) .f) (.add (.mul (.add (.mul (.rational 723815730 1) .g) (.mul
    (.rational 271251350 1) .v)) .g) (.mul (.rational 15608065 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 552258965 1) .g) (.mul (.rational 307036076 1) .v)) .g) (.mul
    (.rational 37674741 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    249182033 1) .g) (.mul (.rational 176439947 1) .v)) .g) (.mul (.rational 34004491 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 67755156 1) .g) (.mul
    (.rational 54567330 1) .v)) .g) (.mul (.rational 14020853 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10740327 1) .g) (.mul (.rational 8860239 1) .v)) .g)
    (.mul (.rational 2499946 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 170500139 1) .f) (.add (.mul
    (.rational 647118324 1) .g) (.mul (.rational 122983767 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1037779921 1) .g) (.mul (.rational 404590019 1) .v)) .g) (.mul (.rational 23620301
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 919153292 1) .g) (.mul
    (.rational 541849848 1) .v)) .g) (.mul (.rational 67921027 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 493088482 1) .g) (.mul (.rational 381215492 1) .v)) .g)
    (.mul (.rational 76127059 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 165050773 1) .g) (.mul (.rational 151864498 1) .v)) .g) (.mul (.rational 41826759
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 34084742 1) .g)
    (.mul (.rational 34491388 1) .v)) .g) (.mul (.rational 11532382 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4095457 1) .g) (.mul (.rational 4283687 1) .v))
    .g) (.mul (.rational 1416190 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 144216797 1) .f)
    (.add (.mul (.rational 607635127 1) .g) (.mul (.rational 119547656 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1093476067 1) .g) (.mul (.rational 447144465 1) .v)) .g) (.mul
    (.rational 26730113 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1101249924
    1) .g) (.mul (.rational 694081888 1) .v)) .g) (.mul (.rational 89997666 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 683230788 1) .g) (.mul (.rational 580917972 1)
    .v)) .g) (.mul (.rational 122203592 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 270639984 1) .g) (.mul (.rational 285626824 1) .v)) .g) (.mul (.rational
    85918778 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 68433254
    1) .g) (.mul (.rational 84586242 1) .v)) .g) (.mul (.rational 33503583 1) (.pow .v 2))) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10653583 1) .g) (.mul (.rational 14960745
    1) .v)) .g) (.mul (.rational 7284294 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 931740 1) .g) (.mul (.rational 1520649 1) .v)) .g) (.mul (.rational
    876038 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 90856484 1) .f) (.add
    (.mul (.rational 420646637 1) .g) (.mul (.rational 86236492 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 838876068 1) .g) (.mul (.rational 362180580 1) .v)) .g) (.mul (.rational
    22380834 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 945765750 1) .g) (.mul
    (.rational 641092796 1) .v)) .g) (.mul (.rational 86960393 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 665101537 1) .g) (.mul (.rational 624352166 1) .v)) .g)
    (.mul (.rational 140051358 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 303480930 1) .g) (.mul (.rational 367050572 1) .v)) .g) (.mul (.rational 121624781
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 90391777 1) .g)
    (.mul (.rational 134953272 1) .v)) .g) (.mul (.rational 62401743 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 17148667 1) .g) (.mul (.rational 31263795 1)
    .v)) .g) (.mul (.rational 19734360 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1936248 1) .g) (.mul (.rational 4505419 1) .v)) .g) (.mul (.rational 3982439
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 111499 1) .g)
    (.mul (.rational 384341 1) .v)) .g) (.mul (.rational 528860 1) (.pow .v 2))) (.pow .g 7))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 41359665 1) .f) (.add (.mul (.rational 208667699 1)
    .g) (.mul (.rational 44801562 1) .v))) .f) (.add (.mul (.add (.mul (.rational 456569592 1) .g)
    (.mul (.rational 209085912 1) .v)) .g) (.mul (.rational 13458001 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 569254611 1) .g) (.mul (.rational 416421188 1) .v)) .g)
    (.mul (.rational 59549591 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    446925984 1) .g) (.mul (.rational 463547710 1) .v)) .g) (.mul (.rational 111566829 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 230361572 1) .g) (.mul
    (.rational 317848737 1) .v)) .g) (.mul (.rational 116003250 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 78718272 1) .g) (.mul (.rational 139909058 1) .v))
    .g) (.mul (.rational 74077528 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17518096 1) .g) (.mul (.rational 40126624 1) .v)) .g) (.mul (.rational 30607048 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2402805 1) .g) (.mul
    (.rational 7472399 1) .v)) .g) (.mul (.rational 8467770 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 178876 1) .g) (.mul (.rational 873991 1) .v)) .g)
    (.mul (.rational 1589053 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5166 1) .g) (.mul (.rational 57197 1) .v)) .g) (.mul (.rational 191096 1) (.pow .v
    2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12867892 1) .f)
    (.add (.mul (.rational 70257152 1) .g) (.mul (.rational 15852724 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 167287430 1) .g) (.mul (.rational 81478912 1) .v)) .g) (.mul (.rational
    5489617 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 228420651 1) .g) (.mul
    (.rational 180530966 1) .v)) .g) (.mul (.rational 27323608 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 197849079 1) .g) (.mul (.rational 226341454 1) .v)) .g)
    (.mul (.rational 58517343 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 113505957 1) .g) (.mul (.rational 177458349 1) .v)) .g) (.mul (.rational 70960119
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 43657599 1) .g)
    (.mul (.rational 90966617 1) .v)) .g) (.mul (.rational 54128412 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11104387 1) .g) (.mul (.rational 31046158 1) .v))
    .g) (.mul (.rational 27405343 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1781127 1) .g) (.mul (.rational 7051590 1) .v)) .g) (.mul (.rational 9490058 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 161064 1) .g) (.mul
    (.rational 1036631 1) .v)) .g) (.mul (.rational 2259524 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6084 1) .g) (.mul (.rational 89617 1) .v)) .g) (.mul
    (.rational 353416 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3362
    1) .v) .g) (.mul (.rational 31309 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2450898 1) .f) (.add (.mul (.rational 14396568 1) .g)
    (.mul (.rational 3421020 1) .v))) .f) (.add (.mul (.add (.mul (.rational 37050279 1) .g) (.mul
    (.rational 19213944 1) .v)) .g) (.mul (.rational 1358289 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 54961917 1) .g) (.mul (.rational 46904590 1) .v)) .g) (.mul
    (.rational 7519716 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 52022751
    1) .g) (.mul (.rational 65422704 1) .v)) .g) (.mul (.rational 18130460 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 32836902 1) .g) (.mul (.rational 57715548
    1) .v)) .g) (.mul (.rational 25100161 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14011735 1) .g) (.mul (.rational 33725921 1) .v)) .g) (.mul (.rational
    22194937 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3997059
    1) .g) (.mul (.rational 13309774 1) .v)) .g) (.mul (.rational 13219032 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 730323 1) .g) (.mul (.rational 3547932 1)
    .v)) .g) (.mul (.rational 5445974 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 77086 1) .g) (.mul (.rational 622126 1) .v)) .g) (.mul (.rational 1555017 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3546 1) .g) (.mul
    (.rational 65731 1) .v)) .g) (.mul (.rational 296062 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 3174 1) .v) .g) (.mul (.rational 33430 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 1634 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 215784 1) .f) (.add (.mul (.rational
    1356744 1) .g) (.mul (.rational 339864 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3752084
    1) .g) (.mul (.rational 2071560 1) .v)) .g) (.mul (.rational 153738 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6006696 1) .g) (.mul (.rational 5525292 1) .v)) .g)
    (.mul (.rational 937251 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    6164526 1) .g) (.mul (.rational 8485200 1) .v)) .g) (.mul (.rational 2511293 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4241320 1) .g) (.mul (.rational
    8313150 1) .v)) .g) (.mul (.rational 3902459 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1985026 1) .g) (.mul (.rational 5445606 1) .v)) .g) (.mul
    (.rational 3913089 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    625953 1) .g) (.mul (.rational 2432344 1) .v)) .g) (.mul (.rational 2667253 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 127781 1) .g) (.mul (.rational
    740510 1) .v)) .g) (.mul (.rational 1266283 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 15307 1) .g) (.mul (.rational 149580 1) .v)) .g) (.mul (.rational
    418802 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 819 1) .g)
    (.mul (.rational 18412 1) .v)) .g) (.mul (.rational 93164 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 1058 1) .v) .g) (.mul (.rational 12575 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 773 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0418

namespace FullHigh0419
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  16*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    9*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsHigh2.c410 e f g v*e*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_010_2 e g v+28*SmallGap.ReducedLayers.high0_010_3 e
    g v*e^1+84*SmallGap.ReducedLayers.high0_010_4 e g v*e^2+1*SmallGap.ReducedLayers.high0_001_1 e
    g v+8*SmallGap.ReducedLayers.high0_001_2 e g v*e^1+28*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_4 e g v+15*SmallGap.ReducedLayers.high1_020_5 e g
    v*e^1+30*SmallGap.ReducedLayers.high1_020_6 e g v*e^2+1*SmallGap.ReducedLayers.high1_011_3 e g
    v+6*SmallGap.ReducedLayers.high1_011_4 e g v*e^1+15*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 42481 1) .e) (.add (.mul (.rational
    359806 1) .f) (.add (.mul (.rational 439278 1) .g) (.mul (.rational 73052 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 1861017 1) .f) (.add (.mul (.rational 3081995 1) .g) (.mul
    (.rational 534612 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1842719 1) .g) (.mul
    (.rational 608108 1) .v)) .g) (.mul (.rational 32675 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 6536419 1) .f) (.add (.mul (.rational 13629722 1) .g) (.mul
    (.rational 2395674 1) .v))) .f) (.add (.mul (.add (.mul (.rational 10918353 1) .g) (.mul
    (.rational 3681200 1) .v)) .g) (.mul (.rational 212850 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4218397 1) .g) (.mul (.rational 1921432 1) .v)) .g) (.mul (.rational
    238465 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    16428331 1) .f) (.add (.mul (.rational 41208690 1) .g) (.mul (.rational 7309688 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 41275670 1) .g) (.mul (.rational 14162876 1) .v)) .g) (.mul
    (.rational 843853 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 21164815 1)
    .g) (.mul (.rational 9979304 1) .v)) .g) (.mul (.rational 1273657 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5876555 1) .g) (.mul (.rational 3103788 1) .v)) .g)
    (.mul (.rational 619303 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 30359400 1) .f) (.add (.mul (.rational 88834612 1)
    .g) (.mul (.rational 16000314 1) .v))) .f) (.add (.mul (.add (.mul (.rational 106540684 1) .g)
    (.mul (.rational 37521610 1) .v)) .g) (.mul (.rational 2269535 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 67866323 1) .g) (.mul (.rational 33484454 1) .v)) .g) (.mul
    (.rational 4330821 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 24804593
    1) .g) (.mul (.rational 14178800 1) .v)) .g) (.mul (.rational 2868158 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5196933 1) .g) (.mul (.rational 2868244
    1) .v)) .g) (.mul (.rational 743493 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 41735823 1) .f) (.add (.mul
    (.rational 139351271 1) .g) (.mul (.rational 25759362 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 194279792 1) .g) (.mul (.rational 71177362 1) .v)) .g) (.mul (.rational 4373978 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 147457084 1) .g) (.mul (.rational
    77409486 1) .v)) .g) (.mul (.rational 10204426 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 66523482 1) .g) (.mul (.rational 42042776 1) .v)) .g) (.mul (.rational
    8753016 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 18207690
    1) .g) (.mul (.rational 11898500 1) .v)) .g) (.mul (.rational 3292313 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2927675 1) .g) (.mul (.rational 1639394
    1) .v)) .g) (.mul (.rational 460458 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 42664098 1) .f)
    (.add (.mul (.rational 159878301 1) .g) (.mul (.rational 30692208 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 253624597 1) .g) (.mul (.rational 98027718 1) .v)) .g) (.mul (.rational
    6184508 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 222886338 1) .g) (.mul
    (.rational 126544812 1) .v)) .g) (.mul (.rational 17293340 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 119177862 1) .g) (.mul (.rational 84835786 1) .v)) .g)
    (.mul (.rational 18687961 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 40002320 1) .g) (.mul (.rational 31574542 1) .v)) .g) (.mul (.rational 9746017 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8341432 1) .g) (.mul
    (.rational 6454338 1) .v)) .g) (.mul (.rational 2465968 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1018271 1) .g) (.mul (.rational 663902 1) .v)) .g)
    (.mul (.rational 250811 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 32024520 1) .f)
    (.add (.mul (.rational 132970698 1) .g) (.mul (.rational 26795592 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 236167820 1) .g) (.mul (.rational 97454100 1) .v)) .g) (.mul (.rational
    6401336 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 235350094 1) .g) (.mul
    (.rational 146343156 1) .v)) .g) (.mul (.rational 21128704 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 145046224 1) .g) (.mul (.rational 117649900 1) .v)) .g)
    (.mul (.rational 28103374 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 57376060 1) .g) (.mul (.rational 55007254 1) .v)) .g) (.mul (.rational 19396666 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 14576273 1) .g) (.mul
    (.rational 15275944 1) .v)) .g) (.mul (.rational 7517782 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2291529 1) .g) (.mul (.rational 2487778 1) .v)) .g)
    (.mul (.rational 1699803 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 202336 1) .g) (.mul (.rational 227428 1) .v)) .g) (.mul (.rational 240378 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 17156820 1) .f) (.add (.mul (.rational
    78128430 1) .g) (.mul (.rational 16665432 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    153412200 1) .g) (.mul (.rational 68166408 1) .v)) .g) (.mul (.rational 4719996 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 170644434 1) .g) (.mul (.rational 117106116
    1) .v)) .g) (.mul (.rational 18118470 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 118777040 1) .g) (.mul (.rational 110252792 1) .v)) .g) (.mul (.rational 28953172
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 53880622 1) .g)
    (.mul (.rational 62417110 1) .v)) .g) (.mul (.rational 25214216 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 16036388 1) .g) (.mul (.rational 22056606 1) .v))
    .g) (.mul (.rational 13284681 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3052223 1) .g) (.mul (.rational 4932950 1) .v)) .g) (.mul (.rational 4520577 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 345185 1) .g) (.mul
    (.rational 697968 1) .v)) .g) (.mul (.rational 1049518 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 19505 1) .g) (.mul (.rational 59960 1) .v)) .g) (.mul
    (.rational 166463 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    6213360 1) .f) (.add (.mul (.rational 30773220 1) .g) (.mul (.rational 6987408 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 66134562 1) .g) (.mul (.rational 31800468 1) .v)) .g) (.mul
    (.rational 2339904 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 81102088 1)
    .g) (.mul (.rational 61615880 1) .v)) .g) (.mul (.rational 10290102 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 62779531 1) .g) (.mul (.rational 66595040 1) .v)) .g)
    (.mul (.rational 19288250 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32016201 1) .g) (.mul (.rational 44312238 1) .v)) .g) (.mul (.rational 20325712 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10868862 1) .g) (.mul
    (.rational 18989938 1) .v)) .g) (.mul (.rational 13460374 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2409980 1) .g) (.mul (.rational 5361594 1) .v)) .g)
    (.mul (.rational 5974176 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 328519 1) .g) (.mul (.rational 1004800 1) .v)) .g) (.mul (.rational 1846046 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 23843 1) .g) (.mul
    (.rational 121400 1) .v)) .g) (.mul (.rational 393523 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 618 1) .g) (.mul (.rational 8226 1) .v)) .g) (.mul
    (.rational 52403 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1363716 1) .f) (.add (.mul (.rational 7295130 1) .g) (.mul (.rational 1768608 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 17018274 1) .g) (.mul (.rational 8872380 1) .v))
    .g) (.mul (.rational 696096 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    22781940 1) .g) (.mul (.rational 19152348 1) .v)) .g) (.mul (.rational 3456756 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 19376676 1) .g) (.mul (.rational
    23369940 1) .v)) .g) (.mul (.rational 7439052 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10943383 1) .g) (.mul (.rational 17848160 1) .v)) .g) (.mul
    (.rational 9176490 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4156245 1) .g) (.mul (.rational 8955814 1) .v)) .g) (.mul (.rational 7259024 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1045954 1) .g) (.mul (.rational
    3027584 1) .v)) .g) (.mul (.rational 3911280 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 165517 1) .g) (.mul (.rational 694978 1) .v)) .g) (.mul
    (.rational 1478951 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    14524 1) .g) (.mul (.rational 105528 1) .v)) .g) (.mul (.rational 388881 1) (.pow .v 2)))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 503 1) .g) (.mul (.rational 9470 1)
    .v)) .g) (.mul (.rational 66242 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 354 1) .v) .g) (.mul (.rational 6160 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 137052 1) .f) (.add (.mul
    (.rational 787248 1) .g) (.mul (.rational 203976 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1979922 1) .g) (.mul (.rational 1118664 1) .v)) .g) (.mul (.rational 93564 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2870010 1) .g) (.mul (.rational 2662140
    1) .v)) .g) (.mul (.rational 517896 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2656296 1) .g) (.mul (.rational 3616800 1) .v)) .g) (.mul (.rational 1256784 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1641996 1) .g) (.mul
    (.rational 3111372 1) .v)) .g) (.mul (.rational 1769946 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 687576 1) .g) (.mul (.rational 1781424 1) .v)) .g)
    (.mul (.rational 1617066 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 192732 1) .g) (.mul (.rational 696240 1) .v)) .g) (.mul (.rational 1014888 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 34513 1) .g) (.mul
    (.rational 187020 1) .v)) .g) (.mul (.rational 449178 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3524 1) .g) (.mul (.rational 33686 1) .v)) .g) (.mul
    (.rational 139260 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    151 1) .g) (.mul (.rational 3688 1) .v)) .g) (.mul (.rational 28663 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 182 1) .v) .g) (.mul (.rational 3440 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 175 1) (.pow .v 2)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0419

namespace FullHigh04110
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  9*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_010_3 e g v+28*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^1+1*SmallGap.ReducedLayers.high0_001_2 e g v+8*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_5 e g v+15*SmallGap.ReducedLayers.high1_020_6 e g
    v*e^1+1*SmallGap.ReducedLayers.high1_011_4 e g v+6*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 8697 1) .e) (.add (.mul (.rational 72762 1) .f)
    (.add (.mul (.rational 88596 1) .g) (.mul (.rational 14730 1) .v)))) .e) (.add (.mul (.add
    (.mul (.rational 369336 1) .f) (.add (.mul (.rational 609143 1) .g) (.mul (.rational 104898 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 363996 1) .g) (.mul (.rational 116436 1) .v)) .g)
    (.mul (.rational 6565 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    1261581 1) .f) (.add (.mul (.rational 2615417 1) .g) (.mul (.rational 454278 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 2090387 1) .g) (.mul (.rational 677302 1) .v)) .g) (.mul
    (.rational 41436 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 810379 1) .g)
    (.mul (.rational 337492 1) .v)) .g) (.mul (.rational 45054 1) (.pow .v 2))) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3047139 1) .f) (.add (.mul (.rational
    7584374 1) .g) (.mul (.rational 1328292 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    7564739 1) .g) (.mul (.rational 2487060 1) .v)) .g) (.mul (.rational 157893 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3883953 1) .g) (.mul (.rational 1665108 1) .v))
    .g) (.mul (.rational 229694 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1088184 1) .g) (.mul (.rational 473402 1) .v)) .g) (.mul (.rational 104473 1) (.pow .v 2)))
    (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5327469 1) .f) (.add (.mul (.rational 15434558 1) .g) (.mul (.rational 2757510 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 18392080 1) .g) (.mul (.rational 6237310 1) .v)) .g) (.mul
    (.rational 405017 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 11703096 1)
    .g) (.mul (.rational 5286148 1) .v)) .g) (.mul (.rational 743332 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4305041 1) .g) (.mul (.rational 2054286 1) .v)) .g)
    (.mul (.rational 460684 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 916418 1) .g) (.mul (.rational 346024 1) .v)) .g) (.mul (.rational 101582 1) (.pow
    .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 6785625 1) .f) (.add (.mul (.rational 22378389 1) .g) (.mul (.rational
    4148688 1) .v))) .f) (.add (.mul (.add (.mul (.rational 30921318 1) .g) (.mul (.rational
    11060034 1) .v)) .g) (.mul (.rational 738708 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 23380728 1) .g) (.mul (.rational 11462302 1) .v)) .g) (.mul (.rational
    1665836 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10584932 1) .g)
    (.mul (.rational 5785780 1) .v)) .g) (.mul (.rational 1359101 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2934278 1) .g) (.mul (.rational 1430916 1) .v))
    .g) (.mul (.rational 465316 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 482769 1) .g) (.mul (.rational 137104 1) .v)) .g) (.mul (.rational 46983 1) (.pow
    .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 6243978 1) .f) (.add (.mul (.rational 23050302 1) .g) (.mul
    (.rational 4513194 1) .v))) .f) (.add (.mul (.add (.mul (.rational 36137817 1) .g) (.mul
    (.rational 13930140 1) .v)) .g) (.mul (.rational 974669 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 31541067 1) .g) (.mul (.rational 17232208 1) .v)) .g) (.mul
    (.rational 2662992 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16866580
    1) .g) (.mul (.rational 10907288 1) .v)) .g) (.mul (.rational 2807949 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5712388 1) .g) (.mul (.rational 3721094
    1) .v)) .g) (.mul (.rational 1431682 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1213817 1) .g) (.mul (.rational 648622 1) .v)) .g) (.mul (.rational
    361845 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 152299 1)
    .g) (.mul (.rational 42962 1) .v)) .g) (.mul (.rational 42612 1) (.pow .v 2))) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 4045509 1) .f) (.add (.mul (.rational 16499970 1) .g) (.mul (.rational
    3463146 1) .v))) .f) (.add (.mul (.add (.mul (.rational 28870215 1) .g) (.mul (.rational
    12196200 1) .v)) .g) (.mul (.rational 912858 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 28472360 1) .g) (.mul (.rational 17649190 1) .v)) .g) (.mul (.rational
    2979972 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17478786 1) .g)
    (.mul (.rational 13583192 1) .v)) .g) (.mul (.rational 3957744 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6944732 1) .g) (.mul (.rational 6026062 1) .v))
    .g) (.mul (.rational 2791140 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1788410 1) .g) (.mul (.rational 1571340 1) .v)) .g) (.mul (.rational 1166573 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 287075 1) .g) (.mul
    (.rational 238158 1) .v)) .g) (.mul (.rational 316454 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 25865 1) .g) (.mul (.rational 20110 1) .v)) .g) (.mul
    (.rational 60283 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1750986 1) .f)
    (.add (.mul (.rational 7808019 1) .g) (.mul (.rational 1775100 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 15050472 1) .g) (.mul (.rational 7041294 1) .v)) .g) (.mul (.rational 572622
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 16500223 1) .g) (.mul
    (.rational 11705396 1) .v)) .g) (.mul (.rational 2194908 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 11386083 1) .g) (.mul (.rational 10650190 1) .v)) .g) (.mul
    (.rational 3553770 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5159273 1) .g) (.mul (.rational 5837830 1) .v)) .g) (.mul (.rational 3222396 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1546168 1) .g) (.mul (.rational
    2019088 1) .v)) .g) (.mul (.rational 1850661 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 297861 1) .g) (.mul (.rational 455256 1) .v)) .g) (.mul
    (.rational 727984 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    33911 1) .g) (.mul (.rational 68420 1) .v)) .g) (.mul (.rational 202286 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1844 1) .g) (.mul (.rational 6526 1) .v))
    .g) (.mul (.rational 37262 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 454410 1) .f) (.add (.mul (.rational 2196558 1) .g) (.mul (.rational 543996 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 4615821 1) .g) (.mul (.rational 2402460 1) .v))
    .g) (.mul (.rational 213840 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5553180 1) .g) (.mul (.rational 4513698 1) .v)) .g) (.mul (.rational 944460 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4238190 1) .g) (.mul (.rational 4736940 1)
    .v)) .g) (.mul (.rational 1805682 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2144725 1) .g) (.mul (.rational 3079670 1) .v)) .g) (.mul (.rational 1989828
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 727131 1) .g)
    (.mul (.rational 1310410 1) .v)) .g) (.mul (.rational 1427028 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 161408 1) .g) (.mul (.rational 378916 1) .v)) .g)
    (.mul (.rational 711484 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21783 1) .g) (.mul (.rational 75704 1) .v)) .g) (.mul (.rational 251453 1) (.pow .v
    2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1479 1) .g) (.mul (.rational
    9936 1) .v)) .g) (.mul (.rational 60376 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25 1) .g) (.mul (.rational 692 1) .v)) .g) (.mul (.rational 8736 1)
    (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 53460 1)
    .f) (.add (.mul (.rational 278154 1) .g) (.mul (.rational 75168 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 631764 1) .g) (.mul (.rational 365796 1) .v)) .g) (.mul (.rational 35640 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 825375 1) .g) (.mul (.rational
    765672 1) .v)) .g) (.mul (.rational 178200 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 687780 1) .g) (.mul (.rational 907830 1) .v)) .g) (.mul (.rational 391638 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 382481 1) .g) (.mul
    (.rational 678382 1) .v)) .g) (.mul (.rational 503832 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 143673 1) .g) (.mul (.rational 338138 1) .v)) .g) (.mul
    (.rational 426841 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    35732 1) .g) (.mul (.rational 116416 1) .v)) .g) (.mul (.rational 252612 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5493 1) .g) (.mul (.rational 27926
    1) .v)) .g) (.mul (.rational 106153 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 438 1) .g) (.mul (.rational 4428 1) .v)) .g) (.mul (.rational 30702 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10 1) .g) (.mul (.rational
    386 1) .v)) .g) (.mul (.rational 5589 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 10 1) .v) .g) (.mul (.rational 530 1) (.pow .v 2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh04110

namespace FullHigh04111
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  5*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_010_4 e g v+1*SmallGap.ReducedLayers.high0_001_3 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_6 e g v+1*SmallGap.ReducedLayers.high1_011_5 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 810 1) .e) (.add (.mul (.rational 6705 1) .f) (.add (.mul
    (.rational 8145 1) .g) (.mul (.rational 1350 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    33435 1) .f) (.add (.mul (.rational 54930 1) .g) (.mul (.rational 9360 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 32835 1) .g) (.mul (.rational 10110 1) .v)) .g) (.mul (.rational
    600 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 111060 1) .f) (.add
    (.mul (.rational 228900 1) .g) (.mul (.rational 39150 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 182700 1) .g) (.mul (.rational 56370 1) .v)) .g) (.mul (.rational 3675 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 71220 1) .g) (.mul (.rational 26520 1) .v))
    .g) (.mul (.rational 3870 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 257265 1) .f) (.add (.mul (.rational 635100 1) .g) (.mul (.rational 109530 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 631260 1) .g) (.mul (.rational 196950 1) .v)) .g)
    (.mul (.rational 13470 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 325290
    1) .g) (.mul (.rational 123570 1) .v)) .g) (.mul (.rational 18825 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 92355 1) .g) (.mul (.rational 30720 1) .v)) .g) (.mul
    (.rational 7920 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 423270 1) .f) (.add (.mul (.rational 1212840 1) .g) (.mul
    (.rational 215100 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1436580 1) .g) (.mul
    (.rational 466200 1) .v)) .g) (.mul (.rational 33000 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 915390 1) .g) (.mul (.rational 370290 1) .v)) .g) (.mul (.rational
    58140 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 340590 1) .g) (.mul
    (.rational 127050 1) .v)) .g) (.mul (.rational 33525 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 74220 1) .g) (.mul (.rational 14460 1) .v)) .g) (.mul
    (.rational 5970 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 493920 1) .f) (.add (.mul (.rational 1605690 1) .g)
    (.mul (.rational 300780 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2198655 1) .g) (.mul
    (.rational 769140 1) .v)) .g) (.mul (.rational 57120 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1660320 1) .g) (.mul (.rational 752550 1) .v)) .g) (.mul (.rational
    124980 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 758580 1) .g) (.mul
    (.rational 345330 1) .v)) .g) (.mul (.rational 98070 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 214950 1) .g) (.mul (.rational 68430 1) .v)) .g) (.mul
    (.rational 31575 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    36645 1) .g) (.mul (.rational 900 1) .v)) .g) (.mul (.rational 2640 1) (.pow .v 2))) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 400140 1) .f) (.add (.mul (.rational 1450350 1) .g) (.mul (.rational 294660 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 2245050 1) .g) (.mul (.rational 874800 1) .v))
    .g) (.mul (.rational 70290 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1950480 1) .g) (.mul (.rational 1032480 1) .v)) .g) (.mul (.rational 189720 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1049700 1) .g) (.mul (.rational 614040 1)
    .v)) .g) (.mul (.rational 200460 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 362670 1) .g) (.mul (.rational 190230 1) .v)) .g) (.mul (.rational 106560 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 79770 1) .g) (.mul
    (.rational 27030 1) .v)) .g) (.mul (.rational 31575 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10500 1) .g) (.mul (.rational 360 1) .v)) .g) (.mul
    (.rational 5970 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 214110 1) .f) (.add (.mul
    (.rational 853380 1) .g) (.mul (.rational 192060 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1467720 1) .g) (.mul (.rational 652140 1) .v)) .g) (.mul (.rational 58500 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1434990 1) .g) (.mul (.rational 908700
    1) .v)) .g) (.mul (.rational 191790 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 883425 1) .g) (.mul (.rational 673920 1) .v)) .g) (.mul (.rational 262560 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 357060 1) .g) (.mul
    (.rational 290610 1) .v)) .g) (.mul (.rational 200460 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 94980 1) .g) (.mul (.rational 76230 1) .v)) .g) (.mul
    (.rational 98070 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    15960 1) .g) (.mul (.rational 12810 1) .v)) .g) (.mul (.rational 33525 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1515 1) .g) (.mul (.rational 1440 1) .v))
    .g) (.mul (.rational 7920 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 68040
    1) .f) (.add (.mul (.rational 294840 1) .g) (.mul (.rational 74520 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 555660 1) .g) (.mul (.rational 285120 1) .v)) .g) (.mul (.rational
    29160 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 600930 1) .g) (.mul
    (.rational 458820 1) .v)) .g) (.mul (.rational 113400 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 414000 1) .g) (.mul (.rational 408240 1) .v)) .g) (.mul
    (.rational 191790 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    190080 1) .g) (.mul (.rational 224460 1) .v)) .g) (.mul (.rational 189720 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 58620 1) .g) (.mul (.rational 82320
    1) .v)) .g) (.mul (.rational 124980 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11760 1) .g) (.mul (.rational 21570 1) .v)) .g) (.mul (.rational 58140 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1395 1) .g) (.mul
    (.rational 4110 1) .v)) .g) (.mul (.rational 18825 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 75 1) .g) (.mul (.rational 510 1) .v)) .g) (.mul (.rational
    3870 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9720 1) .f) (.add
    (.mul (.rational 45360 1) .g) (.mul (.rational 12960 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 92610 1) .g) (.mul (.rational 55080 1) .v)) .g) (.mul (.rational 6480 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 109260 1) .g) (.mul (.rational 100260 1)
    .v)) .g) (.mul (.rational 29160 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 82800 1) .g) (.mul (.rational 103500 1) .v)) .g) (.mul (.rational 58500 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 42240 1) .g) (.mul (.rational
    68280 1) .v)) .g) (.mul (.rational 70290 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14655 1) .g) (.mul (.rational 31140 1) .v)) .g) (.mul (.rational 57120
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3360 1) .g) (.mul
    (.rational 10350 1) .v)) .g) (.mul (.rational 33000 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 465 1) .g) (.mul (.rational 2490 1) .v)) .g) (.mul
    (.rational 13470 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    30 1) .g) (.mul (.rational 390 1) .v)) .g) (.mul (.rational 3675 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.mul (.rational 30 1) .v) .g) (.mul (.rational 600 1) (.pow .v
    2))) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh04111

end
end SPR.N6.Tail.CoreEndpoint
