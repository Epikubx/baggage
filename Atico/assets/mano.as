package assets {
	
	import flash.display.MovieClip;
	
	
	public class mano extends MovieClip {
		
		
      public function mano()
      {
         super();
         addFrameScript(23,frame24);
      }
      
      function frame24() : *
      {
         if(Math.random() * 100 > 7)
         {
            gotoAndPlay(1);
         }
      }
   }
}
