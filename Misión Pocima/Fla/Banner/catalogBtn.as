package
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public dynamic class catalogBtn extends MovieClip
   {
       
      
      public var ok:MovieClip;
      
      public var itemName:String;
      
      public var ph:MovieClip;
      
      public function catalogBtn()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      function frame1() : *
      {
         stop();
      }
      
      public function delay(param1:DisplayObject) : *
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:MovieClip = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         _loc2_ = 61;
         _loc3_ = 61;
         _loc4_ = 25;
         _loc5_ = 20;
         _loc6_ = param1 as MovieClip;
         if(_loc6_ && "process" in _loc6_)
         {
            _loc6_.process();
            param1.x = param1.x - _loc4_ * (_loc6_.sizeW - 1);
            param1.x = param1.x + _loc4_ * 0.3 * (_loc6_.sizeH - 1);
            param1.y = param1.y - _loc5_ * (_loc6_.sizeH - 1);
         }
         _loc7_ = _loc2_ / param1.width;
         _loc8_ = _loc3_ / param1.height;
         _loc9_ = Math.min(_loc7_,_loc8_);
         param1.scaleX = sign(param1.scaleX) * _loc9_;
         param1.scaleY = sign(param1.scaleY) * _loc9_;
         ph.addChild(param1);
      }
      
      public function sign(param1:Number) : int
      {
         return param1 > 0?1:param1 < 0?-1:0;
      }
   }
}
