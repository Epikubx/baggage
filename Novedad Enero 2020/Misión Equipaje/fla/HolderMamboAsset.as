package
{
   public class HolderMamboAsset extends MamboAsset
   {
       
      
      public var capacity:uint = 1;
      
      public var action:String;
      
      public var behavior:String;
      
      public var monitorAttributes:Boolean = false;
      
      public function HolderMamboAsset()
      {
         super();
         blocks = false;
      }
      
      override public function process() : void
      {
         if(this.capacity !== 1)
         {
            attributes.capacity = this.capacity;
         }
         if(this.action)
         {
            attributes.useAction = this.action;
         }
         attributes.holder = true;
         attributes.behavior = this.behavior;
         attributes.monitorAttributes = this.monitorAttributes;
         super.process();
      }
   }
}
