package 
{

    dynamic public class equipajeChaman extends NpcMamboAsset
    {

        public function equipajeChaman()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipajeChaman";
			stop();
            return;
        }// end function

    }
}

