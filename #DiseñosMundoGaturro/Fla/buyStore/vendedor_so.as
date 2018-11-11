package
{
   public dynamic class vendedor_so extends NpcMamboAsset
   {
       
      
      public function vendedor_so()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         behavior = "resell";
         sizeW = 2;
         stop();
      }
   }
}
