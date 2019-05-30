{-# LANGUAGE OverloadedStrings #-}
module Main where

import Web.Scotty (scotty, get, html, notFound, status, text)
import Text.Blaze.Html.Renderer.Text
import Network.HTTP.Types.Status

import Views.Homepage
import Styles.Stylesheet

main :: IO ()
main = scotty 5000 $ do
  get "/" $ html $ renderHtml $ homepage mainStylesheet
  notFound $ do
    status notFound404
    text "404 Page Not Found"
