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


with android.app.Activity_Package; use android.app.Activity_Package;
with android.app.Activity_Package_References;
with android.view.View_Package; use android.view.View_Package;
with org.allbinary.android.api5.ActivityFractureUtilAPI5_Package; use org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;

package body org.allbinary.android.api19.ActivityFractureUtilAPI19_Package is

   package View_Package renames Standard.android.view.View_Package;
   subtype Activity_Access is android.app.Activity_Package_References.Activity_Access;
   function "=" (Left, Right : Activity_Access) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array is android.app.Activity_Package_References.Activity_Access_Array;
   function "=" (Left, Right : Activity_Access_Array) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access;
   function "=" (Left, Right : Activity_Access_Array_Access) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array_Access_Array is android.app.Activity_Package_References.Activity_Access_Array_Access_Array;
   function "=" (Left, Right : Activity_Access_Array_Access_Array) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Activity_Access_Array_Access_Array_Access) return Boolean renames android.app.Activity_Package_References."=";
   procedure Initialize_Fields (This : in out ActivityFractureUtilAPI19'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ActivityFractureUtilAPI19'Class) is
   begin
      ActivityFractureUtilAPI5_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ActivityFractureUtilAPI19_Access is
      This : constant ActivityFractureUtilAPI19_Access := new ActivityFractureUtilAPI19;
   begin
      ActivityFractureUtilAPI19_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ActivityFractureUtilAPI19_Access is
   begin
        return ActivityFractureUtilAPI19_Access (ActivityFractureUtilAPI19_Package.instance19);
   end getInstance;

   procedure setFullScreen (This : in out ActivityFractureUtilAPI19; activity_Param : access Activity_Package.Activity'Class) is
      activity : constant Activity_Access := Activity_Access (activity_Param);
      decorView : View_Access;
      visibility : Integer;
   begin
        decorView := activity.getWindow.getDecorView;
        visibility := Java_Or (Java_Or (View_Package.SYSTEM_UI_FLAG_IMMERSIVE_STICKY, View_Package.SYSTEM_UI_FLAG_HIDE_NAVIGATION), View_Package.SYSTEM_UI_FLAG_FULLSCREEN);
        decorView.setSystemUiVisibility (visibility);
   end setFullScreen;

begin
   null;
   instance19 := ActivityFractureUtilAPI19_Package.Create;

end org.allbinary.android.api19.ActivityFractureUtilAPI19_Package;


