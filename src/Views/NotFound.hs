{-# LANGUAGE OverloadedStrings #-}
module Views.NotFound (notFound) where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A
import Views.Root

notFound :: Html
notFound = root "Wolfbot" notFoundBody

notFoundBody :: Html
notFoundBody = mainPage "Page not found"
