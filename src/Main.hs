{-# LANGUAGE OverloadedStrings #-}
module Main where

import Web.Scotty (scotty, get, html, notFound, status, text, middleware)
import Text.Read (readMaybe)
import Text.Blaze.Html.Renderer.Text
import Network.HTTP.Types.Status
import Network.Wai.Middleware.Static
import System.Environment
import Views.Homepage
import qualified Views.NotFound as NotFound

startServer :: Int -> IO ()
startServer port = scotty port $ do
  middleware $ staticPolicy (addBase "public")
  get "/" $ html $ renderHtml homepage
  notFound $ do
    status notFound404
    html $ renderHtml NotFound.notFound

errorMessage :: String -> IO ()
errorMessage = putStrLn . (++) "Unable to start the server on port: "

main :: IO ()
main = do
  stringPort <- getEnv "PORT"
  let printError = errorMessage stringPort
      port = readMaybe stringPort in
    maybe printError startServer port
