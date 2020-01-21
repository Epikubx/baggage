package
{
   public dynamic class puffDonaCeleste extends HolderMamboAsset
   {
       
      
      public function puffDonaCeleste()
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
