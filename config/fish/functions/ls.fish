function ls --wraps='lsd -lhA --group-dirs first --header' --description 'alias ls lsd -lhA --group-dirs first --header'
  lsd -lhA --group-dirs first --header $argv
        
end
