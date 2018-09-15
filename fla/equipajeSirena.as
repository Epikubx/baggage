package 
{

    dynamic public class equipajeSirena extends NpcMamboAsset
    {

        public function equipajeSirena()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipajeSirena";
            stop();
            return;
        }// end function

    }
}
