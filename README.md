# dotfiles

object1037's dotfiles.

```shell
# sudo xcode-select --install
# このリポジトリをclone (SSH: https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

bash ./install.sh

# fishをデフォルトシェルにする
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
```
