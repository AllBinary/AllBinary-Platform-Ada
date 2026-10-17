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


package body org.allbinary.android.api16.ActivityFractureUtilAPI16_Package is

   procedure Initialize_Fields (This : in out ActivityFractureUtilAPI16'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ActivityFractureUtilAPI16'Class) is
   begin
      ActivityFractureUtilAPI5_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ActivityFractureUtilAPI16_Access is
      This : constant ActivityFractureUtilAPI16_Access := new ActivityFractureUtilAPI16;
   begin
      ActivityFractureUtilAPI16_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ActivityFractureUtilAPI16_Access is
   begin
        return ActivityFractureUtilAPI16_Package.instance16;
   end getInstance;

   procedure setFullScreen (This : in out ActivityFractureUtilAPI16; activity_Param : access Activity'Class) is
      activity : Activity_Access := Activity_Access (activity_Param);
      decorView : View_Access;
      visibility : Integer;
   begin
        decorView := activity.getWindow.getDecorView;
        visibility := Java_Or (View_Package.SYSTEM_UI_FLAG_HIDE_NAVIGATION, View_Package.SYSTEM_UI_FLAG_FULLSCREEN);
        decorView.setSystemUiVisibility (visibility);
   end setFullScreen;

begin
   null;
   instance16 := ActivityFractureUtilAPI16_Package.Create;

end org.allbinary.android.api16.ActivityFractureUtilAPI16_Package;


