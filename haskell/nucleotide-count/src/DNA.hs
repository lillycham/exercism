module DNA (nucleotideCounts, Nucleotide(..)) where

import Data.Map (Map)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show)
nucleotides :: [Nucleotide]
nucleotides = [A, C, G, T]

asNucleotide :: Char -> Either String Nucleotide
asNucleotide xcx = case xcx of
									 'G' -> Right G
                	 'C' -> Right C
                	 'T' -> Right T
                	 'A' -> Right A
                	  _  -> Left "error"

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts xs = case (traverse asNucleotide xs) of
