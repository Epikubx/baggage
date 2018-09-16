package 
{

    dynamic public class valijaChaman_so extends NpcMamboAsset
    {

        public function valijaChaman_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "valijaChaman";
            stop();
            return;
        }// end function

    }
}
