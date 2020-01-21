package 
{

    dynamic public class valijaNikki_so extends NpcMamboAsset
    {

        public function valijaNikki_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipaje/valijaNikki";
            stop();
            return;
        }// end function

    }
}
