class EnemyShip extends MovieClip {
	
	var speed;
	
	function onLoad() {
		_x = 700;
		_y = Math.random() * 260 + 40;
		speed = Math.random() * 5 + 5;
	}
	
	function onEnterFrame() {
		_x -= speed;
		
		if ( _x < -100) {
			this.removeMovieClip();
		}
	}
	
	function explode() {
		
	
	}
}