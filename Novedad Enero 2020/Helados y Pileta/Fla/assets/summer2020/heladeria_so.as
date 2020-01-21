package 
{

    dynamic public class heladeria_so extends NpcMamboAsset
    {

        public function heladeria_so()
        {
         super();
         addFrameScript(0,frame1);
        }
		
		function frame1() : *
		{
			behavior = "heladeria"
		}

    }
}
