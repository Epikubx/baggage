package newMap_fla
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class playNow_734 extends MovieClip
   {
       
      
      public var field:TextField;
      
      public function playNow_734()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
         this.field.mouseEnabled = false;
      }
   }
}
