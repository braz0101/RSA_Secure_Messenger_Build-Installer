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

## 🛠️ Quelques captures d'écrans

<img width="632" alt="10" src="https://github.com/user-attachments/assets/160b6213-c8e5-4a56-be93-7f55189f611b" />
<img width="605" alt="11" src="https://github.com/user-attachments/assets/0bb1c0d0-cade-4792-8433-f7167606943c" />
<img width="605" alt="12" src="https://github.com/user-attachments/assets/1ac64de8-a8e4-4429-987d-2c0f3a4a8605" />
<img width="655" alt="13" src="https://github.com/user-attachments/assets/79460ff6-70bb-4358-aac1-52699177bda5" />
<img width="638" alt="14" src="https://github.com/user-attachments/assets/487714bd-7958-41be-9064-e89768d0fb3c" />
<img width="707" alt="15" src="https://github.com/user-attachments/assets/3a101016-d4a1-429e-b626-0b3b6dce2d74" />
<img width="581" alt="16" src="https://github.com/user-attachments/assets/d45baa74-79e6-45fb-b7e9-9c2da1c78660" />
<img width="585" alt="17" src="https://github.com/user-attachments/assets/2a304d01-e820-4ce4-93f5-79573d5fa5e9" />
<img width="566" alt="18" src="https://github.com/user-attachments/assets/7e818793-98fe-4e7c-96cd-e4b24d6ad8c6" />
<img width="667" alt="19" src="https://github.com/user-attachments/assets/8cbb9e27-b3e8-4d2e-b825-06f01e2e1e6c" />
<img width="620" alt="21" src="https://github.com/user-attachments/assets/7a5263a2-f9e9-4f80-a49e-1d23a9baf6ad" />
<img width="862" alt="20" src="https://github.com/user-attachments/assets/f77d422c-61da-4342-b7ef-b2073a89a1e1" />

---

## 📃 Licence
Ce projet est sous licence MIT.


---

