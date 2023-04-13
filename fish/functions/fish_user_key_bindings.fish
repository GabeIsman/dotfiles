function fish_user_key_bindings
  bind --mode insert --sets-mode default jj backward-char force-repaint
  bind --mode insert \cf accept-autosuggestion
  bind --mode insert \ce forward-word
end
