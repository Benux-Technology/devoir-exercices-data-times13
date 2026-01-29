# ======================================
# TITRE : Analyse des températures hebdomadaires
# AUTEUR : Times Alfred
# DATE : 2026-01-27
# DESCRIPTION : Manipulation de vecteurs et calculs statistiques simples
# ======================================

# 1. Configuration ----
rm(list = ls())

# 2. Chargement packages ----
# Aucun package requis

# 3. Import données ----
temperatures <- c(22, 24, 19, 25, 23, 26, 21)
print(temperatures)

# 4. Nettoyage ----
# Non applicable (aucune valeur manquante)

# 5. Analyses ----

# Température moyenne
moyenne <- mean(temperatures)
cat("Température moyenne :", moyenne, "°C\n")

# Température minimale et maximale
temp_min <- min(temperatures)
temp_max <- max(temperatures)

cat("Température minimale :", temp_min, "°C\n")
cat("Température maximale :", temp_max, "°C\n")

# Températures strictement supérieures à 23°C
temp_sup_23 <- temperatures[temperatures > 23]
cat("Températures supérieures à 23°C :\n")
print(temp_sup_23)

# Conversion en Fahrenheit
temp_fahrenheit <- temperatures * 9/5 + 32
cat("Températures en Fahrenheit :\n")
print(temp_fahrenheit)

# Nommage des éléments du vecteur
names(temperatures) <- c(
  "Lundi", "Mardi", "Mercredi",
  "Jeudi", "Vendredi", "Samedi", "Dimanche"
)
print(temperatures)

# FIN DU SCRIPT
