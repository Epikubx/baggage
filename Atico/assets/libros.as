package assets {
	
	import flash.display.MovieClip;
	
	
	public class libros extends MovieClip {
		
		
      public function libros()
      {
         super();
         addFrameScript(29,frame30);
      }
      
      function frame30() : *
      {
         if(Math.random() * 100 > 5)
         {
            gotoAndPlay(1);
         }
      }
   }
}
