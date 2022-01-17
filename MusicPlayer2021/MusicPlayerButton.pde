void musicPlayerButtons() {
  //Power Button, Quit Button
  powerButton();
  //
  //Play-Pause
if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.isPlaying() ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
  //Stop
  //Forward & Reverse
  //Next
  //Previous
  //Loop: repeat-single-song, repeat-all-songs, repeat-finite-times, repeat-infinite-times
  //Volume Up
  //Volume Down
  //Media
//End musicPlayerButtons
