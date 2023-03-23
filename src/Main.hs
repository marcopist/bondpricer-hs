module Main (main) where

import Bondpricer.Bond
import Bondpricer.Types.Fixed
import Data.Time

ibm7 = FixedBond {
    intacc = fromGregorian 1995 1 1,
    maturity = fromGregorian 2025 7 1,
    firstcpn = fromGregorian 1995 7 1,
    cpn = 7,
    freq = 2
}


main :: IO ()
main = do
  print $ cshf Full ibm7
