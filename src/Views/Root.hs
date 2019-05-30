{-# LANGUAGE OverloadedStrings #-}
module Views.Root (root) where

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
