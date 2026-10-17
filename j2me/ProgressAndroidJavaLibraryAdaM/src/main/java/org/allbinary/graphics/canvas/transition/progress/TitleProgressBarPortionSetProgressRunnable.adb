--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package is

   procedure Initialize_Fields (This : in out TitleProgressBarPortionSetProgressRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out TitleProgressBarPortionSetProgressRunnable'Class; midletActivity : Activity_Access; progressCanvas : ProgressCanvas_Access) is
   begin
        ProgressRunnable_Package.Initialize (This, midletActivity, progressCanvas);
        Initialize_Fields (This);
   end Initialize;

   function Create (midletActivity : Activity_Access; progressCanvas : ProgressCanvas_Access) return TitleProgressBarPortionSetProgressRunnable_Access is
      This : constant TitleProgressBarPortionSetProgressRunnable_Access := new TitleProgressBarPortionSetProgressRunnable;
   begin
      Initialize (This.all, midletActivity, progressCanvas);
      return This;
   end Create;

   procedure run (This : in out TitleProgressBarPortionSetProgressRunnable) is
      progressCanvas : AndroidBasicTitleProgressBar_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            progressCanvas := AndroidBasicTitleProgressBar_Access (This.progressCanvas);
            This.midletActivity.onSetProgress (Integer (((This.progressCanvas.getValue) + ((This.progressCanvas.getMaxValue) / (progressCanvas.getPortion)))), This.progressCanvas.getText);
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.RUN, e);
        end;
   end run;

end org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;


