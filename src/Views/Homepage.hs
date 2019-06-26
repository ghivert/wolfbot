{-# LANGUAGE OverloadedStrings #-}
module Views.Homepage (homepage) where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A
import Views.Root

homepage :: Html
homepage = root "Wolfbot" homeBody

homeBody :: Html
homeBody = mainPage "Bienvenue"
