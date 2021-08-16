#!usr/bin/fish

set --local dir (pwd)

# fish
for file in (ls -A fish | grep -v ".DS_Store")
    ln -nsf "$dir/fish/$file" "$HOME/.config/fish/$file"
end

# hyper
ln -nsf "$dir/.hyper.js" "$HOME/.hyper.js"

fisher update