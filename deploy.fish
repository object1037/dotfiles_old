#!usr/bin/fish

set --local dir (pwd)
set --local HAS_EXA false

function has -a CMD_NAME
  type "$CMD_NAME" > /dev/null 2>&1
end

function info -a MSG
  echo -n "["
  set_color blue; echo -n "INFO"
  set_color normal; echo "] $MSG"
end

if has "exa"
    set HAS_EXA true
end

# brew
info "Installing brew packages..."
for file in (ls -($HAS_EXA && echo "a"; ! $HAS_EXA && echo "A") brew | grep -v ".DS_Store")
    ln -nsf "$dir/brew/$file" "$HOME/$file"
end
cd $HOME
brew bundle
cd $dir

# fish
info "Installing fish config files..."
for file in (ls -($HAS_EXA && echo "a"; ! $HAS_EXA && echo "A") fish | grep -v ".DS_Store")
    ln -nsf "$dir/fish/$file" "$HOME/.config/fish/$file"
end

info "Installing fisher packages..."
fisher update

# hyper
info "Installing Hyper config files..."
for file in (ls -($HAS_EXA && echo "a"; ! $HAS_EXA && echo "A") hyper | grep -v ".DS_Store")
    ln -nsf "$dir/hyper/$file" "$HOME/$file"
end

# bin
info "Installing bin files..."
mkdir -p "$HOME/bin"
for file in (ls -($HAS_EXA && echo "a"; ! $HAS_EXA && echo "A") bin | grep -v ".DS_Store")
    ln -nsf "$dir/bin/$file" "$HOME/bin/$file"
end

# starship
info "Installing starship..."
ln -nsf "$dir/starship.toml" "$HOME/.config/starship.toml"

# git
info "Setting up git..."
git config --global user.email "contact@object1037.dev"
git config --global user.name "object1037"

# bat
info "Setting up bat..."
mkdir -p (bat --config-dir)/themes
ln -nsf "$dir/bat/duotonedarksea.tmTheme" (bat --config-dir)/themes/duotonedarksea.tmTheme
ln -nsf "$dir/bat/config" (bat --config-file)
bat cache --build
