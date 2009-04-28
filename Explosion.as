class Explosion extends MovieClip {
	function onEnterFrame() {
		if (this._currentframe == this._totalframes) {
			this.removeMovieClip();
		}
	}
}