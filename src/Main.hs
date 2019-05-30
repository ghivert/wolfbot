{-# LANGUAGE OverloadedStrings #-}
module Main where

import Web.Scotty (scotty, get, html, notFound, status, text, middleware)
import Text.Blaze.Html.Renderer.Text
import Network.HTTP.Types.Status
import Network.Wai.Middleware.Static
import Views.Homepage

main :: IO ()
main = scotty 5000 $ do
  middleware $ staticPolicy (addBase "public")
  get "/" $ html $ renderHtml homepage
  notFound $ do
    status notFound404
    text "404 Page Not Found"
