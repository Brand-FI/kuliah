function loadState() {
    if (file_exists(saveFile)) {
        game_load(saveFile);
    } else {
		saveState()
    }
}
