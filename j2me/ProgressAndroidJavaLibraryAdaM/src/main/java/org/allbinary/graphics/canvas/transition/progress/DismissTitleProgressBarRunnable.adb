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


package body org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package is

   procedure Initialize_Fields (This : in out DismissTitleProgressBarRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.ZOOM_OUT_AND_IN := new Integer_Array'(TransistionTypes_Package.getInstance.ZOOM_OUT, TransistionTypes_Package.getInstance.ZOOM_IN);
   end Initialize_Fields;


   procedure Initialize (This : in out DismissTitleProgressBarRunnable'Class; midletActivity_Param : access Activity'Class; progressCanvas_Param : access ProgressCanvas'Class) is
      midletActivity : Activity_Access := Activity_Access (midletActivity_Param);
      progressCanvas : ProgressCanvas_Access := ProgressCanvas_Access (progressCanvas_Param);
   begin
        ProgressRunnable_Package.Initialize (This, midletActivity, progressCanvas);
        Initialize_Fields (This);
   end Initialize;

   function Create (midletActivity_Param : access Activity'Class; progressCanvas_Param : access ProgressCanvas'Class) return DismissTitleProgressBarRunnable_Access is
      This : constant DismissTitleProgressBarRunnable_Access := new DismissTitleProgressBarRunnable;
   begin
      DismissTitleProgressBarRunnable_Package.Initialize (This.all, midletActivity_Param, progressCanvas_Param);
      return This;
   end Create;

   procedure run (This : in out DismissTitleProgressBarRunnable) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.midletActivity.onDismissProgress (This.ZOOM_OUT_AND_IN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, DismissTitleProgressBarRunnable_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;


