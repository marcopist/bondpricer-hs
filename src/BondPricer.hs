{-# LANGUAGE OverloadedStrings #-}
module BondPricer (bondpricer) where
import Web.Scotty


bondpricer :: IO ()
bondpricer =
  scotty 3000 $
    get "/" $
      html "<h1>Hello Marco</h1>"
