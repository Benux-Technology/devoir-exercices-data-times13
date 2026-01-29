# ======================================
# TITRE : Base de données des étudiants
# AUTEUR : Times Alfred
# DATE : 2026-01-27
# DESCRIPTION : Manipulation d’un data frame et analyses simples
# ======================================

# 1. Configuration ----
rm(list = ls())

# 2. Chargement packages ----
# Aucun package requis

# 3. Import données ----

# 1. Créez le data frame
etudiants <- data.frame(
  Nom = c("Alice", "Bob", "Charlie", "Diana"),
  Maths = c(85, 90, 78, 95),
  Info = c(88, 85, 92, 90),
  Present = c(TRUE, TRUE, FALSE, TRUE)
)

cat("Data frame des étudiants :\n")
print(etudiants)
cat("\n")

# 4. Nettoyage ----
# Non applicable (pas de valeurs manquantes)

# 5. Analyses ----

# 2. Ajoutez une colonne moyenne
etudiants$moyenne <- (etudiants$Maths + etudiants$Info) / 2

cat("Data frame avec la moyenne :\n")
print(etudiants)
cat("\n")

# 3. Étudiant avec la meilleure moyenne
meilleur_etudiant <- etudiants[which.max(etudiants$moyenne), ]

cat("Étudiant avec la meilleure moyenne :\n")
print(meilleur_etudiant)
cat("\n")

# 4. Étudiants présents uniquement
etudiants_presents <- etudiants[etudiants$Present == TRUE, ]

cat("Étudiants présents :\n")
print(etudiants_presents)
cat("\n")

# 5. Moyenne de classe en maths
moyenne_maths <- mean(etudiants$Maths)

cat("Moyenne de la classe en maths :", moyenne_maths, "\n\n")

# 6. Ajoutez la colonne mention
etudiants$mention <- ifelse(
  etudiants$moyenne >= 90, "Excellent",
  ifelse(etudiants$moyenne >= 80, "Bien", "Passable")
)

cat("Data frame final avec la mention :\n")
print(etudiants)

# FIN DU SCRIPT
