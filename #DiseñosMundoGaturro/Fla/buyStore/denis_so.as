package
{
   public dynamic class denis_so extends NpcMamboAsset
   {
       
      
      public function denis_so()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         behavior = "denisComunidad";
         stop();
      }
   }
}
