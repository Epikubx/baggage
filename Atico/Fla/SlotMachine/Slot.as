package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public dynamic class Slot extends MovieClip
   {
       
      
      public var texto:TextField;
      
      public var holder:MovieClip;
      
      public var maskit:MovieClip;
      
      public var types:Array;
      
      public var slots:Array;
      
      public var initialSpeed:Number;
      
      public var speed:Number;
      
      public var gap:Number;
      
      public var initialY:Number;
      
      public var curMilliseconds:int;
      
      public var slotChoiceName:String;
      
      public var slotChoice:MovieClip;
      
      public var acceleration:Number;
      
      public var elapsedMs:int;
      
      public var isStopping:Boolean;
      
      public var settedAcc:Boolean;
      
      public var currentState:String;
      
      public var hasPlayedSound:Boolean;
      
      public const STILL:String = "still";
      
      public const ROLLING:String = "rolling";
      
      public const STOPPING:String = "stopping";
      
      public const CORRECTING_STOP_POSITION:String = "CORRECTING_STOP_POSITION";
      
      public const STOPPED_ANIM:String = "STOPPED_ANIM";
      
      public var po:Number;
      
      public function Slot()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      public function init() : void
      {
         currentState = STILL;
         settedAcc = false;
         isStopping = false;
         types = new Array();
         types.push("Siete");
         types.push("Sandia");
         types.push("Limon");
         types.push("Diamante");
         types.push("Cereza");
         types.push("Campana");
         types.push("Cabeza");
         types.push("Cereza");
         types.push("Cereza");
         shuffleTypes();
         slotChoice = null;
         slotChoiceName = "Cereza";
         acceleration = 0;
         addSlots();
         curMilliseconds = getTimer();
         this.addEventListener(Event.ENTER_FRAME,onEnterFrameSlot);
      }
      
      public function addSlots() : void
      {
         var _loc1_:MovieClip = null;
         slots = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < types.length)
         {
            switch(types[_loc2_])
            {
               case "Siete":
                  _loc1_ = new Siete();
                  slots.push(_loc1_);
                  break;
               case "Sandia":
                  _loc1_ = new Sandia();
                  slots.push(_loc1_);
                  break;
               case "Limon":
                  _loc1_ = new Limon();
                  slots.push(_loc1_);
                  break;
               case "Diamante":
                  _loc1_ = new Diamante();
                  slots.push(_loc1_);
                  break;
               case "Cereza":
                  _loc1_ = new Cereza();
                  slots.push(_loc1_);
                  break;
               case "Campana":
                  _loc1_ = new Campana();
                  slots.push(_loc1_);
                  break;
               case "Cabeza":
                  _loc1_ = new Cabeza();
                  slots.push(_loc1_);
            }
            _loc1_.gotoAndStop("off");
            _loc2_++;
         }
         var _loc3_:int = initialY;
         holder.mask = maskit;
         var _loc4_:int = 0;
         while(_loc4_ < slots.length)
         {
            slots[_loc4_].y = _loc3_;
            slots[_loc4_].addEventListener(Event.ENTER_FRAME,onEnterFrameChild);
            holder.addChild(slots[_loc4_]);
            _loc3_ = _loc3_ + gap;
            _loc4_++;
         }
      }
      
      public function shuffleTypes() : void
      {
         var _loc1_:Array = new Array(types.length);
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = int(Math.random() * types.length);
            _loc1_[_loc3_] = types.splice(_loc2_,1)[0];
            _loc3_++;
         }
         types = _loc1_;
      }
      
      public function onEnterFrameSlot(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:int = getTimer() - curMilliseconds;
         curMilliseconds = getTimer();
         switch(currentState)
         {
            case STILL:
            case STOPPED_ANIM:
               return;
            case ROLLING:
               speed = speed + acceleration * _loc2_ / 1000;
               break;
            case STOPPING:
               if(!settedAcc)
               {
                  if(slotChoice.y > initialY && slotChoice.y < initialY + gap)
                  {
                     settedAcc = true;
                     _loc3_ = 3000;
                     _loc4_ = 0 - slotChoice.y;
                     acceleration = (_loc4_ - speed * _loc3_) / (_loc3_ * _loc3_ * 0.5) * 1000;
                     isStopping = true;
                  }
               }
               speed = speed + acceleration * _loc2_ / 1000;
               if(speed <= 0)
               {
                  currentState = CORRECTING_STOP_POSITION;
                  if(slotChoice.y < 0)
                  {
                     speed = 1;
                  }
                  else
                  {
                     speed = -1;
                  }
               }
               break;
            case CORRECTING_STOP_POSITION:
               acceleration = 0;
               speed = speed + acceleration * _loc2_ / 1000;
               if(slotChoice.y > -3 && slotChoice.y < 3)
               {
                  speed = 0;
                  acceleration = 0;
                  currentState = STOPPED_ANIM;
               }
         }
      }
      
      public function roll(param1:String, param2:String = "") : void
      {
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         hasPlayedSound = false;
         currentState = ROLLING;
         speed = initialSpeed;
         slotChoiceName = param1;
         acceleration = 0;
         settedAcc = false;
         isStopping = false;
         var _loc3_:String = "slot " + param1;
         if(param1 == "Random")
         {
            _loc5_ = new Array();
            _loc6_ = 0;
            while(_loc6_ < types.length)
            {
               if(types[_loc6_] != param2)
               {
                  _loc5_.push(types[_loc6_]);
               }
               else
               {
                  _loc3_ = _loc3_ + (", ex: " + param2);
               }
               _loc6_++;
            }
            slotChoiceName = _loc5_[randRange(0,_loc5_.length - 1)];
         }
         var _loc4_:int = 0;
         while(_loc4_ < slots.length)
         {
            if(slotChoiceName == "Cabeza" && slots[_loc4_] is Cabeza || slotChoiceName == "Siete" && slots[_loc4_] is Siete || slotChoiceName == "Sandia" && slots[_loc4_] is Sandia || slotChoiceName == "Limon" && slots[_loc4_] is Limon || slotChoiceName == "Diamante" && slots[_loc4_] is Diamante || slotChoiceName == "Cereza" && slots[_loc4_] is Cereza || slotChoiceName == "Campana" && slots[_loc4_] is Campana)
            {
               slotChoice = slots[_loc4_];
            }
            _loc4_++;
         }
      }
      
      public function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function stopRolling() : void
      {
         currentState = STOPPING;
         if(isStopping)
         {
            return;
         }
         isStopping = true;
      }
      
      public function onEnterFrameChild(param1:Event) : void
      {
         if(speed == 0)
         {
            return;
         }
         param1.target.y = param1.target.y + speed;
         if(param1.target.y >= gap * slots.length + initialY)
         {
            param1.target.y = param1.target.y - gap * slots.length;
         }
      }
      
      public function glow() : void
      {
         if(slotChoice != null)
         {
            slotChoice.gotoAndPlay("off");
         }
      }
      
      public function stopGlow() : void
      {
         if(slotChoice != null)
         {
            slotChoice.gotoAndStop("off");
         }
      }
      
      public function hasStopped() : Boolean
      {
         return currentState == STOPPED_ANIM;
      }
      
      public function playSound() : void
      {
         hasPlayedSound = true;
      }
      
      public function playedSound() : Boolean
      {
         return hasPlayedSound;
      }
      
      function frame1() : *
      {
         initialSpeed = 20;
         speed = 0;
         gap = 88;
         initialY = -1 * gap * 4 - 30;
         init();
         stop();
      }
   }
}
