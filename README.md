# dotfiles

## navigateur extensions

- [ublock-origin-lite](https://chromewebstore.google.com/detail/ublock-origin-lite/ddkjiahejlhfcafbddmgiahcphecmpfh?hl=fr)

## vscode

settings.json
```
{
    "editor.formatOnSave": true,
    "files.autoSave": "onFocusChange",
    "editor.defaultFormatter": "ms-python.black-formatter"
}
```

extensions
```
flatpak run com.vscodium.codium --install-extension ms-python.black-formatter
flatpak run com.vscodium.codium --install-extension ms-python.python
flatpak run com.vscodium.codium --install-extension ms-python.debugpy
flatpak run com.vscodium.codium --install-extension ms-python.vscode-python-envs
flatpak run com.vscodium.codium --install-extension vscodevim.vim
```

## auth chrom*

```
chromium --password-store=basic
```
Cette option déverrouille le trousseau en permanence.
Tes mots de passe enregistrés ne seront plus chiffrés sur le disque, mais tu ne recevras plus aucune demande d'authentification.
- Ouvre l'application Mots de passe et clés (Seahorse). Si elle n'est pas installée, lance: sudo apt install seahorse
- Dans le panneau latéral gauche, clique droit sur le trousseau Connexion (ou login).
- Choisis Changer le mot de passe.
- Entre ton mot de passe actuel.
- Laisse le champ du nouveau mot de passe totalement vide et clique sur Continuer.
- Confirme le message d'avertissement concernant le stockage non chiffré.

## sway

1. Ouvre le fichier `~/.config/sway/config`.
2. Ajoute cette ligne (ou modifie le bloc clavier s’il existe déjà) :

```conf
input type:keyboard {
    xkb_layout fr
}
```

3. Recharge Sway avec `Mod` + `Shift` + `C` — généralement `Mod` est la touche `Super`/Windows.

Pour l’appliquer immédiatement sans recharger, lance :

```bash
swaymsg 'input type:keyboard xkb_layout fr'
```
