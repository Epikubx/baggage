package
{
   public dynamic class valijaSirena extends NpcMamboAsset
   {
       
      
      public function valijaSirena()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         behavior = "equipajeValijaSirena";
         stop();
      }
   }
}
