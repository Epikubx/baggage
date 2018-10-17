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
         attributes = {};
         super();
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
