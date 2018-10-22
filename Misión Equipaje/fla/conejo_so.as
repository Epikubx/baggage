package 
{

    dynamic public class conejo_so extends NpcMamboAsset
    {

        public function conejo_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipaje/conejo";
            stop();
            return;
        }// end function

    }
}

