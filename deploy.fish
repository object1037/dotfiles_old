#!usr/bin/fish

set --local dir (pwd)

function has -a CMD_NAME
  type "$CMD_NAME" > /dev/null 2>&1
end

function info -a MSG
  echo -n "["
  set_color blue; echo -n "INFO"
  set_color normal; echo "] $MSG"
end

# fish
for file in (ls -A fish | grep -v ".DS_Store")
    ln -nsf "$dir/fish/$file" "$HOME/.config/fish/$file"
end

# hyper
for file in (ls -A hyper | grep -v ".DS_Store")
    ln -nsf "$dir/hyper/$file" "$HOME/$file"
end

# bin
mkdir -p "$HOME/bin"
for file in (ls -A bin | grep -v ".DS_Store")
    ln -nsf "$dir/bin/$file" "$HOME/bin/$file"
end

# starship
ln -nsf "$dir/starship.toml" "$HOME/.config/starship.toml"

fisher update