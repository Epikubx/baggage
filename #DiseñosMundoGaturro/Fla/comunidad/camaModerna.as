package
{
   public dynamic class camaModerna extends HolderMamboAsset
   {
       
      
      public function camaModerna()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         sizeH = 3;
         action = "sit";
      }
   }
}
