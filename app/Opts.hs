

module Opts
    ( Actions(..)
    , opts
    , execParser
    , parseOpts
    ) where


import           Data.Monoid
import           Options.Applicative
import           Options.Applicative.Text

import           Types


outputOpt :: Parser FilePath
outputOpt = strOption (  short 'o' <> long "output" <> metavar "OUTPUT_FILE"
                      <> help "The file to write back to.")

inputOpt :: Parser FilePath
inputOpt = strOption (  short 'i' <> long "input" <> metavar "INPUT_FILE"
                     <> help "The input file to process.")

pressOpts :: Parser Actions
pressOpts
  = Press
  <$> textOption (  short 't' <> long "title" <> metavar "TITLE"
                 <> help "The title for the epub output."
                 )
  <*> textOption (  short 'd' <> long "description" <> metavar "DESCRIPTION"
                 <> help "The description for the epub output."
                 )
  <*> outputOpt
  <*> inputOpt

{-
 -opts' :: Parser Actions
 -opts' = subparser
 -      (  command "default" (info (helper <*> defaultOpts)
 -                          (progDesc "Default action and options."))
 -      )
 -}

opts :: ParserInfo Actions
opts = info (helper <*> pressOpts)
            (  fullDesc
            <> progDesc "TODO description"
            <> header "press - Download and scrape articles into epubs")

parseOpts :: IO Actions
parseOpts = execParser opts
