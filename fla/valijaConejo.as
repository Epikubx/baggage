package 
{

    dynamic public class valijaConejo extends NpcMamboAsset
    {

        public function valijaConejo()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipajeValijaConejo";
            stop();
            return;
        }// end function

    }
}
