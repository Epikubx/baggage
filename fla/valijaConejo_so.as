package
{
   public dynamic class valijaConejo extends NpcMamboAsset
   {
       
      
      public function valijaConejo()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         behavior = "equipajeValijaConejo";
         stop();
      }
   }
}
