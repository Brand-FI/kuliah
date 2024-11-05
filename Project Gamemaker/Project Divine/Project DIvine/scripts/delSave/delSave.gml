function delSave()
{

if (file_exists(saveFile)) {
    file_delete(saveFile); 
    show_message("Save file berhasil dihapus: " + saveFile);
} else {
    show_message("Save file tidak ketemu: " + saveFile);
}
}