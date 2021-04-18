PCK_FILE="$HOME/data.pck"

if [ -f "$FILE" ]; then
  godot --main-pack $FILE --server
fi

