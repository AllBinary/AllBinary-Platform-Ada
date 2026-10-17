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


package body org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package is

   procedure Initialize_Fields (This : in out TitleProgressBarSetProgressRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out TitleProgressBarSetProgressRunnable'Class; midletActivity : Activity_Access; progressCanvas : ProgressCanvas_Access) is
   begin
        ProgressRunnable_Package.Initialize (This, midletActivity, progressCanvas);
        Initialize_Fields (This);
   end Initialize;

   function Create (midletActivity : Activity_Access; progressCanvas : ProgressCanvas_Access) return TitleProgressBarSetProgressRunnable_Access is
      This : constant TitleProgressBarSetProgressRunnable_Access := new TitleProgressBarSetProgressRunnable;
   begin
      Initialize (This.all, midletActivity, progressCanvas);
      return This;
   end Create;

   procedure run (This : in out TitleProgressBarSetProgressRunnable) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.midletActivity.onSetProgress (Integer (This.progressCanvas.getValue), This.progressCanvas.getText);
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.RUN, e);
        end;
   end run;

end org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;


