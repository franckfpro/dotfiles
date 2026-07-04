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