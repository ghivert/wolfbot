{-# LANGUAGE OverloadedStrings #-}
module Database where

import Database.PostgreSQL.Simple

connectionInfo :: ConnectInfo
connectionInfo = defaultConnectInfo
  { connectUser = "doctor"
  , connectDatabase = "wolfbot"
  }

connectToDB :: IO Connection
connectToDB = connect connectionInfo
