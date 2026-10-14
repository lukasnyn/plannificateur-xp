#!/bin/zsh
# Publie la dernière version du Plannificateur XP sur GitHub Pages.
# Usage : ./publier.sh "description de la modification"
cd "${0:A:h}" || exit 1
git add -A
if git diff --cached --quiet; then echo "Rien de nouveau à publier."; exit 0; fi
git commit -q -m "${1:-Mise à jour du planificateur}" -m "Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>" || exit 1
git push -q origin main && echo "✓ Publié — visible sur l'iPhone d'ici 1 à 2 minutes (rouvre l'app)."
