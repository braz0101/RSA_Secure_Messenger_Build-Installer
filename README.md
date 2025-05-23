# RSA Secure Messenger – Build & Installer

Ce dépôt contient tout le nécessaire pour :
- Compiler l’application PyQt6 `RSA Secure Messenger` en exécutable Windows avec **PyInstaller**.
- Créer un installeur Windows (.exe) professionnel avec **Inno Setup**.

---

## 📦 Structure du dépôt
```perl
rsa_secure_messenger_installer/
├── pyinstaller/
│   ├── main.spec  # Fichier de configuration PyInstaller personnalisé
│   └── icon.ico   # Icône de l'application (affichée dans l'EXE) 
├── inno_setup/
│   ├── setup.iss  # Script Inno Setup pour créer l’installeur
│   └── icon.ico   # Icône pour l’installeur (raccourcis, etc.)
├── dist/          # Contient l’exécutable généré
├── build/         # Fichiers temporaires de PyInstaller lorsqu'on exécute
├── installer      # Contenant l'exécutable pour installer le programme
pyinstaller
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

L’installeur :
- Copie l’application dans C:\Program Files\SecureMessenger\
- Crée un raccourci sur le Bureau
- Ajoute une entrée dans le menu Démarrer
- Supprime tout proprement à la désinstallation

---

## 📝 Notes

- L’icône personnalisée est intégrée à l’exécutable via le .spec.
- Le nom final de l’exécutable est SecureMessenger.exe.

📃 Licence
