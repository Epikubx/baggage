package
{
   public dynamic class valijaAngel extends NpcMamboAsset
   {
       
      
      public function valijaAngel()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         behavior = "equipajeValijaAngel";
         stop();
      }
   }
}
