class Background extends MovieClip {
	
	function onEnterFrame() {
		_x -= 3;
		
		if (_x < -2110) {
			_x = 0;
		}
	}
	
}