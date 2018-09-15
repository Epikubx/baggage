package
{
   public dynamic class valijaChaman extends NpcMamboAsset
   {
       
      
      public function valijaChaman()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         behavior = "equipajeValijaChaman";
         stop();
      }
   }
}
