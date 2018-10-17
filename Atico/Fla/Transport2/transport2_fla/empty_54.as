package transport2_fla
{
   import flash.display.MovieClip;
   
   public dynamic class empty_54 extends MovieClip
   {
       
      
      public function empty_54()
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
