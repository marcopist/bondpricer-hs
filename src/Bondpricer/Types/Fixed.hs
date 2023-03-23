module Bondpricer.Types.Fixed where

import Bondpricer.Bond
import Data.Time

instance Bond FixedBond where
    cshf Full b = let
        nmonths = 12 `div` freq b
        infcpndts =  map (\n -> addGregorianMonthsClip n $ firstcpn b) [1..]
        cpndts = takeWhile (\d -> (diffDays d $ maturity b) <= 0) infcpndts
        in zip cpndts $ repeat $ cpn b `div` freq b

data FixedBond = FixedBond {intacc :: Day
                           , maturity :: Day
                           , firstcpn :: Day
                           , cpn :: Float
                           , freq :: Int
                           } deriving Show