package
{
   import flash.display.MovieClip;
   
   public class HolderMamboAsset extends MamboAsset
   {
      
      public var capacity:uint = 1;
      
      public var action:String;
      
      public function HolderMamboAsset()
      {
         super();
         blocks = false;
      }
      
      override public function process() : void
      {
         if(capacity !== 1)
         {
            attributes.capacity = capacity;
         }
         if(action)
         {
            attributes.useAction = action;
         }
         attributes.holder = true;
         super.process();
      }
   }
}
