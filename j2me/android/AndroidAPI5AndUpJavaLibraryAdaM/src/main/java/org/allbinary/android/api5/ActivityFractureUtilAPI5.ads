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
with org.allbinary.android.api1.ActivityFractureUtilAPI1_Package; use org.allbinary.android.api1.ActivityFractureUtilAPI1_Package;

package org.allbinary.android.api5.ActivityFractureUtilAPI5_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package ActivityFractureUtilAPI1_Package renames Standard.org.allbinary.android.api1.ActivityFractureUtilAPI1_Package;

   type ActivityFractureUtilAPI5 is tagged;
   type ActivityFractureUtilAPI5_Access is access all ActivityFractureUtilAPI5'Class;
   type ActivityFractureUtilAPI5_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI5_Access;
   type ActivityFractureUtilAPI5_Access_Array_Access is access all ActivityFractureUtilAPI5_Access_Array;
   type ActivityFractureUtilAPI5_Access_Array_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI5_Access_Array_Access;
   type ActivityFractureUtilAPI5_Access_Array_Access_Array_Access is access all ActivityFractureUtilAPI5_Access_Array_Access_Array;

   type ActivityFractureUtilAPI5 is new ActivityFractureUtilAPI1 with record
      FEATURE_TOUCHSCREEN_MULTITOUCH : Unbounded_String;
      FEATURE_TOUCHSCREEN : Unbounded_String;
      FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT : Unbounded_String;
   end record;
   instance5 : ActivityFractureUtilAPI5_Access;

   procedure Initialize (This : in out ActivityFractureUtilAPI5'Class);
   function Create return ActivityFractureUtilAPI5_Access;
   function getInstance return ActivityFractureUtilAPI5_Access;
   procedure process (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class);
   function isTouch (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class) return Boolean;
   procedure isTouch (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class);
   function isMultiTouch (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class) return Boolean;
   procedure isMultiTouch (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class);
   function isMultiTouchDistinct (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class) return Boolean;
   procedure isMultiTouchDistinct (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class);
   function isFeature (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class; property : Unbounded_String) return Boolean;
   procedure isFeature (This : in out ActivityFractureUtilAPI5; activity_Param : access Activity_Package.Activity'Class; property : Unbounded_String);

end org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;


