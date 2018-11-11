package
{
   public dynamic class reciclajeCasa extends NpcMamboAsset
   {
       
      
      public function reciclajeCasa()
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
