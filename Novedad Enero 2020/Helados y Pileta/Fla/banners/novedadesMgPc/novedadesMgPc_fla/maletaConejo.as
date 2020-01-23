package novedadesMgPc_fla
{
   import flash.display.MovieClip;
   
   public dynamic class maletaConejo extends MovieClip
   {
       
      
      public function maletaConejo()
      {
         super();
         addFrameScript(30,frame31);
      }
	  
	  function frame31() : *
	  {
		  if(Math.random() * 100 > 5)
         {
            gotoAndPlay(1);
         }
	  }
   }
}
