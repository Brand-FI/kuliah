// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createParty()
{

global.party = []

//Sprite Objek sengaja disembunyiin karena akan didraw di drawParty
global.party[0] = instance_create_layer(-200,0, "Instances", objAyaka);
global.party[1] = instance_create_layer(-200,0, "Instances", objCharlotte);
global.party[2] = instance_create_layer(-200,0, "Instances", objFurina);
global.party[3] = instance_create_layer(-200,0, "Instances", objRaiden);
global.party[4] = instance_create_layer(-200,0,"Instances", objKazuha);
global.party[5] = instance_create_layer(-200,0,"Instances", objNoah);


}