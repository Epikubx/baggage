package
{
   public dynamic class poni_on extends TransportOnMamboAsset
   {
       
      
      public function poni_on()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7);
      }
      
      function frame1() : *
      {
         speed = uint(300);
         type = "horse";
      }
      
      function frame7() : *
      {
         stop();
      }
   }
}
