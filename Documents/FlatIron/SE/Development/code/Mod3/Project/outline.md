Keypress Keyboard

Turn your keyboard into an instrument. Screen shows keyboard and when you hit a key the corresponding key lights up.

-> A User should be able hit a key and hear a sound
    -> Each key on the keyboard should produce a different sound

-> A User should be able to login (frontend only)
    -> Each username has playlists associated with it

-> A User should be able to Save the sequences of key presses as a playlist and See/Change/Delete their playlists  




User -< Playlists


 Notes:
<!-- Sound map table -> records where keypress is associated with a sound(keypress) Ex: key = 'q' sound is trumpet  -->

Right hand side key string playlist test field
Left hand side current keypress and 


user_string = "qwerty"
sounds_object = {
    q = horn.aiff
    w = guitar_solo.aiff
    ...
}

function playlist(keystrokes){
    user_string.forEach(keystroke => soundFinder(keystroke))
}

function soundFinder(keystroke){
    for (i = 0; i < sounds_object.length; i++){
        if(keystroke === sounds_object[i]){
            play sound
        }
    }
}
