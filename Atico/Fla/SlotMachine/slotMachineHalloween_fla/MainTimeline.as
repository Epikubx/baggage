package slotMachineHalloween_fla
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.system.Security;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public dynamic class MainTimeline extends MovieClip
   {
       
      
      public var nada:MovieClip;
	   
	  public var consola:TextField;
      
      public var money_txt:MovieClip;
	   
	  public var neededTry:TextField;
	   
	  public var tryAgain:MovieClip;
      
      public var reward1:MovieClip;
      
      public var reward2:MovieClip;
      
      public var reward3:MovieClip;
      
      public var slot1:Slot;
      
      public var reward4:MovieClip;
      
      public var slot2:Slot;
      
      public var reward5:MovieClip;
      
      public var slot3:Slot;
      
      public var reward6:MovieClip;
      
      public var neededCoins:TextField;
      
      public var money:TextField;
      
      public var reward7:MovieClip;
      
      public var reward8:MovieClip;
      
      public var lights1:MovieClip;
      
      public var lights2:MovieClip;
      
      public var close:SimpleButton;
      
      public var debugText:TextField;
      
      public var btnRoll:MovieClip;
      
      public var api:Object;
      
      public var todayStr:String;
	  
	  public var out:MovieClip;
      
      public var lastDayUsedStr:String;
      
      public var awardList:Array;
      
      public var awardReached:Array;
      
      public var dayNumber:int;
      
      public var reward:Object;
      
      public var isRolling:Boolean;
      
      public var rollInitTime:int;
      
      public var types:Array;
      
      public var price:int;
      
      public var rewards:Array;
      
      public function MainTimeline()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      public function onRollOverRoll(param1:MouseEvent) : void
      {
         if(btnRoll.mouseEnabled)
         {
            btnRoll.gotoAndStop("over");
         }
      }
      
      public function onRollOutRoll(param1:MouseEvent) : void
      {
         if(btnRoll.mouseEnabled)
         {
            btnRoll.gotoAndStop("on");
         }
      }
	  
      public function init() : void
      {
         isRolling = false;
         types = new Array();
         types.push("Cabeza");
         types.push("Siete");
         types.push("Sandia");
         types.push("Limon");
         types.push("Diamante");
         types.push("Cereza");
         types.push("Campana");
         lights1.gotoAndStop("off");
         lights2.gotoAndStop("off");
         btnRoll.mouseChildren = false;
         btnRoll.buttonMode = true;
         btnRoll.addEventListener(MouseEvent.CLICK,onClickRoll);
         btnRoll.addEventListener(MouseEvent.ROLL_OVER,onRollOverRoll);
         btnRoll.addEventListener(MouseEvent.ROLL_OUT,onRollOutRoll);
         addEventListener(Event.REMOVED_FROM_STAGE,onRemoveBanner);
      }
      
      public function onRemoveBanner(param1:Event) : void
      {
         btnRoll.removeEventListener(MouseEvent.CLICK,onClickRoll);
         btnRoll.removeEventListener(MouseEvent.ROLL_OVER,onRollOverRoll);
         btnRoll.removeEventListener(MouseEvent.ROLL_OUT,onRollOutRoll);
         if(this.hasEventListener(Event.ENTER_FRAME))
         {
            removeEventListener(Event.ENTER_FRAME,checkRolls);
         }
         api.stopSound("slotMachine_rolling");
      }
      
      public function onClickRoll(param1:MouseEvent) : void
      {
         if(isRolling)
         {
            return;
         }
		 if(this.api.getProfileAttribute("intentosSlot") >= "20")
         {
			this.tryAgain.visible = true;
			tryAgain.gotoAndStop("cero");
			this.btnRoll.gotoAndStop("pull");
			this.btnRoll.mouseEnabled = false;
			this.btnRoll.buttonMode = false;
			noTry.gotoAndPlay(2);
			return;
         }
         var _loc2_:* = api.getProfileAttribute("coins");
         var _loc3_:int = _loc2_ - price;
         if(_loc3_ <= 0)
         {
            return;
         }
         money.text = "" + _loc3_;
         api.setProfileAttribute("system_coins",_loc3_);
         isRolling = true;
         rollInitTime = getTimer();
         roll();
         lights1.gotoAndPlay("tira");
         lights2.gotoAndPlay("tira");
         this.addEventListener(Event.ENTER_FRAME,checkRolls);
         if(!this.api.isCitizen)
         {
			var slapt:int = api.getProfileAttribute("intentosSlot");
			api.setProfileAttribute("intentosSlot",slapt + 1);
			initVip();
         }
      }
      
      public function checkRolls(param1:Event) : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:int = getTimer() - rollInitTime;
         if(_loc2_ > 3200)
         {
            if(slot1.hasStopped() && slot2.hasStopped() && slot3.hasStopped())
            {
               isRolling = false;
               if(reward != null)
               {
                  if(reward.reward is String)
                  {
                     _loc4_ = reward.reward as String;
                     api.giveUser(_loc4_,1);
                  }
                  else
                  {
                     _loc5_ = reward.reward as int;
                     _loc6_ = api.getProfileAttribute("coins") + _loc5_;
                     api.setProfileAttribute("system_coins",_loc6_);
                     money.text = "" + _loc6_;
                  }
                  _loc3_ = getChildByName("reward" + reward.ind) as MovieClip;
                  _loc3_.gotoAndPlay(0);
                  lights1.gotoAndPlay("ganas");
                  lights2.gotoAndPlay("ganas");
                  slot1.glow();
                  slot2.glow();
                  slot3.glow();
                  api.playSound("slotMachine_win");
               }
               else
               {
                  lights1.gotoAndStop("off");
                  lights2.gotoAndStop("off");
                  nada.gotoAndPlay(2);
               }
			   if(this.api.getProfileAttribute("intentosSlot") >= "20")
			   {
				   btnRoll.gotoAndStop("pull");
                   btnRoll.mouseEnabled = false;
				   btnRoll.buttonMode = false;
				   api.stopSound("slotMachine_rolling");
				   this.removeEventListener(Event.ENTER_FRAME,checkRolls);
			   }
			   else
			   {
               btnRoll.gotoAndStop("on");
               btnRoll.mouseEnabled = true;
               api.stopSound("slotMachine_rolling");
               this.removeEventListener(Event.ENTER_FRAME,checkRolls);
			   }
            }
         }
         else if(_loc2_ > 2400)
         {
            slot3.stopRolling();
         }
         else if(_loc2_ > 1600)
         {
            slot2.stopRolling();
         }
         else if(_loc2_ > 800)
         {
            slot1.stopRolling();
         }
         if(slot1.hasStopped() && !slot1.playedSound())
         {
            api.playSound("slotMachine_slotStop");
            slot1.playSound();
         }
         if(slot2.hasStopped() && !slot2.playedSound())
         {
            api.playSound("slotMachine_slotStop");
            slot2.playSound();
         }
         if(slot3.hasStopped() && !slot3.playedSound())
         {
            api.playSound("slotMachine_slotStop");
            slot3.playSound();
         }
      }
      
      public function removeLights() : void
      {
         lights1.gotoAndStop("off");
         lights2.gotoAndStop("off");
         slot1.stopGlow();
         slot2.stopGlow();
         slot3.stopGlow();
         var _loc1_:int = 1;
         while(_loc1_ <= 8)
         {
            (getChildByName("reward" + _loc1_) as MovieClip).gotoAndStop(0);
            _loc1_++;
         }
      }
      
      public function roll() : void
      {
         btnRoll.gotoAndStop("off");
         btnRoll.mouseEnabled = false;
         removeLights();
         api.playSound("slotMachine_clickRoll");
         api.playSound("slotMachine_rolling",200);
         var _loc1_:Array = getRolledSlots();
         if(slot1 != null)
         {
            slot1.roll(_loc1_[0]);
         }
         if(slot2 != null)
         {
            slot2.roll(_loc1_[1]);
         }
         if(slot3 != null)
         {
            if(_loc1_[2] == "Random")
            {
               slot3.roll(_loc1_[2],_loc1_[0]);
            }
            else
            {
               slot3.roll(_loc1_[2]);
            }
         }
      }
      
      public function getRolledSlots() : Array
      {
         var _loc4_:* = null;
         var _loc7_:Object = null;
         var _loc1_:Number = Math.random();
         var _loc2_:Array = new Array();
         var _loc3_:Number = _loc1_;
         reward = null;
         _loc4_ = "prob: " + _loc1_.toPrecision(3) + "\n";
         var _loc5_:Number = 0;
         var _loc6_:int = 0;
         while(_loc6_ < rewards.length)
         {
            _loc7_ = rewards[_loc6_];
            _loc5_ = _loc5_ + _loc7_.probability;
            _loc4_ = _loc4_ + (", (i: " + _loc6_ + ", curProb: " + _loc3_.toPrecision(3) + ", rewProb: " + _loc7_.probability + ", chance: " + _loc5_.toPrecision(3));
            if(_loc3_ <= _loc5_)
            {
               _loc4_ = _loc4_ + (", gano! " + _loc7_.slot1 + ", " + _loc7_.slot2 + ", " + _loc7_.slot3);
               _loc4_ = _loc4_ + (", premio: " + _loc7_.reward);
               _loc2_.push(_loc7_.slot1);
               _loc2_.push(_loc7_.slot2);
               _loc2_.push(_loc7_.slot3);
               reward = _loc7_;
               _loc4_ = _loc4_ + ")";
               break;
            }
            _loc4_ = _loc4_ + ")\n";
            _loc6_++;
         }
         if(reward == null)
         {
            _loc2_ = createNoWinSlots();
         }
         return _loc2_;
      }
      
      public function createNoWinSlots() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:Array = new Array();
         var _loc3_:String = types[randRange(0,types.length - 1)];
         var _loc4_:int = 0;
         while(_loc4_ < types.length)
         {
            if(types[_loc4_] != "Cereza")
            {
               _loc2_.push(types[_loc4_]);
            }
            _loc4_++;
         }
         var _loc5_:String = "";
         var _loc6_:String = _loc2_[randRange(0,_loc2_.length - 1)];
         var _loc7_:int = 0;
         while(_loc7_ < _loc2_.length)
         {
            if(_loc2_[_loc7_] as String == _loc6_)
            {
               _loc2_.splice(_loc7_,1);
               break;
            }
            _loc7_++;
         }
         var _loc8_:String = _loc2_[randRange(0,_loc2_.length - 1)];
         _loc1_.push(_loc3_);
         _loc1_.push(_loc6_);
         _loc1_.push(_loc8_);
         return _loc1_;
      }
      
      public function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function acquireAPI(param1:Object) : void
      {
         init();
         this.api = param1;
         this.alpha = 0;
         param1.freeze();
         this.alpha = 1;
         initRewards();
		 if(!this.api.isCitizen)
		 {
			 initVip();
		 }
      }
      
      function initVip() : *
	  {
		 var slapt:int = api.getProfileAttribute("intentosSlot");
		 switch( String (slapt))
		  {
			  case "20":this.tryAgain.visible = true;
		            	this.bruja.visible = true;
		            	this.btnRoll.gotoAndStop("pull");
		            	this.btnRoll.mouseEnabled = false;
		            	this.btnRoll.buttonMode = false;
			            noTry.gotoAndPlay(2);
		                tryAgain.consola.text = "0";
						break;
			  case "19": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "1";
						break;
			  case "18": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            consola.text = "2";
						break;
			  case "17": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "3";
						break;
			  case "16": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "4";
						break;
			  case "15": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "5";
						break;
			  case "14": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "6";
						break;
			  case "13": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "7";
						break;
			  case "12": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "8";
						break;
			  case "11": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "9";
						break;
			  case "10": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "10";
						break;
			  case "9": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "11";
						break;
			  case "8": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "12";
						break;
			  case "7": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "13";
						break;
			  case "6": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "14";
						break;
			  case "5": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "15";
						break;
			  case "4": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "16";
						break;
			  case "3": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "17";
						break;
			  case "2": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "18";
						break;
			  case "1": this.tryAgain.visible = true;
		            	this.bruja.visible = true;
			            tryAgain.consola.text = "19";
						break;
			  case "0": this.bruja.visible = true;
		            	this.tryAgain.visible = true;
						tryAgain.consola.text = "20";
						break;
		  }
	  }
	  
      public function initRewards() : *
      {
         var _loc1_:Object = null;
         var _loc3_:String = null;
         var _loc5_:Object = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Object = null;
		 this.btnRoll.gotoAndStop("on");
         money.text = "" + api.getProfileAttribute("coins");
         price = api.config.slotMachine.price;
		 this.tryAgain.visible = false;
		  this.bruja.visible = false;
         neededCoins.text = "" + price;
         rewards = new Array();
         var _loc2_:int = 1;
         while(_loc2_ <= 8)
         {
            _loc1_ = new Object();
            _loc5_ = api.config.slotMachine.rewards["reward" + _loc2_].prize;
            if(_loc5_ is Number)
            {
               _loc1_.reward = api.config.slotMachine.rewards["reward" + _loc2_].prize = _loc5_;
            }
            else
            {
               _loc1_.reward = api.config.slotMachine.rewards["reward" + _loc2_].prize.toString();
            }
            _loc1_.probability = api.config.slotMachine.rewards["reward" + _loc2_].probability;
            _loc1_.slot1 = api.config.slotMachine.rewards["reward" + _loc2_]["slots"].slot1.toString();
            _loc1_.slot2 = api.config.slotMachine.rewards["reward" + _loc2_]["slots"].slot2.toString();
            _loc1_.slot3 = api.config.slotMachine.rewards["reward" + _loc2_]["slots"].slot3.toString();
            _loc1_.ind = _loc2_;
            _loc6_ = getChildByName("reward" + _loc2_) as MovieClip;
            _loc6_.slot1.mc.removeChildAt(0);
            _loc6_.slot1.mc.addChild(getSlotMc(_loc1_.slot1));
            _loc6_.slot1.gotoAndStop("on");
            _loc6_.slot2.mc.removeChildAt(0);
            _loc6_.slot2.mc.addChild(getSlotMc(_loc1_.slot2));
            _loc6_.slot2.gotoAndStop("on");
            _loc6_.slot3.mc.removeChildAt(0);
            _loc6_.slot3.mc.addChild(getSlotMc(_loc1_.slot3));
            _loc6_.slot3.gotoAndStop("on");
            _loc6_.gotoAndStop(0);
            if(_loc1_.reward is String)
            {
               api.libraries.fetch(_loc1_.reward,addClothReward,_loc2_);
            }
            else
            {
               _loc6_.prizeCoin.prizeCoin.text = "" + _loc1_.reward;
               _loc6_.prizeCloth.visible = false;
            }
            rewards.push(_loc1_);
            _loc2_++;
         }
         _loc3_ = "Loaded: ";
         var _loc4_:int = 0;
         while(_loc4_ < rewards.length)
         {
            _loc7_ = rewards[_loc4_];
            _loc3_ = _loc3_ + ("(i:" + _loc4_ + " prize: " + _loc7_.reward + ", p:" + _loc7_.probability + ", " + _loc7_.slot1 + ", " + _loc7_.slot2 + ", " + _loc7_.slot3 + "), ");
            _loc4_++;
         }
      }
      
      public function addClothReward(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:MovieClip = getChildByName("reward" + param2) as MovieClip;
         if(_loc3_ != null)
         {
            _loc3_.prizeCloth.removeChildAt(0);
            _loc3_.prizeCloth.addChild(param1);
            _loc3_.prizeCloth.stop();
         }
      }
      
      public function getSlotMc(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         switch(param1)
         {
            case "Siete":
               _loc2_ = new Siete();
               break;
            case "Sandia":
               _loc2_ = new Sandia();
               break;
            case "Limon":
               _loc2_ = new Limon();
               break;
            case "Diamante":
               _loc2_ = new Diamante();
               break;
            case "Cereza":
               _loc2_ = new Cereza();
               break;
            case "Campana":
               _loc2_ = new Campana();
               break;
            case "Cabeza":
               _loc2_ = new Cabeza();
               break;
            default:
               _loc2_ = new Random();
         }
         _loc2_.gotoAndStop("on");
         return _loc2_;
      }
      
      public function checkState() : void
      {
         var _loc1_:String = "period-" + todayStr.split("-")[0] + "-" + todayStr.split("-")[1];
      }
      
      function frame1() : *
      {
         Security.allowDomain("*");
         Security.allowInsecureDomain("*");
         lastDayUsedStr = "";
         reward = 0;
         stop();
      }
   }
}