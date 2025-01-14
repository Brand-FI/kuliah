
if (display == true) { 
    var currentObject = myArray[currentIndex];
    var inst = instance_create_layer(960, 540, "Instances", currentObject);  
    sprite_index = inst.sprite_index;  
	draw_self()
    instance_destroy(inst);  
}
