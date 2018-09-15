package 
{

    dynamic public class equipajeAngel extends NpcMamboAsset
    {

        public function equipajeAngel()
        {
            addFrameScript(0, frame1);
            return;
        }// end function

        function frame1()
        {
            behavior = "equipajeAngel";
			stop();
            return;
        }// end function

    }
}

