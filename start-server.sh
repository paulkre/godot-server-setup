PCK_FILE=/usr/src/data.pck

if [ -f "$PCK_FILE" ]; then
  godot --main-pack $PCK_FILE --server
fi

