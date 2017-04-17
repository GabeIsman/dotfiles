function clearport --argument-names port
  lsof -n | grep $port | tr -s ' ' | cut -d ' ' -f 2 | xargs kill -9
end
