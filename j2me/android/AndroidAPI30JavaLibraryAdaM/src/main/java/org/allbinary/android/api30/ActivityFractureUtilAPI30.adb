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


package body org.allbinary.android.api30.ActivityFractureUtilAPI30_Package is

   procedure Initialize_Fields (This : in out ActivityFractureUtilAPI30'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ActivityFractureUtilAPI30'Class) is
   begin
      ActivityFractureUtilAPI5_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ActivityFractureUtilAPI30_Access is
      This : constant ActivityFractureUtilAPI30_Access := new ActivityFractureUtilAPI30;
   begin
      ActivityFractureUtilAPI30_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ActivityFractureUtilAPI30_Access is
   begin
        return ActivityFractureUtilAPI30_Package.instance30;
   end getInstance;

   procedure setFullScreen (This : in out ActivityFractureUtilAPI30; activity_Param : access Activity'Class) is
      activity : Activity_Access := Activity_Access (activity_Param);
      window : Window_Access;
      windowInsetsController : WindowInsetsControllerCompat_Access;
   begin
        window := activity.getWindow;
        windowInsetsController := WindowCompat_Package.getInsetsController (window, window.getDecorView);
        windowInsetsController.hide (WindowInsetsCompat_Package.Type_Id.systemBars);
        windowInsetsController.setSystemBarsBehavior (WindowInsetsControllerCompat_Package.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE);
   end setFullScreen;

begin
   null;
   instance30 := ActivityFractureUtilAPI30_Package.Create;

end org.allbinary.android.api30.ActivityFractureUtilAPI30_Package;


