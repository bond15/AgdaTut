module Sets.Enumerated where

data Bool : Set where
  true : Bool
  false : Bool

-- true and false are value constructors 

data Answer : Set where
  yes : Answer
  no : Answer
  maybe : Answer

data Direction : Set where
  east : Direction
  west : Direction
  north : Direction
  south : Direction


data Bool' : Set where
  true' : Bool'
  false' : Bool'
 
-- Bool and Bool' are definitionally different but essentially the same
-- 2 different representations for the same interpretation (the set of booleans)


--special finite sets
data ⊥ : Set where -- no constructor

data ⊤ : Set where
  tt : ⊤


data name : Set where
  e1 e2 e3 e4 : name
 
