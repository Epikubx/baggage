package
{
   public dynamic class paredMimo extends HouseMamboAsset
   {
       
      
      public function paredMimo()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         type = "wall";
         generateAsset(this,new paredMimo_on());
      }
   }
}
