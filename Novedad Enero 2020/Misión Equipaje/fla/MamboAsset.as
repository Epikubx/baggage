package
{
   import flash.display.MovieClip;
   import flash.system.Security;
   
   public class MamboAsset extends MovieClip
   {
       
      
      public var blocks:Boolean = true;
      
      public var sizeW:uint = 1;
      
      public var sizeH:uint = 1;
      
      public var attributes:Object;
      
      public var questItem:Boolean = false;
      
      public function MamboAsset()
      {
         super();
         this.attributes = {};
         Security.allowDomain("*");
         Security.allowInsecureDomain("*");
      }
      
      public function process() : void
      {
         if(this.questItem)
         {
            this.attributes.questItem = true;
         }
      }
   }
}
