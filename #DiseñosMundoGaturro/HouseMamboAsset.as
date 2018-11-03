package
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class HouseMamboAsset extends MamboAsset
   {
       
      private var container:String;
	   
      public var type:String;
      
      private var newAsset:DisplayObject;
      
      private var hma:HouseMamboAsset;
      
      private var _container:DisplayObjectContainer;
      
      public function HouseMamboAsset()
      {
         super();
      }
      
      public function generateAsset(param1:HouseMamboAsset, param2:DisplayObject) : void
      {
         this.newAsset = param2;
         this.hma = param1;
         switch(this.type)
         {
            case "wall":
               this.container = "privateWall_container";
               break;
            case "floor":
               this.container = "privateFloor_container";
         }
         this.hma.addEventListener(Event.ADDED_TO_STAGE,this.added);
      }
      
      private function added(param1:Event) : void
      {
         this.hma.removeEventListener(Event.ADDED_TO_STAGE,this.added);
         if(String(DisplayObjectContainer(this.hma.parent)) == "[object GaturroRoomSceneObjectView]")
         {
            this.hma.addEventListener(Event.REMOVED_FROM_STAGE,this.removed);
            this.hma.addEventListener(Event.ENTER_FRAME,this.loopForCreatingObject);
         }
      }
      
      private function loopForCreatingObject(param1:Event) : void
      {
         this.lookFor(DisplayObjectContainer(stage));
      }
      
      private function removed(param1:Event) : void
      {
         this.hma.removeEventListener(Event.REMOVED_FROM_STAGE,this.removed);
         if(this._container)
         {
            this.cleanChilds(MovieClip(this._container));
         }
      }
      
      public function lookFor(param1:DisplayObjectContainer) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:int = param1.numChildren;
         while(_loc2_--)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc3_ is MovieClip && MovieClip(_loc3_).name == this.container)
            {
               this._container = MovieClip(_loc3_);
               this.drawItem(MovieClip(_loc3_));
               this.hma.removeEventListener(Event.ENTER_FRAME,this.loopForCreatingObject);
               return;
            }
            if(_loc3_ is DisplayObjectContainer)
            {
               this.lookFor(DisplayObjectContainer(_loc3_));
            }
         }
      }
      
      private function drawItem(param1:MovieClip) : void
      {
         this.cleanChilds(param1);
         param1.addChild(this.newAsset);
         gotoAndStop(2);
         this.hma.alpha = 0;
      }
      
      private function cleanChilds(param1:MovieClip) : void
      {
         var _loc2_:int = param1.numChildren;
         while(_loc2_--)
         {
            param1.removeChildAt(_loc2_);
         }
      }
   }
}
