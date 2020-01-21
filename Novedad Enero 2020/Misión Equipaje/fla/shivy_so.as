package 
{

    dynamic public class shivy_so extends NpcMamboAsset
    {

        public function shivy_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipaje/shivy";
            stop();
            return;
        }// end function

    }
}
