package 
{

    dynamic public class pumpkGuy_so extends NpcMamboAsset
    {

        public function pumpkGuy_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "pumpkingGuy";
            stop();
            return;
        }// end function

    }
}
