package
{
   public dynamic class valijaNikki extends NpcMamboAsset
   {
       
      
      public function valijaNikki()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         behavior = "equipajeValijaNikki";
         stop();
      }
   }
}
