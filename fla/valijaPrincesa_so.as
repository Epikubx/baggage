package
{
   public dynamic class valijaPrincesa extends NpcMamboAsset
   {
       
      
      public function valijaPrincesa()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         behavior = "equipajeValijaPrincesa";
         stop();
      }
   }
}
