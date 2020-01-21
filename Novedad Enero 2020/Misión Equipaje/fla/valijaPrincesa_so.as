package 
{

    dynamic public class valijaPrincesa_so extends NpcMamboAsset
    {

        public function valijaPrincesa_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipaje/valijaPrincesa";
            stop();
            return;
        }// end function

    }
}
