package
{
   public dynamic class boinaMimo extends ClothMamboAsset
   {
       
      
      public function boinaMimo()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         clothes = {"hats":"boinaMimo_on"};
      }
   }
}
