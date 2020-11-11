function fish_right_prompt
  set -l exit_code $status
  if test $exit_code -ne 0
    set_color red
  else
    set_color green
  end
  printf '%d' $exit_code
  set_color yellow
  printf ' | %s' (cat /sys/class/power_supply/BAT0/capacity | tr -d '\n'; echo %) (date +'%a %d'' | '%r'   ')
  set_color normal
end
