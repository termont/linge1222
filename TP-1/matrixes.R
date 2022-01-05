# [6.3] Produit matriciel

A1 <- matrix(c(3,-1,1,0,2,1),nrow=3,ncol=2)
B1 <- matrix(c(1,4,2,3,1,5),nrow=2,ncol=3,byrow=TRUE)
C1=A1%*%B1


# [6.4] Transposée et somme de matrices
A2 <- matrix(c(4,2,0,9),nrow=2,ncol=2,byrow = TRUE)
B2 <- matrix(c(7,0,3,1),nrow=2,ncol=2,byrow = TRUE)
C2 = t(A2)+B2

# [6.5] Trace d'une matrice
Z <- matrix(c(1,2,5,3,9,6,1,2,9),nrow=3,ncol=3,byrow=TRUE)
traceZ = sum(diag(Z))

# [6.6] Valeur et vecteur propre
A3 <- matrix(c(2,1,1,4),nrow=2,ncol=2,byrow = TRUE)
res=eigen(A3)

sum(res$value)
sum(diag(A3))

d3 <- det(A3)
p3 <- prod(res$values)

I = t(res$vectors)%*%res$vectors

# [6.7] Idependance linéaire
# 1. pas linéairement dédendant
b1 <- c(4,-1,2)
b2 <- c(-4,10,2)
b1/b2
# 2. pas linéaire dépendant car det <> 0
c1 <- c(-3,0,4)
c2 <- c(5,-1,2)
c3 <- c(1,1,3)
det(cbind(c1,c2,c3))
# 3. pas linéairement dépendant
d1 <- c(8,-1,3)
d2 <- c(4,0,1)
d2/d1
# 4 toujours dépendant dans un espace de 3d

# [6.8] produit scalaire
e <- c(3,4)
f <- c(-2,3)
sum(e*f)

# [6.9] distance et angle
t <- c(2,4,0,-2)
u <- c(-1,0,0,2)
sqrt(sum((t-u)^2))
acos(sum(t*u)/sqrt(sum(t*t)*sum(u*u)))
