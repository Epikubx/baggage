package
{
   public dynamic class agua_so extends HolderMamboAsset
   {
	   
      public function agua_so()
      {
         super();
         addFrameScript(0,frame1);
      }
	  
	  public function acquireAPI(param1:Object) : void
      {
         if(param1.isDesktop == true)
         {
            aguaPileta.gotoAndStop(1);
         }
         else
         {
            aguaPileta.gotoAndStop(2);
         }
      }
	  
      function frame1() : *
      {
         action = "flotando";
      }
   }
}
