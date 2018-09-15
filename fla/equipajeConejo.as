package 
{

    dynamic public class equipajeConejo extends NpcMamboAsset
    {

        public function equipajeConejo()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipajeConejo";
            stop();
            return;
        }// end function

    }
}

