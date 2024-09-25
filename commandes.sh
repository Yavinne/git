find /home/user/documents -type f -iname '*.txt' -exec grep -i 'mot_recherche' {} \; 
-print | xargs -0 cp -v /home/user/backup/

tar -czvf /home/user/archives/sauvegarde_$(date +%Y-%m-%d_%H-%M-%S).tar.gz /home/user/documents/* 
--exclude='/home/user/documents/exclure_ce_fichier'

git add . && git commit -m "Modification de fichiers multiples sur $(date +'%A %d %B %Y à %H:%M')" 
&& git push origin main

psql -U utilisateur -h localhost -d base_de_donnees -c "SELECT nom, prenom, email FROM utilisateurs 
WHERE statut='actif' AND creation_date > '2023-01-01' ORDER BY nom, prenom;"

sudo iptables -A INPUT -p tcp --dport 80 -m state --state NEW,ESTABLISHED -j ACCEPT 
&& sudo iptables -A OUTPUT -p tcp --sport 80 -m state --state ESTABLISHED -j ACCEPT

awk '{print $1, $3}' fichier.txt | sed 's/ancien_texte/nouveau_texte/g' > fichier_modifie.txt 
&& mv fichier_modifie.txt fichier_final.txt

grep -i 'erreur' /var/log/syslog | awk '{print $1, $2, $3, $5}' | sort | uniq -c 
| sort -nr > erreurs_frequentes.txt

curl -o /home/user/téléchargements/fichier_$(date +%Y-%m-%d).html 
-L "https://example.com/documentation?page=longue&page=suivante&id=12345&token=abcde12345" 
-H "Authorization: Bearer token_xyz"

for fichier in /home/user/images/*.jpg; do convert "$fichier" -resize 1024x768 
"/home/user/images_redimensionnees/$(basename $fichier)"; done

echo "Bonjour, voici les fichiers demandés." | mail -s "Sujet du message" -a /home/user/fichier1.txt 
-a /home/user/fichier2.txt utilisateur@example.com