package
{
   public class GrabbableMamboAsset extends MamboAsset
   {
       
      
      public var stackBy:int = 1;
      
      public var session:Boolean = false;
      
      public function GrabbableMamboAsset()
      {
         super();
         blocks = false;
      }
      
      override public function process() : void
      {
         if(this.stackBy !== 1)
         {
            attributes.stackBy = this.stackBy === -1?int.MAX_VALUE:this.stackBy;
         }
         attributes.grabbable = true;
         attributes.session = this.session;
         super.process();
      }
   }
}
