package
{
   import flash.display.MovieClip;
   
   public dynamic class estanteNube extends MamboAsset
   {
       
      
      public var slot1:MovieClip;
      
      public var slot2:MovieClip;
      
      public var slot3:MovieClip;
      
      public var slot4:MovieClip;
      
      public var slot5:MovieClip;
      
      public var slot6:MovieClip;
      
      public function estanteNube()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         sizeW = 2;
      }
   }
}
