# enable colors
autoload colors; colors;

# Need this to print colours correctly
setopt prompt_subst

function vcprompt_str {
    echo "using $1 %{$fg[yellow]%}%b %{$fg[red]%}%u%m %{$reset_color%}"
}

function vcprompt_info {
    vcprompt --format-git "$(vcprompt_str ±)" \
             --format-hg  "$(vcprompt_str ☿)" \
             --format-svn "$(vcprompt_str ⍝)" \
             --format-bzr "$(vcprompt_str ☪)" \
             --format-cvs "using cvs" \
             --format    "$(vcprompt_str %s)"
}

PS1=$'
%{$fg[green]%}%n %{$reset_color%}on %{$fg[green]%}%m %{$reset_color%}in %{$fg[yellow]%}%c %{$reset_color%}$(vcprompt_info)
%{$fg[cyan]%}%D{%H:%M%:%S} λ  %{$reset_color%}'


#PS1=$'
#$(osx_battery.py) %{$fg[green]%}%n %{$reset_color%}on %{$fg[green]%}%m %{$reset_color%}in %{$fg[yellow]%}%c %{$reset_color%}$(vcprompt_info)
#%{$fg[cyan]%}%D{%H:%M%:%S} λ  %{$reset_color%}'



RPROMPT=''
