package 
{

    dynamic public class diablo_so extends NpcMamboAsset
    {

        public function diablo_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipaje/diablo";
            stop();
            return;
        }// end function

    }
}

