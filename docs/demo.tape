# Regenerate the demo GIF with:  vhs docs/demo.tape
# Requires: vhs (charmbracelet/vhs). Runs the analyzer in safe mode (--samples 0:
# no per-request samples printed, so no private content is shown or recorded).
Output docs/demo.gif

Set Shell "bash"
Set FontSize 16
Set Width 960
Set Height 640
Set Padding 20
Set Theme "Dracula"

Hide
Type "cd $(git rev-parse --show-toplevel 2>/dev/null || echo .) && clear"
Enter
Show

Sleep 800ms
Type "# 自分のAI履歴を解析して、何を一番頼んでいるかを見る"
Enter
Type "python3 tools/analyze_history.py --samples 0 --out /tmp/pd.txt"
Sleep 600ms
Enter
Sleep 6s
Sleep 3s
