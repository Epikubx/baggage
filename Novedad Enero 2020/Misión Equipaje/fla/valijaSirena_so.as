package 
{

    dynamic public class valijaSirena_so extends NpcMamboAsset
    {

        public function valijaSirena_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipaje/valijaSirena";
            stop();
            return;
        }// end function

    }
}
