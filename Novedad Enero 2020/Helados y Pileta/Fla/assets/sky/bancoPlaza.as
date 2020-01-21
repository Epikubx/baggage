package
{
   public dynamic class bancoPlaza extends HolderMamboAsset
   {
       
      
      public function bancoPlaza()
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
