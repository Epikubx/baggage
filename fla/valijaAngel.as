package 
{

    dynamic public class valijaAngel extends NpcMamboAsset
    {

        public function valijaAngel()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipajeValijaAngel";
            stop();
            return;
        }// end function

    }
}
