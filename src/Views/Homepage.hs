{-# LANGUAGE OverloadedStrings #-}
module Views.Homepage (homepage) where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A
import Text.Blaze.Html.Renderer.Text
import Clay (Css, render)
import Data.Text.Lazy

homepage :: Css -> Html
homepage stylesheet = docTypeHtml $ do
  H.head $ do
    H.title "Wolfbot"
    H.style $ text $ toStrict $ render stylesheet
  H.body $
    H.div ! class_ "background" $
      H.div ! class_ "login" $ do
        H.img
          ! src "https://ikigai.network/static/media/logo.02f82ce4.png"
          ! alt "Ikigai Logo"
        H.h1 ! class_ "title" $ "Bienvenue"
        H.h2 ! class_ "introduction" $ "Bienvenue sur le Wolfbot."
