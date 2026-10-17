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
with org.allbinary.input.motion.button.TouchScreenTypeFactory_Package; use org.allbinary.input.motion.button.TouchScreenTypeFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.android.api1.ActivityFractureUtilAPI1_Package; use org.allbinary.android.api1.ActivityFractureUtilAPI1_Package;
with org.allbinary.input.motion.button.TouchScreenFactory_Package; use org.allbinary.input.motion.button.TouchScreenFactory_Package;

package org.allbinary.android.api5.ActivityFractureUtilAPI5_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package TouchScreenTypeFactory_Package renames Standard.org.allbinary.input.motion.button.TouchScreenTypeFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package ActivityFractureUtilAPI1_Package renames Standard.org.allbinary.android.api1.ActivityFractureUtilAPI1_Package;
   package TouchScreenFactory_Package renames Standard.org.allbinary.input.motion.button.TouchScreenFactory_Package;

   type ActivityFractureUtilAPI5 is tagged;
   type ActivityFractureUtilAPI5_Access is access all ActivityFractureUtilAPI5'Class;
   type ActivityFractureUtilAPI5_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI5_Access;
   type ActivityFractureUtilAPI5_Access_Array_Access is access all ActivityFractureUtilAPI5_Access_Array;

   type ActivityFractureUtilAPI5 is new ActivityFractureUtilAPI1 with record
      FEATURE_TOUCHSCREEN_MULTITOUCH : Unbounded_String;
      FEATURE_TOUCHSCREEN : Unbounded_String;
      FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT : Unbounded_String;
   end record;
   instance5 : ActivityFractureUtilAPI5_Access;

   procedure Initialize (This : in out ActivityFractureUtilAPI5'Class);
   function Create return ActivityFractureUtilAPI5_Access;
   function getInstance return ActivityFractureUtilAPI5_Access;
   procedure process (This : in out ActivityFractureUtilAPI5; activity : Activity_Access);
   function isTouch (This : in out ActivityFractureUtilAPI5; activity : Activity_Access) return Boolean;
   procedure isTouch (This : in out ActivityFractureUtilAPI5; activity : Activity_Access);
   function isMultiTouch (This : in out ActivityFractureUtilAPI5; activity : Activity_Access) return Boolean;
   procedure isMultiTouch (This : in out ActivityFractureUtilAPI5; activity : Activity_Access);
   function isMultiTouchDistinct (This : in out ActivityFractureUtilAPI5; activity : Activity_Access) return Boolean;
   procedure isMultiTouchDistinct (This : in out ActivityFractureUtilAPI5; activity : Activity_Access);
   function isFeature (This : in out ActivityFractureUtilAPI5; activity : Activity_Access; property : Unbounded_String) return Boolean;
   procedure isFeature (This : in out ActivityFractureUtilAPI5; activity : Activity_Access; property : Unbounded_String);

end org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;


