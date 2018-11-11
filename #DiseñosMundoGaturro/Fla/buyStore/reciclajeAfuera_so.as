package
{
   public dynamic class reciclajeAfuera_so extends NpcMamboAsset
   {
       
      
      public function reciclajeAfuera_so()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         behavior = "reciclaje";
         stop();
      }
   }
}
