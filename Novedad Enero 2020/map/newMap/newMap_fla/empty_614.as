package newMap_fla
{
   import flash.display.MovieClip;
   
   public dynamic class empty_614 extends MovieClip
   {
       
      
      public function empty_614()
      {
         super();
         addFrameScript(0,this.frame1);
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
