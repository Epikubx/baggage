package 
{

    dynamic public class equipajeDiablo extends NpcMamboAsset
    {

        public function equipajeDiablo()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipajeDiablo";
            stop();
            return;
        }// end function

    }
}

