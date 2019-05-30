{-# LANGUAGE OverloadedStrings #-}
module Views.Homepage (homepage) where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A
import Views.Root

homepage :: Html
homepage = root "Wolfbot" homeBody

homeBody :: Html
homeBody = H.body $
  H.div ! class_ "background" $
    H.div ! class_ "login" $ do
      H.img
        ! src "/wolfox.svg"
        ! alt "Ikigai Logo"
      H.h1 ! class_ "title" $ "Bienvenue"
      H.div ! class_ "google-log-in" $ do
        H.img ! src "/google.svg"
        H.text "Google Sign-In"
