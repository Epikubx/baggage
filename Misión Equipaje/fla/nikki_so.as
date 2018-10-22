package 
{

    dynamic public class nikki_so extends NpcMamboAsset
    {

        public function nikki_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipaje/nikki";
            stop();
            return;
        }// end function

    }
}

