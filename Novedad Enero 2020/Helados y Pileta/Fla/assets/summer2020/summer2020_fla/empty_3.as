package summer2020_fla
{
   import flash.display.MovieClip;
   
   public dynamic class empty_3 extends MovieClip
   {
       
      
      public function empty_3()
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
