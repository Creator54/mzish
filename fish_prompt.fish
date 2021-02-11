# based on Zish

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function fish_prompt
  echo 
  set_color -o red
  printf ' %s' (prompt_pwd)

  echo
  set_color -o $fish_color_autosuggestion[2]
  if test (ls -a |wc -l) -lt 40 
    echo && ls -lah |xargs -i echo "  {}" && echo
  end
  set_color -o green
  printf '%s' ' |> '
  set_color -o yellow
  printf '%s' (__fish_git_prompt)
  if [ (_is_git_dirty) ]
    set_color brred
    printf '* '
  end
  set_color normal
end
