package
{
   import flash.display.MovieClip;
   import flash.system.Security;
   
   public class MamboAsset extends MovieClip
   {
       
      
      public var questItem:Boolean = false;
      
      public var attributes:Object;
      
      public var sizeW:uint = 1;
      
      public var sizeH:uint = 1;
      
      public var blocks:Boolean = true;
      
      public function MamboAsset()
      {
         super();
         blocks = true;
         sizeW = 1;
         sizeH = 1;
         attributes = {};
         questItem = false;
         Security.allowDomain("*");
         Security.allowInsecureDomain("*");
      }
      
      public function process() : void
      {
         if(questItem)
         {
            attributes.questItem = true;
         }
      }
   }
}
