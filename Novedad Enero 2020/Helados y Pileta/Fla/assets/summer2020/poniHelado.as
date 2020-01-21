package
{
   public dynamic class poniHelado extends TransportMamboAsset
   {
       
      
      public function poniHelado()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         vehicle = "poniHelado_on";
      }
   }
}
