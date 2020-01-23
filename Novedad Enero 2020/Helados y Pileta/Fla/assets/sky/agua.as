package
{
   public dynamic class agua extends HolderMamboAsset
   {
	   
      public function agua()
      {
         super();
         addFrameScript(0,frame1);
      }
	  
      function frame1() : *
      {
         action = "flotando";
      }
   }
}
