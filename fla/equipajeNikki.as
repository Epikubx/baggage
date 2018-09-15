package 
{

    dynamic public class equipajeNikki extends NpcMamboAsset
    {

        public function equipajeNikki()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipajeNikki";
            stop();
            return;
        }// end function

    }
}

