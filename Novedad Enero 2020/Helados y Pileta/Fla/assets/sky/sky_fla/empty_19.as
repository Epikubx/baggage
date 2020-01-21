package sky_fla
{
   import flash.display.MovieClip;
   
   public dynamic class empty_19 extends MovieClip
   {
       
      
      public function empty_19()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         if(this.numChildren > 0)
         {
            this.removeChild(this.getChildAt(0));
         }
      }
   }
}
