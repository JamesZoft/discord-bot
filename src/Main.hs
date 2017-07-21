{-# LANGUAGE OverloadedStrings #-}

import Data.Maybe

import Network.URL
import Pipes.Core

import Network.Discord.Types
import Network.Discord.Gateway
import Network.Discord.Rest

data LogClient = LClient
instance Client LogClient where
  getAuth _ = Bot "MzM4MDE2ODIyNTU5NTA2NDMz.DFPSQQ.sHzd9kjiUpQJ-yEyXVBMPuJU0YM"

main :: IO ()
main = runWebsocket (fromJust $ importURL "wss://gateway.discord.gg") LClient $ do
  fetch' (CreateMessage 188134500411244545 "Hello, World!" Nothing)
  fetch' (CreateMessage 188134500411244545 "I'm running discord.hs!" Nothing)