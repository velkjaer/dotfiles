function history
    builtin history --show-time='%m/%d/% %T $> ' | tail -r | less -N +G
end
