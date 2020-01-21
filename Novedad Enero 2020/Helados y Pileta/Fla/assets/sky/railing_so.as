package
{
   public dynamic class railing_so extends MamboAsset
   {
       
      
      public function railing_so()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         this.mouseEnabled = false;
         this.mouseChildren = false;
      }
   }
}
