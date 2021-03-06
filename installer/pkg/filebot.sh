#!/bin/sh
FILEBOT_HOME="/Applications/FileBot.app/Contents"
JAVA_HOME="$FILEBOT_HOME/PlugIns/jdk-@{jre.version}.jdk/Contents/Home"

# select application data folder
APP_DATA="$HOME/.filebot"
LIBRARY_PATH="$FILEBOT_HOME/MacOS"

# start filebot
"$JAVA_HOME/bin/java" -Dapplication.deployment=pkg -Dapple.awt.UIElement=true -Dnet.filebot.AcoustID.fpcalc="$LIBRARY_PATH/fpcalc" @{java.application.options} @{linux.application.options} $JAVA_OPTS $FILEBOT_OPTS --module-path "$JAVA_HOME/ext/modules/lib" --add-modules ALL-MODULE-PATH -jar "$FILEBOT_HOME/Java/filebot.jar" "$@"
