package newMap_fla
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public dynamic class GaturroMC_230 extends MovieClip
   {
       
      
      public var chat_ph:MovieClip;
      
      public var icon:MovieClip;
      
      public var objects_ph:MovieClip;
      
      public var belly:MovieClip;
      
      public var medal_ph:MovieClip;
      
      public var foot1:MovieClip;
      
      public var foot2:MovieClip;
      
      public var transport:MovieClip;
      
      public var arm1:MovieClip;
      
      public var head:MovieClip;
      
      public var arm2:MovieClip;
      
      public var transportMC:MovieClip;
      
      public var transportMC2:MovieClip;
      
      public function GaturroMC_230()
      {
         super();
         addFrameScript(0,this.frame1,22,this.frame23,37,this.frame38,59,this.frame60,87,this.frame88,109,this.frame110,141,this.frame142,194,this.frame195,203,this.frame204,226,this.frame227,350,this.frame351,366,this.frame367,412,this.frame413,480,this.frame481,491,this.frame492,500,this.frame501,508,this.frame509,517,this.frame518,524,this.frame525,565,this.frame566,571,this.frame572,580,this.frame581,585,this.frame586,590,this.frame591,652,this.frame653,674,this.frame675,686,this.frame687,719,this.frame720,800,this.frame801,809,this.frame810,839,this.frame840,882,this.frame883,887,this.frame888,889,this.frame890,937,this.frame938,942,this.frame943,944,this.frame945,952,this.frame953,965,this.frame966,1018,this.frame1019,1020,this.frame1021,1035,this.frame1036,1037,this.frame1038,1047,this.frame1048,1068,this.frame1069,1071,this.frame1072,1072,this.frame1073,1074,this.frame1075,1080,this.frame1081,1128,this.frame1129,1132,this.frame1133,1135,this.frame1136,1168,this.frame1169,1205,this.frame1206,1217,this.frame1218,1233,this.frame1234,1261,this.frame1262,1264,this.frame1265,1314,this.frame1315,1341,this.frame1342,1355,this.frame1356,1434,this.frame1435,1441,this.frame1442,1459,this.frame1460,1470,this.frame1471,1479,this.frame1480,1510,this.frame1511,1525,this.frame1526,1579,this.frame1580,1627,this.frame1628,1638,this.frame1639,1685,this.frame1686,1731,this.frame1732,1765,this.frame1766,1775,this.frame1776,1799,this.frame1800,1808,this.frame1809,1811,this.frame1812,1850,this.frame1851,1923,this.frame1924,1932,this.frame1933,1983,this.frame1984,2012,this.frame2013,2050,this.frame2051,2059,this.frame2060,2077,this.frame2078,2119,this.frame2120,2130,this.frame2131,2139,this.frame2140,2224,this.frame2225,2333,this.frame2334,2342,this.frame2343,2369,this.frame2370,2383,this.frame2384,2388,this.frame2389,2399,this.frame2400,2413,this.frame2414,2424,this.frame2425,2452,this.frame2453,2457,this.frame2458,2469,this.frame2470,2545,this.frame2546,2548,this.frame2549,2584,this.frame2585,2650,this.frame2651,2661,this.frame2662,2678,this.frame2679,2746,this.frame2747,2758,this.frame2759,2808,this.frame2809,2845,this.frame2846,2906,this.frame2907,2910,this.frame2911,2915,this.frame2916,3020,this.frame3021,3034,this.frame3035,3042,this.frame3043,3048,this.frame3049,3050,this.frame3051,3061,this.frame3062,3073,this.frame3074,3083,this.frame3084,3098,this.frame3099,3194,this.frame3195,3200,this.frame3201,3219,this.frame3220,3238,this.frame3239,3241,this.frame3242,3293,this.frame3294,3317,this.frame3318,3390,this.frame3391,3399,this.frame3400,3429,this.frame3430,3451,this.frame3452,3452,this.frame3453,3482,this.frame3483,3500,this.frame3501,3501,this.frame3502,3531,this.frame3532,3555,this.frame3556,3560,this.frame3561,3590,this.frame3591,3611,this.frame3612,3616,this.frame3617,3627,this.frame3628,3633,this.frame3634,3647,this.frame3648,3689,this.frame3690,3696,this.frame3697,3714,this.frame3715,3727,this.frame3728,3746,this.frame3747,3772,this.frame3773,3781,this.frame3782,3800,this.frame3801,3823,this.frame3824,3844,this.frame3845,3845,this.frame3846,3855,this.frame3856,3868,this.frame3869,3887,this.frame3888,3913,this.frame3914,3924,this.frame3925,3930,this.frame3931,3943,this.frame3944,4001,this.frame4002,4002,this.frame4003,4047,this.frame4048,4066,this.frame4067,4102,this.frame4103,4105,this.frame4106,4111,this.frame4112,4112,this.frame4113,4159,this.frame4160,4163,this.frame4164,4198,this.frame4199,4243,this.frame4244,4288,this.frame4289,4327,this.frame4328,4358,this.frame4359,4411,this.frame4412,4431,this.frame4432,4489,this.frame4490,4502,this.frame4503,4530,this.frame4531,4536,this.frame4537,4547,this.frame4548,4565,this.frame4566,4568,this.frame4569,4573,this.frame4574,4609,this.frame4610,4615,this.frame4616);
      }
      
      public function reset() : void
      {
         this.head.eye1.color2.gotoAndStop(1);
         this.head.eye2.color2.gotoAndStop(1);
         this.head.mouth1.color1.gotoAndStop(1);
         this.head.mouth2.color1.gotoAndStop(1);
         this.head.eye1.gotoAndStop(1);
         this.head.eye2.gotoAndStop(1);
         this.head.mouth1.gotoAndStop(1);
         this.head.mouth2.gotoAndStop(1);
         this.headAction("reseted");
      }
      
      public function headAction(param1:String) : void
      {
         this.head.gotoAndStop(param1);
      }
      
      public function eyes(param1:String) : void
      {
         this.head.eye1.color2.gotoAndStop(1);
         this.head.eye2.color2.gotoAndStop(1);
         this.head.eye1.gotoAndStop(param1);
         this.head.eye2.gotoAndStop(param1);
      }
      
      public function mouth(param1:String) : void
      {
         this.head.mouth1.color1.gotoAndStop(1);
         this.head.mouth2.color1.gotoAndStop(1);
         this.head.mouth1.gotoAndStop(param1);
         this.head.mouth2.gotoAndStop(param1);
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame23() : *
      {
         gotoAndPlay("walk");
      }
      
      function frame38() : *
      {
         this.eyes("closed");
      }
      
      function frame60() : *
      {
         this.eyes("reseted");
      }
      
      function frame88() : *
      {
         this.eyes("closed");
      }
      
      function frame110() : *
      {
         this.eyes("reseted");
      }
      
      function frame142() : *
      {
         gotoAndPlay("dance");
      }
      
      function frame195() : *
      {
         this.eyes("closed");
      }
      
      function frame204() : *
      {
         this.eyes("reseted");
      }
      
      function frame227() : *
      {
         gotoAndPlay("dance2");
      }
      
      function frame351() : *
      {
         gotoAndPlay("dance3");
      }
      
      function frame367() : *
      {
         this.eyes("love");
      }
      
      function frame413() : *
      {
         gotoAndPlay("dance4");
      }
      
      function frame481() : *
      {
         gotoAndPlay("dance5");
      }
      
      function frame492() : *
      {
         this.eyes("closed");
      }
      
      function frame501() : *
      {
         this.eyes("reseted");
      }
      
      function frame509() : *
      {
         this.eyes("closed");
      }
      
      function frame518() : *
      {
         this.eyes("reseted");
      }
      
      function frame525() : *
      {
         this.eyes("closed");
      }
      
      function frame566() : *
      {
         this.eyes("reseted");
      }
      
      function frame572() : *
      {
         this.eyes("closed");
      }
      
      function frame581() : *
      {
         this.eyes("reseted");
      }
      
      function frame586() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame591() : *
      {
         this.eyes("closed");
      }
      
      function frame653() : *
      {
         this.eyes("reseted");
      }
      
      function frame675() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame687() : *
      {
         this.mouth("laugh");
      }
      
      function frame720() : *
      {
         this.eyes("closed");
      }
      
      function frame801() : *
      {
         this.mouth("reseted");
         this.eyes("reseted");
      }
      
      function frame810() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame840() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame883() : *
      {
         this.eyes("closed");
      }
      
      function frame888() : *
      {
         this.eyes("reseted");
      }
      
      function frame890() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame938() : *
      {
         this.eyes("closed");
      }
      
      function frame943() : *
      {
         this.eyes("reseted");
      }
      
      function frame945() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame953() : *
      {
         this.eyes("closed");
      }
      
      function frame966() : *
      {
         if(MovieClip(this.objects_ph).numChildren)
         {
            MovieClip(this.objects_ph.getChildAt(0)).play();
         }
      }
      
      function frame1019() : *
      {
         this.eyes("reseted");
      }
      
      function frame1021() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame1036() : *
      {
         this.eyes("halfClosed");
      }
      
      function frame1038() : *
      {
         this.eyes("closed");
      }
      
      function frame1048() : *
      {
         this.eyes("reseted");
      }
      
      function frame1069() : *
      {
         this.eyes("closed");
      }
      
      function frame1072() : *
      {
         this.eyes("reseted");
      }
      
      function frame1073() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame1075() : *
      {
         this.eyes("closed");
      }
      
      function frame1081() : *
      {
         this.mouth("love");
         this.eyes("love");
      }
      
      function frame1129() : *
      {
         this.eyes("closed");
      }
      
      function frame1133() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame1136() : *
      {
         this.eyes("up");
      }
      
      function frame1169() : *
      {
         this.icon.gotoAndStop("idea");
         this.eyes("closed");
         this.mouth("laugh");
      }
      
      function frame1206() : *
      {
         this.mouth("reseted");
         this.eyes("reseted");
      }
      
      function frame1218() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame1234() : *
      {
         this.icon.gotoAndStop("admiracion");
      }
      
      function frame1262() : *
      {
         this.eyes("reseted");
      }
      
      function frame1265() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame1315() : *
      {
         gotoAndPlay("loopInAHole");
      }
      
      function frame1342() : *
      {
         this.eyes("closed");
      }
      
      function frame1356() : *
      {
         this.eyes("reseted");
      }
      
      function frame1435() : *
      {
         this.eyes("closed");
      }
      
      function frame1442() : *
      {
         this.eyes("reseted");
      }
      
      function frame1460() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame1471() : *
      {
         this.eyes("closed");
      }
      
      function frame1480() : *
      {
         this.eyes("reseted");
         dispatchEvent(new Event("throwRelease"));
      }
      
      function frame1511() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame1526() : *
      {
         this.eyes("closed");
      }
      
      function frame1580() : *
      {
         this.eyes("reseted");
      }
      
      function frame1628() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame1639() : *
      {
         this.eyes("closed");
      }
      
      function frame1686() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame1732() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame1766() : *
      {
         this.eyes("closed");
      }
      
      function frame1776() : *
      {
         this.eyes("reseted");
      }
      
      function frame1800() : *
      {
         gotoAndPlay("percussionLoop");
      }
      
      function frame1809() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame1812() : *
      {
         this.mouth("laugh");
         this.eyes("closed");
      }
      
      function frame1851() : *
      {
         gotoAndStop("standBy");
         this.mouth("reseted");
         this.eyes("reseted");
      }
      
      function frame1924() : *
      {
         gotoAndStop("standBy");
         this.mouth("reseted");
         this.eyes("reseted");
      }
      
      function frame1933() : *
      {
         this.headAction("boring");
      }
      
      function frame1984() : *
      {
         stop();
      }
      
      function frame2013() : *
      {
         this.eyes("reseted");
         stop();
      }
      
      function frame2051() : *
      {
         stop();
      }
      
      function frame2060() : *
      {
         stop();
         if(this.transport && this.transport.numChildren > 0)
         {
            MovieClip(this.transport.getChildAt(0)).gotoAndStop("off");
         }
      }
      
      function frame2078() : *
      {
         if(this.transport.numChildren > 0)
         {
            this.transportMC = MovieClip(this.transport.getChildAt(0));
            this.transportMC.gotoAndStop("on");
         }
      }
      
      function frame2120() : *
      {
         gotoAndPlay("transportMove");
      }
      
      function frame2131() : *
      {
         gotoAndPlay("transportMove");
      }
      
      function frame2140() : *
      {
         this.eyes("closed");
      }
      
      function frame2225() : *
      {
         gotoAndStop("standBy");
         this.eyes("reseted");
      }
      
      function frame2334() : *
      {
         gotoAndPlay("football");
      }
      
      function frame2343() : *
      {
         this.eyes("closed");
      }
      
      function frame2370() : *
      {
         this.eyes("reseted");
      }
      
      function frame2384() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame2389() : *
      {
         this.eyes("closed");
      }
      
      function frame2400() : *
      {
         stop();
         this.eyes("reseted");
      }
      
      function frame2414() : *
      {
         this.eyes("closed");
      }
      
      function frame2425() : *
      {
         this.eyes("up");
         stop();
      }
      
      function frame2453() : *
      {
         gotoAndPlay("gymLoop");
      }
      
      function frame2458() : *
      {
         this.eyes("closed");
      }
      
      function frame2470() : *
      {
         this.eyes("up");
      }
      
      function frame2546() : *
      {
         this.eyes("reseted");
      }
      
      function frame2549() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame2585() : *
      {
         this.eyes("closed");
      }
      
      function frame2651() : *
      {
         this.eyes("reseted");
      }
      
      function frame2662() : *
      {
         stop();
         this.eyes("halfClosed");
      }
      
      function frame2679() : *
      {
         this.eyes("closed");
      }
      
      function frame2747() : *
      {
         this.eyes("reseted");
      }
      
      function frame2759() : *
      {
         stop();
         this.eyes("halfClosed");
      }
      
      function frame2809() : *
      {
         gotoAndPlay("sweep");
      }
      
      function frame2846() : *
      {
         this.eyes("closed");
      }
      
      function frame2907() : *
      {
         this.eyes("reseted");
      }
      
      function frame2911() : *
      {
         gotoAndPlay("phone_loop");
      }
      
      function frame2916() : *
      {
         stop();
      }
      
      function frame3021() : *
      {
         stop();
      }
      
      function frame3035() : *
      {
         this.eyes("closed");
      }
      
      function frame3043() : *
      {
         this.eyes("reseted");
      }
      
      function frame3049() : *
      {
         this.eyes("reseted");
      }
      
      function frame3051() : *
      {
         gotoAndPlay("laugh");
      }
      
      function frame3062() : *
      {
         this.eyes("closed");
      }
      
      function frame3074() : *
      {
         this.eyes("halfClosed");
      }
      
      function frame3084() : *
      {
         stop();
         this.eyes("reseted");
      }
      
      function frame3099() : *
      {
         this.eyes("angry");
      }
      
      function frame3195() : *
      {
         this.eyes("reseted");
      }
      
      function frame3201() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame3220() : *
      {
         this.eyes("closed");
      }
      
      function frame3239() : *
      {
         this.eyes("reseted");
      }
      
      function frame3242() : *
      {
         stop();
      }
      
      function frame3294() : *
      {
         gotoAndPlay("guitarLoop");
      }
      
      function frame3318() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame3391() : *
      {
         gotoAndPlay("dig");
      }
      
      function frame3400() : *
      {
         play();
      }
      
      function frame3430() : *
      {
         gotoAndPlay("transportStand_escoba");
      }
      
      function frame3452() : *
      {
         gotoAndPlay("transportMove_escoba");
      }
      
      function frame3453() : *
      {
         play();
      }
      
      function frame3483() : *
      {
         gotoAndPlay("transportStand_gorro");
      }
      
      function frame3501() : *
      {
         gotoAndPlay("transportMove_vuela");
      }
      
      function frame3502() : *
      {
         play();
      }
      
      function frame3532() : *
      {
         gotoAndPlay("transportStand_vuela");
      }
      
      function frame3556() : *
      {
         gotoAndPlay("transportMove_gorro");
      }
      
      function frame3561() : *
      {
         play();
      }
      
      function frame3591() : *
      {
         gotoAndPlay("transportStand_pogo");
      }
      
      function frame3612() : *
      {
         gotoAndPlay("transportMove_pogo");
      }
      
      function frame3617() : *
      {
         if(this.transport.numChildren > 0)
         {
            this.transportMC = MovieClip(this.transport.getChildAt(0));
            this.transportMC.gotoAndStop("on");
         }
      }
      
      function frame3628() : *
      {
         gotoAndPlay("transportMove_bola");
      }
      
      function frame3634() : *
      {
         if(this.transport.numChildren > 0)
         {
            MovieClip(this.transport.getChildAt(0)).gotoAndStop("off");
         }
      }
      
      function frame3648() : *
      {
         if(this.transport.numChildren > 0)
         {
            this.transportMC = MovieClip(this.transport.getChildAt(0));
            this.transportMC.gotoAndStop("on");
         }
      }
      
      function frame3690() : *
      {
         gotoAndPlay("transportMove_rollers");
      }
      
      function frame3697() : *
      {
         if(this.transport.numChildren > 0)
         {
            MovieClip(this.transport.getChildAt(0)).gotoAndStop("off");
         }
      }
      
      function frame3715() : *
      {
         if(this.transport.numChildren > 0)
         {
            this.transportMC = MovieClip(this.transport.getChildAt(0));
            this.transportMC.gotoAndStop("on");
         }
      }
      
      function frame3728() : *
      {
         gotoAndPlay("transportMove_bike");
      }
      
      function frame3747() : *
      {
         if(this.transport.numChildren > 0)
         {
            MovieClip(this.transport.getChildAt(0)).gotoAndStop("off");
         }
      }
      
      function frame3773() : *
      {
         if(this.transport.numChildren > 0)
         {
            this.transportMC = MovieClip(this.transport.getChildAt(0));
            this.transportMC.gotoAndStop("on");
         }
      }
      
      function frame3782() : *
      {
         gotoAndPlay("transportMove_horse");
      }
      
      function frame3801() : *
      {
         if(this.transport.numChildren > 0)
         {
            MovieClip(this.transport.getChildAt(0)).gotoAndStop("off");
         }
      }
      
      function frame3824() : *
      {
         if(this.transport.numChildren > 0)
         {
            this.transportMC = MovieClip(this.transport.getChildAt(0));
            this.transportMC.gotoAndStop("on");
         }
         trace("-----------> baloon move");
      }
      
      function frame3845() : *
      {
         trace("transport move baloon");
         gotoAndPlay("transportMove_balloon");
      }
      
      function frame3846() : *
      {
         trace("-----------> baloon stand");
         if(this.transport.numChildren > 0)
         {
            MovieClip(this.transport.getChildAt(0)).gotoAndStop("off");
         }
      }
      
      function frame3856() : *
      {
         if(this.transport.numChildren > 0)
         {
            this.transportMC = MovieClip(this.transport.getChildAt(0));
            this.transportMC.gotoAndStop("on");
         }
      }
      
      function frame3869() : *
      {
         gotoAndPlay("transportMove_moto");
      }
      
      function frame3888() : *
      {
         if(this.transport.numChildren > 0)
         {
            MovieClip(this.transport.getChildAt(0)).gotoAndStop("off");
         }
      }
      
      function frame3914() : *
      {
         if(this.transport.numChildren > 0)
         {
            this.transportMC2 = MovieClip(this.transport.getChildAt(0));
            this.transportMC2.gotoAndStop("on");
         }
      }
      
      function frame3925() : *
      {
         gotoAndPlay("transportMove_esfera");
      }
      
      function frame3931() : *
      {
         if(this.transport.numChildren > 0)
         {
            MovieClip(this.transport.getChildAt(0)).gotoAndStop("off");
         }
      }
      
      function frame3944() : *
      {
         play();
         this.mouth("laugh");
      }
      
      function frame4002() : *
      {
         gotoAndPlay("transportMove_colgante");
      }
      
      function frame4003() : *
      {
         play();
      }
      
      function frame4048() : *
      {
         gotoAndPlay("transportStand_colgante");
      }
      
      function frame4067() : *
      {
         gotoAndPlay("transportMove_surf");
      }
      
      function frame4103() : *
      {
         gotoAndPlay("transportMove_walk");
      }
      
      function frame4106() : *
      {
         this.eyes("closed");
      }
      
      function frame4112() : *
      {
         this.mouth("boca01");
         this.eyes("boca01");
      }
      
      function frame4113() : *
      {
         this.icon.gotoAndStop("boca01");
      }
      
      function frame4160() : *
      {
         this.eyes("closed");
      }
      
      function frame4164() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame4199() : *
      {
         gotoAndPlay("jueguito");
      }
      
      function frame4244() : *
      {
         gotoAndPlay("flotando");
      }
      
      function frame4289() : *
      {
         gotoAndPlay("nadando");
      }
      
      function frame4328() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame4359() : *
      {
         this.eyes("closed");
      }
      
      function frame4412() : *
      {
         gotoAndPlay("dormido_loop");
      }
      
      function frame4432() : *
      {
         this.eyes("closed");
      }
      
      function frame4490() : *
      {
         gotoAndPlay("dormido2_loop");
      }
      
      function frame4503() : *
      {
         this.head.gotoAndStop("shy");
      }
      
      function frame4531() : *
      {
         this.head.gotoAndStop("normal");
      }
      
      function frame4537() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame4548() : *
      {
         this.head.gotoAndStop("wink");
      }
      
      function frame4566() : *
      {
         this.head.gotoAndStop("normal");
      }
      
      function frame4569() : *
      {
         gotoAndStop("standBy");
      }
      
      function frame4574() : *
      {
         this.head.gotoAndStop("blank");
      }
      
      function frame4610() : *
      {
         this.head.gotoAndStop("normal");
      }
      
      function frame4616() : *
      {
         gotoAndStop("standBy");
      }
   }
}
