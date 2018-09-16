package 
{

    dynamic public class valijaDiablo_so extends NpcMamboAsset
    {

        public function valijaDiablo_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "valijaDiablo";
            stop();
            return;
        }// end function

    }
}
