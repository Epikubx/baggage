package 
{

    dynamic public class equipajePrincesa extends NpcMamboAsset
    {

        public function equipajePrincesa()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipajePrincesa";
            stop();
            return;
        }// end function

    }
}
