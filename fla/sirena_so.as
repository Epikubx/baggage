package 
{

    dynamic public class sirena_so extends NpcMamboAsset
    {

        public function sirena_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "sirena";
            stop();
            return;
        }// end function

    }
}
