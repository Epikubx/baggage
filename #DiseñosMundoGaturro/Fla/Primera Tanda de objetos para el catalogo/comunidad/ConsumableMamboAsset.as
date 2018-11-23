package
{
   public class ConsumableMamboAsset extends UsableMamboAsset
   {
       
      
      public var uses:uint = 1;
      
      public function ConsumableMamboAsset()
      {
         super();
      }
      
      override public function process() : void
      {
         attributes.uses = uses;
         super.process();
      }
   }
}
