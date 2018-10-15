package
{
   public dynamic class lapizPatita extends TransportMamboAsset
   {
       
      
      public function lapizPatita()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         vehicle = "lapizPatita_on";
      }
   }
}
