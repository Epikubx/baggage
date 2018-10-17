package
{
   public dynamic class lapizPatita_on extends TransportOnMamboAsset
   {
       
      
      public function lapizPatita_on()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         speed = 235;
         type = "vuela";
      }
   }
}
