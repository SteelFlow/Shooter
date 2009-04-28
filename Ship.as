class Ship extends MovieClip {
	var velocity;
	var shootLimiter;
	var enemyTimer;

	function onLoad() {
		velocity = 10;
		shootLimiter = 0;
		enemyTimer = 0;
	}
	function onEnterFrame() {
		shootLimiter += 1;
		enemyTimer += 1;
		
		if (enemyTimer > 60) {
			enemyTimer = 0;
			
			_root.attachMovie("EnemyShip", "EnemyShip"+_root.getNextHighestDepth(),
												_root.getNextHighestDepth());
		}
		
		if (Key.isDown(Key.RIGHT)) {
			_x += velocity;
		}
		if (Key.isDown(Key.LEFT)) {
			_x -= velocity;
		}
		if (Key.isDown(Key.UP)) {
			_y -= velocity;
		}
		if (Key.isDown(Key.DOWN)) {
			_y += velocity;
		}
		if (Key.isDown(Key.SPACE) && shootLimiter > 8) {
			shootLimiter = 0;
			var missile = _root.attachMovie("Missile", "Missile"+_root.getNextHighestDepth(), _root.getNextHighestDepth());
			missile._x = _x+48;
			missile._y = _y+3;
		}
	}
}