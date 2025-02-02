
module Lexer where 

import Token
import Data.Char(isAlpha, isSpace)

tokenize :: String -> [Token]
tokenize [] = []
tokenize (c:cs) 
    | isSpace c = tokenize cs  -- Ignore any spaces 
    | isAlpha c = let (word, rest) = span isAlpha (c:cs) -- 
    | c == '='  = Equals : tokenize cs -- Match the '=' sign 
    | c == '+'  = Addition : tokenize cs -- Match the '+' sign
    | c == '-'  = Subtraction : tokenize cs -- Match the '-' sign
    | c == '/'  = Division : tokenize cs -- Match the '/' sign
    | c == '*'  = Multiplication : tokenize cs -- Match the '*' sign
    | 
    | otherwise = InvalidInput [c] : tokenize cs -- Temporary default case 

