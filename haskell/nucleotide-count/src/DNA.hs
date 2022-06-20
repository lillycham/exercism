module DNA (nucleotideCounts, Nucleotide(..)) where

import Data.Map (Map)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show)

isNucleotide xs = case x of
										'G' -> True
                		'C' -> True
                		'T' -> True
                		'A' -> True
                		 _  -> False

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts xs = 
