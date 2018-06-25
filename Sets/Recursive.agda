module Sets.Recursive where

open import Sets.Enumerated using (Bool; true; false)

data ℕ : Set where
  zero : ℕ
  suc : ℕ → ℕ

-- yields the ∞ set of judgements
{- 
 ℕ : Set
 zero : ℕ
 suc ( zero ) : ℕ
 suc ( suc (zero ) ) : ℕ
....
-}

data ℕ⁺ : Set where
  one : ℕ⁺
  double : ℕ⁺ → ℕ⁺
  double+1 : ℕ⁺ → ℕ⁺
 
--yields ( without ordering)
{- 
 ℕ⁺ : Set
 one : ℕ⁺
 double one : 
 double+1 one
 double ( double one)
 double ( double+1 one)
 double+1 (double one)
...
-}

data ℕ₂ : Set where
  zero' : ℕ₂
  id : ℕ⁺ → ℕ₂

-- yields
{- 
  ℕ₂ : Set
  zero : 
  id one
  id ( double one)
  id ( double+1 one)
 id ( double ( double one))
...
-}

-- claim: ℕ and ℕ₂ are isomorphic (under given correspondence)

-- 9 represented in ℕ₂
--?



data test : Set where
  a : test

data test' : Set where
 a : test'

-- what is the type of 'a' ?   C-c C-d

--shape of binary tree , no data
data BinTree : Set where
  leaf : BinTree
  node : BinTree → BinTree → BinTree

-- proof theoretic or combinatorial analysis of inductive structures?
-- language or grammer to classify their complexity?

-- what level of grammar (regular, context free, turing, ...) to represent structures generated?
-- the possible abstract syntax trees?

-- data at root
data natBinTree  : Set where
  nleaf  : ℕ →  natBinTree
  nnode : natBinTree → natBinTree → natBinTree
  
-- data at nodes
data natBinTree' : Set where
 nnleaf :  natBinTree'
 nnnode : ℕ → natBinTree' → natBinTree' → natBinTree' 


data boolnat : Set where
  bnleaf : ℕ → boolnat
  bnnode : Bool → boolnat → boolnat → boolnat

data nlists : Set where
  nil : nlists
  cons : ℕ → nlists → nlists

