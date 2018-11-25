package
{
   public dynamic class pisoMimo extends HouseMamboAsset
   {
       
      
      public function pisoMimo()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         type = "floor";
         generateAsset(this,new pisoMimo_on());
      }
   }
}
