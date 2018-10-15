package assets {
	
	import flash.display.MovieClip;
	
	
	public class vampire extends MovieClip {
		
		
      public function vampire()
      {
         super();
         addFrameScript(25,frame26);
      }
      
      function frame26() : *
      {
         if(Math.random() * 100 > 4)
         {
            gotoAndPlay(1);
         }
      }
   }
}
