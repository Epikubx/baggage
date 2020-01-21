package
{
   public dynamic class poni extends TransportMamboAsset
   {
       
      
      public function poni()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         vehicle = "poni_on";
      }
   }
}
