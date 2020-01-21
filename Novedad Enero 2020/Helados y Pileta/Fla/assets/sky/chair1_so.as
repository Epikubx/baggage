package
{
   public dynamic class chair1_so extends HolderMamboAsset
   {
       
      
      public function chair1_so()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         action = "sit";
      }
   }
}
