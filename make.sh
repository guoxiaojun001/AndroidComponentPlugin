#!/bin/bash
rm app/src/main/assets/pluginapk-debug.apk &&
gradle -q pluginapk:assembleDebug -x lint --parallel --offline --continue &&
cp pluginapk/build/outputs/apk/debug/pluginapk-debug.apk app/src/main/assets/

rm app/src/main/assets/receiverPlugin-debug.apk &&
gradle -q receiverPlugin:assembleDebug -x lint --parallel --offline --continue &&
cp receiverPlugin/build/outputs/apk/debug/receiverPlugin-debug.apk app/src/main/assets/