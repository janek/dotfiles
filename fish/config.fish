set -x ANDROID_HOME /Users/janek/Library/Android/sdk
set -x ANDROID_NDK_PATH $ANDROID_HOME/android-ndk-r16b
set -Ux SPOTIFY_AUTH_TOKEN_PATH /Users/janek/Developer/pi-spotify/spotify-alarm-clock/access_token.txt

function fish_user_key_bindings
    bind -M insert \cf accept-autosuggestion execute
end

