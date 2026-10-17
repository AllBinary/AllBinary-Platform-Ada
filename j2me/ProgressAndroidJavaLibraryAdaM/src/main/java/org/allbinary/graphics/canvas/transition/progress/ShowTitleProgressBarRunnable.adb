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


package body org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package is

   procedure Initialize_Fields (This : in out ShowTitleProgressBarRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.FADE_IN_HALF := new Integer_Array'(TransistionTypes_Package.getInstance.FADE_IN_TO_HALF_ALPHA, TransistionTypes_Package.getInstance.FADE_IN_FROM_HALF_ALPHA);
   end Initialize_Fields;


   procedure Initialize (This : in out ShowTitleProgressBarRunnable'Class; midletActivity : Activity_Access; progressCanvas : ProgressCanvas_Access) is
   begin
        ProgressRunnable_Package.Initialize (This, midletActivity, progressCanvas);
        Initialize_Fields (This);
   end Initialize;

   function Create (midletActivity : Activity_Access; progressCanvas : ProgressCanvas_Access) return ShowTitleProgressBarRunnable_Access is
      This : constant ShowTitleProgressBarRunnable_Access := new ShowTitleProgressBarRunnable;
   begin
      Initialize (This.all, midletActivity, progressCanvas);
      return This;
   end Create;

   procedure run (This : in out ShowTitleProgressBarRunnable) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.midletActivity.onShowProgress (False, This.FADE_IN_HALF);
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.RUN, e);
        end;
   end run;

end org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;


