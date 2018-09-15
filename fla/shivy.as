package 
{

    dynamic public class shivy extends NpcMamboAsset
    {

        public function shivy()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "shivy";
            stop();
            return;
        }// end function

    }
}
