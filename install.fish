#!usr/bin/fish

function has -a CMD_NAME
  type "$CMD_NAME" > /dev/null 2>&1
end

function info -a MSG
  echo -n "["
  set_color blue; echo -n "INFO"
  set_color normal; echo "] $MSG"
end
