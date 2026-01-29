# ======================================
# TITRE : Calculs et variables de base
# AUTEUR : Times Alfred
# DATE : 2026-01-27
# DESCRIPTION : Calculs simples avec affichage du prix final
# ======================================

# 1. Configuration ----
rm(list = ls())

# 2. Chargement packages ----
# Aucun package requis

# 3. Import données ----
# Aucune donnée externe

# 4. Nettoyage ----
# Non applicable

# 5. Analyses ----
prix <- 100
quantite <- 5

total <- prix * quantite
remise <- total * 0.10
total_apres_remise <- total - remise
taxe <- total_apres_remise * 0.15

prix_final <- total_apres_remise + taxe

# Affichage du résultat demandé
cat("Prix final :", prix_final, "\n")

# Question bonus ----
# Vérification du type de chaque variable
cat("Type des variables :\n")
cat("prix :", class(prix), "\n")
cat("quantite :", class(quantite), "\n")
cat("prix_final :", class(prix_final), "\n\n")

#  division par zéro
resultat_division_par_zero <- 10 / 0
cat("division par zéro :", resultat_division_par_zero, "\n")
cat("Explication claire :\n")
cat("- R ne génère pas d'erreur\n")
cat("- Il retourne Inf (infini)\n")
