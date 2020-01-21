package
{
   public dynamic class lapizEstrella_on extends TransportOnMamboAsset
   {
       
      
      public function lapizEstrella_on()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         speed = 300;
         type = "vuela";
      }
   }
}
