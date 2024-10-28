function delSave()
{
var saveFile = "divine.sav"; // NAMA FILE

//PENGECEKAN
if (file_exists(saveFile)) {
    file_delete(saveFile); 
    show_message("Save file berhasil dihapus: " + saveFile);
} else {
    show_message("Save file tidak ketemu: " + saveFile);
}
}