package 
{

    dynamic public class angel_so extends NpcMamboAsset
    {

        public function angel_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "angel";
			stop();
            return;
        }// end function

    }
}

