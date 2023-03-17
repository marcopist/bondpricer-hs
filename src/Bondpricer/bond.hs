import Data.Time

data FixedBond = FixedBond { intacc :: Day 
                            , maturity :: Day
                            , firstcpn :: Day
                            , cpn :: Float
                            , freq :: Int
                            } deriving(Show)

cshf :: FixedBond -> [(Day, Float)]
cshf bond = [(maturity bond, 100)]