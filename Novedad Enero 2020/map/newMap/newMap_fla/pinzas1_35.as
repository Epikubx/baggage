package newMap_fla
{
   import flash.display.MovieClip;
   
   public dynamic class pinzas1_35 extends MovieClip
   {
       
      
      public var cuerpo:MovieClip;
      
      public function pinzas1_35()
      {
         super();
         addFrameScript(7,this.frame8,19,this.frame20,30,this.frame31);
      }
      
      function frame8() : *
      {
         stop();
      }
      
      function frame20() : *
      {
         stop();
      }
      
      function frame31() : *
      {
         stop();
         parent.removeChild(this);
      }
   }
}
