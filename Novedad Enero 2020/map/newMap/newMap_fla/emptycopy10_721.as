package newMap_fla
{
   import flash.display.MovieClip;
   
   public dynamic class emptycopy10_721 extends MovieClip
   {
       
      
      public function emptycopy10_721()
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
