class_name AddUnitToLocation
extends Effect

var unit := Card

func execute(targets: Array[Node]):
	for target in targets:
		if not target: 
			continue
		if unit.Type == UNIT:
			target.units.append(unit)
		if target is Location:
			target.units.append(unit)
enum Type {UNIT, BUILDING, STRATEGEM}
