package
{
   public dynamic class jeremias_so extends NpcMamboAsset
   {
       
      
      public function jeremias_so()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         behavior = "aniversarioJeremias";
         stop();
         blocks = false;
      }
   }
}
