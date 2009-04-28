class Missile extends MovieClip {

	var speed;

	function onLoad() {
		speed = 20;
	}
	function onEnterFrame() {
		_x += speed;

		for (var i in _root.ship.enemies) {
			if (this.hitTest (_root.ship.enemies[i])) {
				this.removeMovieClip();
				_root.ship.enemies[i].explode();
			}
		}
		
		if (_x>600) {
			this.removeMovieClip();
		}
	}
}