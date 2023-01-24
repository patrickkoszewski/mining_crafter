class PlayerData {
  // health

  // hunger

  // state - walking left, right, idle
  ComponentMotionState componentMotionState = ComponentMotionState.idle;
}

enum ComponentMotionState {
  walkingLeft,
  walkingRight,
  idle,
}

/*
currentHeldDownOption

if (currentHeldDownOption == ComponentMotionState.walkingLeft) {
  MovePlayerToTheLeft
}

*/
