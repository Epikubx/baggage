package 
{
    public dynamic class peloFrutilla extends ClothMamboAsset
    {
        public function peloFrutilla()
        {
            super();
            addFrameScript(0, frame1);
            return;
        }

        internal function frame1():*
        {
            clothes = {"hairs":"peloFrutilla_on"};
            return;
        }
    }
}
