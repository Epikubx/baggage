package
{
   public dynamic class camaMimo extends HolderMamboAsset
   {
       
      
      public function camaMimo()
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
