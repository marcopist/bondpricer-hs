module Bond.Bond where
import Bond.Coupon (Coupon(..), fixedRate, FixedCoupon(..))
import Data.Time (Day)

type InterestAccrual = Day
type FirstCoupon = Day

type Maturity = Day

data MaturityType = Maturity Maturity | Perpetual

data Bond = Bond {
  interestAccrual :: InterestAccrual,
  firstCoupon :: FirstCoupon,
  couponType :: Coupon,
  maturityType :: MaturityType
}

ibm7 = Bond {
  interestAccrual = read "2017-01-01",
  firstCoupon = read "2017-07-01",
  couponType = Fixed FixedCoupon {
    fixedRate = 7
  },
  maturityType = Maturity $ read "2025-01-01"
}