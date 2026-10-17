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


package body org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package is

   procedure Initialize_Fields (This : in out ProgressRunnable'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ProgressRunnable'Class; midletActivity_Param : access Activity_Package.Activity'Class; progressCanvas_Param : access ProgressCanvas_Package.ProgressCanvas'Class) is
      midletActivity : constant Activity_Access := Activity_Access (midletActivity_Param);
      progressCanvas : constant ProgressCanvas_Access := ProgressCanvas_Access (progressCanvas_Param);
      midletActivity2 : MidletActivityBase_Access;
   begin
      ARunnable_Package.Initialize (This);
      Initialize_Fields (This);
        midletActivity2 := MidletActivityBase_Access (midletActivity);
        This.midletActivity := SimpleProgressActivityInterface_Access (midletActivity2);
        This.progressCanvas := progressCanvas;
   end Initialize;

   function Create (midletActivity_Param : access Activity_Package.Activity'Class; progressCanvas_Param : access ProgressCanvas_Package.ProgressCanvas'Class) return ProgressRunnable_Access is
      This : constant ProgressRunnable_Access := new ProgressRunnable;
   begin
      ProgressRunnable_Package.Initialize (This.all, midletActivity_Param, progressCanvas_Param);
      return This;
   end Create;

   procedure run (This : in out ProgressRunnable) is
   begin
        null;
   end run;

end org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package;


