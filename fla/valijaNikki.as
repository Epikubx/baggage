package 
{

    dynamic public class valijaNikki extends NpcMamboAsset
    {

        public function valijaNikki()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipajeValijaNikki";
            stop();
            return;
        }// end function

    }
}
