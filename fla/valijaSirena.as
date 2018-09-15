package 
{

    dynamic public class valijaSirena extends NpcMamboAsset
    {

        public function valijaSirena()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipajeValijaSirena";
            stop();
            return;
        }// end function

    }
}
