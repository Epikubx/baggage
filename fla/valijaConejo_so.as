package 
{

    dynamic public class valijaConejo_so extends NpcMamboAsset
    {

        public function valijaConejo_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "valijaConejo";
            stop();
            return;
        }// end function

    }
}
