# Print the current date.

TMUX_POWERLINE_SEG_AGENDA_FILE_DEFAULT="/tmp/gcalcli_agenda.txt"

generate_segmentrc() {
	read -d '' rccontents  << EORC
# date(1) format for the date. If you don't, for some reason, like ISO 8601 format you might want to have "%D" or "%m/%d/%Y".
export TMUX_POWERLINE_SEG_DATE_FORMAT="${TMUX_POWERLINE_SEG_DATE_FORMAT_DEFAULT}"
EORC
	echo "$rccontents"
}

__process_settings() {
	if [ -z "$TMUX_POWERLINE_SEG_AGENDA_FILE" ]; then
		export TMUX_POWERLINE_SEG_AGENDA_FILE="${TMUX_POWERLINE_SEG_AGENDA_FILE_DEFAULT}"
	fi
}

run_segment() {
        __process_settings
	head  -n2 "$TMUX_POWERLINE_SEG_AGENDA_FILE" | tail -n1 | cut -c 1-40
	return 0
}
