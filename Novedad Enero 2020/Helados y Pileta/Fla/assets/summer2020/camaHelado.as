package
{
   public dynamic class camaHelado extends HolderMamboAsset
   {
       
      
      public function camaHelado()
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
