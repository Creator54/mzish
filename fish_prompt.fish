# based on Zish

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function fish_prompt
  if test "$argv[1]" = cd
    clear
  end

  set_color -o $fish_color_autosuggestion[2]
  if test (ls -a |wc -l) -lt 40 
#if test "$argv[1]" = cd
      echo && printf '  count: %s' (expr (ls -a|wc -l) - 2) && ls -lah |xargs -i echo "  {}" && echo 
#   end
  end
  #set_color -o green
	#set symbol      
	#set index (random 1 6)
  #printf '%s' $symbol[$index]
  set_color -o yellow
  printf '%s' (__fish_git_prompt)
  if [ (_is_git_dirty) ]
    set_color brred
    printf '* '
  end
  set_color -o green
	set symbol      
	set index (random 1 6)
	set_color -o red
  printf ' %s ' (prompt_pwd)
	set_color -o green
	#printf '  '
  printf '%s  ' $symbol[$index]

  set_color normal
end
