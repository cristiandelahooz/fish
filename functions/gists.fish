function gists
    set gist_id (gh gist list --limit 100 | fzf --preview 'gh gist view (echo {} | awk "{print \$1}") | bat' --query "$argv" --tiebreak=index --bind 'enter:execute(gh gist clone (echo {} | awk "{print \$1}") ~/gists/(echo {} | awk "{print \$1}"))+abort' --multi | awk '{print $1}')
    if test -n "$gist_id"
        gh gist clone $gist_id ~/gists/$gist_id
        cd ~/gists/$gist_id
    end
end
