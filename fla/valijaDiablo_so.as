package
{
   public dynamic class valijaDiablo extends NpcMamboAsset
   {
       
      
      public function valijaDiablo()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         behavior = "equipajeValijaDiablo";
         stop();
      }
   }
}
