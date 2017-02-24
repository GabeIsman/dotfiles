function clearport --argument-names port
  lsof -n | grep 35729 | tr -s ' ' | cut -d ' ' -f 2 | xargs kill -9
end
