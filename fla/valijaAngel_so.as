package 
{

    dynamic public class valijaAngel_so extends NpcMamboAsset
    {

        public function valijaAngel_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "valijaAngel";
            stop();
            return;
        }// end function

    }
}
