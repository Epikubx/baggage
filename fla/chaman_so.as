package 
{

    dynamic public class chaman_so extends NpcMamboAsset
    {

        public function chaman_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "chaman";
			stop();
            return;
        }// end function

    }
}

