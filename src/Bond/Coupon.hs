module Bond.Coupon where

import Data.Time (Day)
import Bond.Utils (Frequence)

type Benchmark =  String
type Spread =  Double
type Rate = Double 


type ResetFrequence = Frequence

data FixedCoupon = FixedCoupon {
  fixedRate :: Rate
}

data FloaterCoupon = FloaterCoupon {
  benchmark :: Benchmark,
  spread :: Spread,
  resetFrequence :: ResetFrequence
}

data Coupon = Fixed FixedCoupon | Floater FloaterCoupon