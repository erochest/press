{-# LANGUAGE DeriveDataTypeable     #-}
{-# LANGUAGE DeriveGeneric          #-}
{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
{-# LANGUAGE RankNTypes             #-}
{-# LANGUAGE TemplateHaskell        #-}
-- {-# LANGUAGE DeriveFunctor              #-}
-- {-# LANGUAGE DeriveTraversable          #-}
-- {-# LANGUAGE GeneralizedNewtypeDeriving #-}
-- {-# LANGUAGE OverloadedLists            #-}
-- {-# LANGUAGE OverloadedStrings          #-}
-- {-# LANGUAGE RecordWildCards            #-}


module Press.Types where


import           Control.Lens
import           Data.Data
import           GHC.Generics hiding (to)
-- import qualified Data.Text              as T


data MediumResponse a
  = MediumResponse
    { _mrSuccess :: !Bool
    , _mrV       :: !Int
    , _mrPayload :: !a
    } deriving (Show, Eq, Data, Typeable, Generic)
$(makeClassy ''MediumResponse)
