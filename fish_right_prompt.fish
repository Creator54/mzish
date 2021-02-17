function fish_right_prompt
  set -l exit_code $status
  if test $exit_code -ne 0
    set_color red
  else
    set_color green
  end
  printf '%d' $exit_code
  set_color yellow
  printf '| %s  ' (echo "UP: "|tr -d '\n';uptime | cut -d "," -f1 | cut -d "p" -f2 | sed 's/^ *//g')
  set_color normal
end
