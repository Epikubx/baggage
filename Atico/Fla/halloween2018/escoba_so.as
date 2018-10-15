package 
{

    dynamic public class escoba_so extends NpcMamboAsset
    {

        public function escoba_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "movable";
            stop();
            return;
        }// end function

    }
}
