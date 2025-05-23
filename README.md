# RSA Secure Messenger – Build & Installer

Ce dépôt contient tout le nécessaire pour :
- Compiler l’application PyQt6 `RSA Secure Messenger` en exécutable Windows avec **PyInstaller**.
- Créer un installeur Windows (.exe) professionnel avec **Inno Setup**.

---

## 📦 Structure du dépôt
```perl
rsa_secure_messenger_installer/
├── pyinstaller/
│   ├── main.spec     # Fichier de configuration PyInstaller personnalisé
│   └── icon.ico      # Icône de l'application (affichée dans l'EXE)
├── inno_setup/
│   ├── setup.iss     # Script Inno Setup pour créer l’installeur
│   └── icon.ico      # Icône pour l’installeur (raccourcis, etc.)
├── dist/             # Contient l’exécutable généré (absent: dossier trop volumineux pour un dépôt github)
├── build/            # Fichiers temporaires de PyInstaller
├── installer/        # Contient le fichier .exe de l’installeur généré par Inno Setup (absent: dossier trop volumineux pour un dépôt github)
├── .gitignore
└── README.md
```
---

## 🔧 1. Compilation avec PyInstaller

### Prérequis :
- Python 3.13 installé
- PyInstaller installé :  
  ```bash
  pip install pyinstaller
  ```

### Étapes :
Placez-vous dans le répertoire pyinstaller/.

Lancez la compilation :
```bash
pyinstaller main.spec
```

📁 Résultat : un dossier dist/SecureMessenger/ contenant SecureMessenger.exe et ses dépendances.

---

## 🛠️ 2. Création de l’installeur avec Inno Setup

### Prérequis :
- Télécharger et installer Inno Setup

### Compilation :
- Ouvrir inno_setup/rsa_secure_messenger.iss avec l’éditeur Inno Setup.
- Cliquer sur "Compiler".

📁 Résultat : un fichier Setup_RSA_Secure_Messenger.exe dans le dossier de sortie.

---

## 🚀 Installation
L’installeur est situé dans le dossier installer/. Lorsque vous exécutez Setup_RSA_Secure_Messenger.exe, l’assistant vous proposera de choisir un dossier d’installation.

---

## ⚠️ Choix du dossier – Important :
Option 1 – C:\Program Files\... :
Vous devrez exécuter l'application en tant qu'administrateur (clic droit → "Exécuter en tant qu’administrateur"). Sinon, certaines opérations comme l’écriture de logs ou la sauvegarde de clés peuvent échouer.

Option 2 – Dossier personnel (C:\Users\votre_nom\...) ✅
Installation dans un dossier personnel évite les problèmes de permissions. L’application fonctionnera normalement sans droits administrateur.

✅ Recommandation : pour une utilisation simple, choisissez un répertoire personnel.

---

## 📝 Notes
L’icône personnalisée est intégrée à l’exécutable via le .spec.

Le nom final de l’exécutable est SecureMessenger.exe.

---

## ⚠️ Important
Les dossiers dist/ (exécutables PyInstaller) et installer/ (installeur Inno Setup) sont absents du dépôt GitHub car ils sont trop volumineux.

Pour générer ces dossiers, veuillez suivre les étapes de compilation et de création d’installeur décrites ci-dessus.

---

## 📃 Licence
Ce projet est sous licence MIT.


---

