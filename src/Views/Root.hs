{-# LANGUAGE OverloadedStrings #-}
module Views.Root (root, mainPage) where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A
import Text.Blaze.Html.Renderer.Text
import Data.Text

root :: Text -> Html -> Html
root title body = docTypeHtml $ do
  H.head $ do
    H.title $ text title
    H.link ! href "/styles/normalize.css" ! rel "stylesheet"
    H.link ! href "/styles/main.css" ! rel "stylesheet"
  H.body $ H.main body

mainPage :: Html -> Html
mainPage title = H.body $
  H.div ! class_ "background" $
    H.div ! class_ "login" $ do
      H.img
        ! src "/wolfox.svg"
        ! alt "Wolfox Logo"
      H.h1 ! class_ "title" $ title
      H.a ! href "/login" ! class_ "google-log-in-wrapper" $
        H.div ! class_ "google-log-in" $ do
          H.img ! src "/google.svg"
          H.text "Google Sign-In"
