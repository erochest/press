{-# LANGUAGE OverloadedLists   #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}


module Actions where


import           Control.Error

import           Press.Actions.Press

import           Types


action :: Actions -> Script ()

action Press{..} = pressFile pressTitle pressDescription pressInput pressOutput
