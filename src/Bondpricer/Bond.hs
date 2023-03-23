module Bondpricer.Bond where

import Data.Time

monthsPerYear = 12.0 :: Float

type Cashflow = [(Day, Float)]

data CshfType = Full | Settle Day
        
class Bond b where
    cshf :: CshfType -> b -> Cashflow

addMonths :: Int -> Day -> Day
addMonths n day = addGregorianMonthsClip (fromIntegral n) day
