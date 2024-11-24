	// Ambil actor dengan action_value terendah
	var current_actor = global.participants[0];

	if (current_actor.action_value >= 0) {
	    if (current_actor.team == "character") {

	        with (objButtonUp) {
	            instance_destroy();
	        }
	        with (objButtonDown) {
	            instance_destroy();
	        }
			with(objButtonAction){
	            instance_destroy();
	        }
	        instance_create_layer(current_actor.x + 105, current_actor.y - 200, "Instances", objButtonUp); 
	        instance_create_layer(current_actor.x + 105, current_actor.y - 170, "Instances", objButtonDown);
	        instance_create_layer(current_actor.x, current_actor.y - 170, "Instances", objButtonAction);

	    }
		else {
	        with (objButtonUp) {
	            instance_destroy();
	        }
	        with (objButtonDown) {
	            instance_destroy();
	        }
	        current_actor.take_action();

	        current_actor.action_value += 10000 / current_actor.spd;
	    }

	    array_sort(global.participants, function(a, b) {
	        return a.action_value - b.action_value;
	    });
	}