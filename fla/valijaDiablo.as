package 
{

    dynamic public class valijaDiablo extends NpcMamboAsset
    {

        public function valijaDiablo()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipajeValijaDiablo";
            stop();
            return;
        }// end function

    }
}
