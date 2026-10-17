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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with android.app.Activity_Package; use android.app.Activity_Package;
with android.view.Window_Package; use android.view.Window_Package;
with androidx.core.view.WindowCompat_Package; use androidx.core.view.WindowCompat_Package;
with androidx.core.view.WindowInsetsCompat_Package; use androidx.core.view.WindowInsetsCompat_Package;
with androidx.core.view.WindowInsetsControllerCompat_Package; use androidx.core.view.WindowInsetsControllerCompat_Package;
with org.allbinary.android.api5.ActivityFractureUtilAPI5_Package; use org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;

package org.allbinary.android.api30.ActivityFractureUtilAPI30_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package Window_Package renames Standard.android.view.Window_Package;
   package WindowCompat_Package renames Standard.androidx.core.view.WindowCompat_Package;
   package WindowInsetsCompat_Package renames Standard.androidx.core.view.WindowInsetsCompat_Package;
   package WindowInsetsControllerCompat_Package renames Standard.androidx.core.view.WindowInsetsControllerCompat_Package;
   package ActivityFractureUtilAPI5_Package renames Standard.org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;

   type ActivityFractureUtilAPI30 is tagged;
   type ActivityFractureUtilAPI30_Access is access all ActivityFractureUtilAPI30'Class;
   type ActivityFractureUtilAPI30_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI30_Access;
   type ActivityFractureUtilAPI30_Access_Array_Access is access all ActivityFractureUtilAPI30_Access_Array;

   type ActivityFractureUtilAPI30 is new ActivityFractureUtilAPI5 with null record;
   instance30 : ActivityFractureUtilAPI30_Access;

   procedure Initialize (This : in out ActivityFractureUtilAPI30'Class);
   function Create return ActivityFractureUtilAPI30_Access;
   function getInstance return ActivityFractureUtilAPI30_Access;
   procedure setFullScreen (This : in out ActivityFractureUtilAPI30; activity_Param : access Activity_Package.Activity'Class);

end org.allbinary.android.api30.ActivityFractureUtilAPI30_Package;


