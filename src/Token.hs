
module Token where 

import qualified Data.Set as Set 

{- 
	A token represents a multitude of text in the language, more so : 
	
	- Identifier (Typically user defined variables, names, function names etc)
	- Reserved keywords (In built keywords, int, bool, for, for etc)
	- Equals (Equality operator "=")
	- Addition (Addition operator "+")
	- Multiplication (Multiplication operator "*")
	- Division (Division operator "/")
	- EOF (Mark the end of the file)

-}

data Token = Identifier String
           | Reserved String 
           | Equals 
           | Addition
           | Subtraction
           | Multiplication
           | Division 
           | EOF
           | InvalidInput String -- For errors 
           deriving (Show, Eq)

-- Using a Set for O(1) lookup 
reservedKeywords :: Set.Set String
reservedKeywords = Set.fromList ["Int", "if", "else", "for", "while", "return", "throw"]


