{-# LANGUAGE OverloadedStrings #-}



{- |
Module      :  Example.Types
Description :   Types for demonstrating using Prisms and to do clean nested pattern matching
Copyright   :  (c) Plow Technologies
License     :  MIT License
Maintainer  :  Scott Murphy
Stability   :  unstable 
Portability :   non-portable (System.Posix)


-}

module Example.Types (
  Character (..),
  Status    (..),
  Name      (..),
  Age       (..),
  Rank      (..)
                     ) where 

data Character a s g p  = Character {
    name :: Name,
    age ::  Age ,
    rank :: Rank , 
    status :: Status a s g p
} deriving (Eq,Ord,Show)





data Status a s g p = Status { 
   alive :: a ,
   onScreen :: s,
   ghost :: g,
   position :: p
   
} deriving (Eq, Ord, Show)     




newtype Name = Name { unName :: String } deriving   (Eq, Ord, Show)

newtype Age = Age { unAge :: String } deriving    (Eq, Ord, Show)

newtype Rank = Rank { unRank :: String } deriving     (Eq, Ord, Show)
