unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix

bind-key -n C-t new-window -c "#{pane_current_path}" \; rename-window "-"
bind-key -n C-s display-panes \; split-window -h -c "#{pane_current_path}"
bind-key -n C-v display-panes \; split-window -v -c "#{pane_current_path}"
bind-key -n M-h previous-window
bind-key -n M-l next-window
bind-key -n M-H swap-window -t :-1
bind-key -n M-L swap-window -t :+1
bind-key -n C-k display-panes \; select-pane -U
bind-key -n C-j display-panes \; select-pane -D
bind-key -n C-h display-panes \; select-pane -L
bind-key -n C-l display-panes \; select-pane -R

bind b run-shell "(echo '```'; tmux show-buffer; echo '```') | xsel -ib"
bind B run-shell "tmux show-buffer | xsel -ib"
