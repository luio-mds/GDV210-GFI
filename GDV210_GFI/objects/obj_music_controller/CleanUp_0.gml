//stop audio on change of rooms
if (audio_exists(global.music)) {
    audio_stop_sound(global.music);
}