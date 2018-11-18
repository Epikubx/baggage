package
{
   public dynamic class bruja_so extends NpcMamboAsset
   {
       
      
      public function bruja_so()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         behavior = "angelicaPocimaQuest";
         stop();
      }
   }
}
