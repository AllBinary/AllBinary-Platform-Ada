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


with android.view.WindowManager_Package; use android.view.WindowManager_Package;

package body org.allbinary.android.api1.ActivityFractureUtilAPI1_Package is

   package WindowManager_Package renames Standard.android.view.WindowManager_Package;
   procedure Initialize_Fields (This : in out ActivityFractureUtilAPI1'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ActivityFractureUtilAPI1'Class) is
   begin
      ActivityFractureUtil_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ActivityFractureUtilAPI1_Access is
      This : constant ActivityFractureUtilAPI1_Access := new ActivityFractureUtilAPI1;
   begin
      ActivityFractureUtilAPI1_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ActivityFractureUtilAPI1_Access is
   begin
        return ActivityFractureUtilAPI1_Package.instance;
   end getInstance;

   --  throws Exception
   procedure process (This : in out ActivityFractureUtilAPI1; activity_Param : access Activity_Package.Activity'Class) is
      activity : constant Activity_Access := Activity_Access (activity_Param);
   begin
        null;
   end process;

   procedure setFullScreen (This : in out ActivityFractureUtilAPI1; activity_Param : access Activity_Package.Activity'Class) is
      activity : constant Activity_Access := Activity_Access (activity_Param);
   begin
        activity.getWindow.setFlags (WindowManager_Package.LayoutParams.FLAG_FULLSCREEN, WindowManager_Package.LayoutParams.FLAG_FULLSCREEN);
   end setFullScreen;

begin
   null;
   instance := ActivityFractureUtilAPI1_Package.Create;

end org.allbinary.android.api1.ActivityFractureUtilAPI1_Package;


