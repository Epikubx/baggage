package summer2020_fla
{
   import flash.display.MovieClip;
   
   public dynamic class CONTAINER_2 extends MovieClip
   {
       
      
      public function CONTAINER_2()
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
