package assets {
	
	import flash.display.MovieClip;
	
	
	public class ghost extends MovieClip {
		
		
      public function ghost()
      {
         super();
         addFrameScript(36,frame37);
      }
      
      function frame37() : *
      {
         if(Math.random() * 100 > 7)
         {
            gotoAndPlay(1);
         }
      }
   }
}
