class Missile extends MovieClip {

	var speed;

	function onLoad() {
		speed = 20;
	}
	function onEnterFrame() {
		_x += speed;

		if (_x>600) {
			this.removeMovieClip();
		}
	}
}