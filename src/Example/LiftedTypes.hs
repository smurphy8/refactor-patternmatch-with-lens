{-# LANGUAGE OverloadedStrings #-}



{- |
Module      :  Example.LiftedTypes
Description :   Lifted Types to make state machine functions more type safe
Copyright   :  (c) Plow Technologies
License     :  MIT License
Maintainer  :  Scott Murphy
Stability   :  unstable 
Portability :   non-portable (System.Posix)


-}



module Example.LiftedTypes (
  Alive (..) ,
  Dead (..) ,
  OnScreen (..) ,
  OffScreen (..) ,
  Haunting (..) ,
  Happy (..) 

  
                     ) where 



data Status a s g  = Status { 
   alive :: a ,
   onScreen :: s,
   ghost :: g
} deriving (Eq, Ord, Show)     


data Alive  = Alive deriving (Eq, Ord, Show, Bounded, Enum)
data Dead  = Dead deriving (Eq, Ord, Show, Bounded, Enum)

data OnScreen = OnScreen deriving (Eq, Ord, Show, Bounded, Enum)
data OffScreen = OffScreen deriving (Eq, Ord, Show, Bounded, Enum)

data  Haunting = Haunting deriving (Eq, Ord, Show, Bounded, Enum) 
data  Happy = Happy deriving (Eq, Ord, Show, Bounded, Enum) 
    





