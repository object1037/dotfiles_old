#!usr/bin/fish

function has -a CMD_NAME
  type "$CMD_NAME" > /dev/null 2>&1
end
