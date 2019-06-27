{-# LANGUAGE OverloadedStrings #-}
module Models.User where

import Database.PostgreSQL.Simple

data User = User
  { refreshToken :: String
  , accessToken :: String
  }

user :: Connection -> IO Int
user conn = do
  [Only i] <- query_ conn "select 2 + 2"
  return i
