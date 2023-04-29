{-# LANGUAGE OverloadedStrings #-}
module BondPricer (bondpricer) where
import Web.Scotty



bondpricer :: IO ()
bondpricer =
  scotty 3000 $
    post "/pricer" $ do
      fixedOrVariable <- param "fixedOrVariable"
      html ("<h1>" <> fixedOrVariable <> "</h1>")
