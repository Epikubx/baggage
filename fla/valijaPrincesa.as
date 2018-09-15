package 
{

    dynamic public class valijaPrincesa extends NpcMamboAsset
    {

        public function valijaPrincesa()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipajeValijaPrincesa";
            stop();
            return;
        }// end function

    }
}
