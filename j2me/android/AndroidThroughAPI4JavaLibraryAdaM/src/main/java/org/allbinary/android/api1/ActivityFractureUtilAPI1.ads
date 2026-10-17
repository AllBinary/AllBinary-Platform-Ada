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
with org.allbinary.android.ActivityFractureUtil_Package; use org.allbinary.android.ActivityFractureUtil_Package;
with android.app.Activity_Package; use android.app.Activity_Package;
with android.view.WindowManager_Package; use android.view.WindowManager_Package;

package org.allbinary.android.api1.ActivityFractureUtilAPI1_Package is

   package ActivityFractureUtil_Package renames Standard.org.allbinary.android.ActivityFractureUtil_Package;
   package Activity_Package renames Standard.android.app.Activity_Package;
   package WindowManager_Package renames Standard.android.view.WindowManager_Package;

   type ActivityFractureUtilAPI1 is tagged;
   type ActivityFractureUtilAPI1_Access is access all ActivityFractureUtilAPI1'Class;
   type ActivityFractureUtilAPI1_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI1_Access;
   type ActivityFractureUtilAPI1_Access_Array_Access is access all ActivityFractureUtilAPI1_Access_Array;

   type ActivityFractureUtilAPI1 is new ActivityFractureUtil with null record;
   instance : ActivityFractureUtilAPI1_Access;

   procedure Initialize (This : in out ActivityFractureUtilAPI1'Class);
   function Create return ActivityFractureUtilAPI1_Access;
   function getInstance return ActivityFractureUtilAPI1_Access;
   procedure process (This : in out ActivityFractureUtilAPI1; activity_Param : access Activity_Package.Activity'Class);
   procedure setFullScreen (This : in out ActivityFractureUtilAPI1; activity_Param : access Activity_Package.Activity'Class);

end org.allbinary.android.api1.ActivityFractureUtilAPI1_Package;


