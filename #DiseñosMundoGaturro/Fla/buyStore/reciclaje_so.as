package
{
   public dynamic class reciclaje_so extends NpcMamboAsset
   {
       
      
      public function reciclaje_so()
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
