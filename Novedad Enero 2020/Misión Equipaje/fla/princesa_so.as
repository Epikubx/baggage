﻿package 
{

    dynamic public class princesa_so extends NpcMamboAsset
    {

        public function princesa_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipaje/princesa";
            stop();
            return;
        }// end function

    }
}
