import Data.Time

type Cashflow = [(Day, Float)]

class Bond b where
    fcshf :: b -> Cashflow -- Full cashflow
    tcshf :: b -> Cashflow -- True cashflow (bumped)
    cshf :: Day -> b -> Cashflow -- Cashflow after settlement dt
    npv :: Day ->  Float -> b -> Float -- Net present value given sett & yield
    yield :: Day -> Float  -> b -> Float -- Yield given sett & px
    ai :: Day -> b -> Float -- Accrued interest
    cshf sett b = filter (\(d, _) -> d > sett) $ fcshf b

instance Bond FixedBond where
        fcshf b = [(maturity b, 100)]

data FixedBond = FixedBond {intacc :: Day 
                            , maturity :: Day
                            , firstcpn :: Day
                            , cpn :: Float
                            , freq :: Int
                            } deriving Show

ibm7 = FixedBond {
    intacc = fromGregorian 1995 1 1,
    maturity = fromGregorian 2025 7 1,
    firstcpn = fromGregorian 1995 7 1,
    cpn = 7,
    freq = 2
}