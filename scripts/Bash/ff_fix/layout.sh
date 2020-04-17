#!/usr/bin/bash
set -x
profile=$HOME/Library/Application\ Support/Firefox/Profiles/cbdesict.default-beta/prefs.js
currentSetting="$(grep "layout.css.devPixelsPerPx" < echo "$profile")"
displayTest="$(system_profiler SPDisplaysDataType | sed -n '14,$p' | wc -l | xargs)"


#if [[ $displayTest -gt 8 && "$currentSetting" != *"1.0"  ]]; then
#   sed -i 's/("layout.css.devPixelsPerPx","*.*")/("layout.css.devPixelsPerPx","1.0")/g' $profile
#elif [[ $displayTest -eq 8 ]]; then
#   sed -i 's/("layout.css.devPixelsPerPx","*.*")/("layout.css.devPixelsPerPx","1.5")/g' $profile
#fi
echo "$currentSetting"

set +x

