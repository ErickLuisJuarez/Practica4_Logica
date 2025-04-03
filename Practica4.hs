module Practica04 where

-- Práctica 04: Algoritmo DPLL

-- 3. Desarrollo de la Práctica

-- Tipo de dato Prop
data Prop = 
    Var String |
    Cons Bool |
    Not Prop |
    And Prop Prop |
    Or Prop Prop |
    Impl Prop Prop |
    Syss Prop Prop 
    deriving (Eq)


-- Imprimir el tipo de dato Prop
instance Show Prop where
    show (Cons True) = "Verdadero"
    show (Cons False) = "Falso"
    show (Var p) = p
    show (Not p) = "¬" ++ show p 
    show (Or p q) = "(" ++ show p ++ " ∨ " ++ show q ++ ")"
    show (And p q) = "(" ++ show p ++ " ∧ " ++ show q ++ ")"
    show (Impl p q) = "(" ++ show p ++ " → " ++ show q ++ ")"
    show (Syss p q) = "(" ++ show p ++ " ↔ " ++ show q ++ ")"

-- Sinónimo Literal
type Literal = Prop

-- Sinónimo Cláusula
type Clausula = [Literal]


-- 3.1 Implementación del algoritmo DPLL (Parte 1)

-- Interpretación
type Interpretacion = [(String, Bool)]

-- Estado del Algoritmo
type Estado = (Interpretacion, [Clausula])

-- Ejercicios

-- Conflicto
conflict :: Estado -> Bool 
conflict = undefined

-- Éxito
success :: Estado -> Bool 
success = undefined 

-- Cláusula unitaria
unit :: Estado -> Estado 
unit = undefined 

-- Eliminación 
elim :: Estado -> Estado 
elim = undefined 

-- Reducción 
red :: Estado -> Estado 
red = undefined 

-- Separación
sep :: Literal -> Estado -> (Estado, Estado)
sep = undefined 


-- 3.2 Árboles DPLL

data ArbolDPLL = 
    Node Estado ArbolDPLL |
    Branch Estado ArbolDPLL ArbolDPLL |
    Void 


-- 3.3 Implementación del algoritmo DPLL (Parte 2)

-- Heurística
heuristicsLiteral :: [Clausula] -> Literal 
heuristicsLiteral = undefined 

-- Función prinicipal
dpll :: [Clausula] -> Interpretacion
dpll = undefined 



-- Ejercicio extra (Hasta 1 punto)
dpll2 :: Prop -> Interpretacion
dpll2 = undefined 