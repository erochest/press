module Types where


import qualified Data.Text as T


data Actions
  = Press
    { pressTitle       :: !T.Text
    , pressDescription :: !T.Text
    , pressOutput      :: !FilePath
    , pressInput       :: !FilePath
    } deriving (Show, Eq)
