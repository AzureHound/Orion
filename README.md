
```sh
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```sh
touch ~/.hushlogin

brew analytics off
rm -rf ~/Library/Application\ Support/Homebrew/analytics

brew bundle install --file=Brewfile # Install all packages in Brewfile
```

```
npm install -g cz-git commitizen
```
---

```sh
# Install tgpt
curl -sSL https://raw.githubusercontent.com/aandrew-me/tgpt/main/install | bash -s /usr/local/bin
```

```sh
ollama run deepseek-r1:8b
```
