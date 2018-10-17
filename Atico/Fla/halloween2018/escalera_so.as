package 
{

    dynamic public class escalera_so extends NpcMamboAsset
    {

        public function escalera_so()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "escaleraAticoBruja";
            stop();
            return;
        }// end function

    }
}
