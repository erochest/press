{-# LANGUAGE OverloadedStrings #-}


module Press.Actions.Press where


import           Control.Error
import qualified Data.Text     as T

-- import           Press.Types


pressFile :: T.Text -> T.Text -> FilePath -> FilePath -> Script ()
pressFile _title _description _input _output = undefined
