package
{
   public dynamic class reciclajeTipo_so extends NpcMamboAsset
   {
       
      
      public function reciclajeTipo_so()
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
