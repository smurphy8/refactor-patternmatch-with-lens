{-# LANGUAGE OverloadedStrings #-}



{- |
Module      :  Example.InitTypes
Description :   Init types before refactor
Copyright   :  (c) Plow Technologies
License     :  MIT License
Maintainer  :  Scott Murphy
Stability   :  unstable 
Portability :   non-portable (System.Posix)


-}



module Example.InitTypes (
  LifeStatus (..) ,

  ScreenStatus (..) ,

  GhostStatus (..) ,

  Position (..) 
                     ) where 




data LifeStatus = Alive | Dead deriving (Eq, Show)

data ScreenStatus = OnScreen | OffScreen deriving (Eq, Show)

data GhostStatus = Haunting | Happy deriving (Eq, Show) 

data Position = Origin | PosPair Double Double 
