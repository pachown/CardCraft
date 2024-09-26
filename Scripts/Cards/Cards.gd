extends Control

@export var cards = {
	"unit": {	
		"worker": {
			"name": "Worker",			
			"attack": 1,
			"defense": 1,
			"cost": 1,
			"production": 1,
			"speed": 2,
			"sprite": "/Assets/Worker.png",
			"description": "\nThe backbone of any healthy economy\n Dies easily"	
		},
		"soldier": {
			"name": "Soldier",
			"attack": 3,
			"defense": 3,
			"cost": 2,
			"production": 0,
			"speed": 2,
			"sprite": "/Assets/Soldier.png",
			"description": "\nA decent fighter and mainstay melee unit"	
		},
		"scout": {
			"name": "Scout",			
			"attack": 2,
			"defense": 2,
			"cost": 1,
			"production": 0,
			"speed": 4,
			"sprite": "/Assets/Worker.png",			
			"description": "\nFast scouting unit to see what your opponent is up to\nLoses to everything but workers"	
		},
		"Knight": {
			"name": "Knight",			
			"attack": 5,
			"defense": 4,
			"cost": 4,
			"production": 0,
			"speed": 3,
			"sprite": "/Assets/Knight.png",			
			"description": "\nPowerful and fast melee unit\nDevastating but expensive"	
		},
	},
	"building": {
		"stables": {
			"name": "Stables",
			"cost": 3,
			"attack": 0,
			"defense": 0,
			"production": 0,
			"speed": 0,
			"sprite": "/Assets/Stables.png",			
			"description": "\nAdds 2 knight cards to your deck\nevery turn going forwards"
		},
		"town": {
			"name": "Town",
			"cost": 5,
			"attack": 0,
			"defense": 0,
			"production": 0,
			"speed": 0,
			"sprite": "/Assets/Town.png",			
			"description": "\nAdds 2 worker cards to your deck\nevery turn and increased worker population max by 3"
		}
	}
}
