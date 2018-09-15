package 
{

    dynamic public class valijaChaman extends NpcMamboAsset
    {

        public function valijaChaman()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipajeValijaChaman";
            stop();
            return;
        }// end function

    }
}
