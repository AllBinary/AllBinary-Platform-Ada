--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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

with AllBinary_Java;
limited with org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package;
package org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References is
   type ActivityFractureInputUtilFactory_Access is access all org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package.ActivityFractureInputUtilFactory'Class;
   type ActivityFractureInputUtilFactory_Access_Array is array (Natural range <>) of ActivityFractureInputUtilFactory_Access;
   type ActivityFractureInputUtilFactory_Access_Array_Access is access all ActivityFractureInputUtilFactory_Access_Array;
   type ActivityFractureInputUtilFactory_Access_Array_Access_Array is array (Natural range <>) of ActivityFractureInputUtilFactory_Access_Array_Access;
   type ActivityFractureInputUtilFactory_Access_Array_Access_Array_Access is access all ActivityFractureInputUtilFactory_Access_Array_Access_Array;
   type ActivityFractureInputUtilFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ActivityFractureInputUtilFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ActivityFractureInputUtilFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ActivityFractureInputUtilFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ActivityFractureInputUtilFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ActivityFractureInputUtilFactory_Access_Array_Access is (if Value /= null and then Value.all in ActivityFractureInputUtilFactory_Access_Array_Object'Class then ActivityFractureInputUtilFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ActivityFractureInputUtilFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ActivityFractureInputUtilFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ActivityFractureInputUtilFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ActivityFractureInputUtilFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ActivityFractureInputUtilFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ActivityFractureInputUtilFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ActivityFractureInputUtilFactory_Access_Array_Access_Array_Object'Class then ActivityFractureInputUtilFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References;

with org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.android.ActivityFractureUtil_Package;
with org.allbinary.android.ActivityFractureUtil_Package_References;

package org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package is

   package ActivityFractureUtil_Package renames Standard.org.allbinary.android.ActivityFractureUtil_Package;
   package Reference_Types is
   subtype ActivityFractureUtil_Access is org.allbinary.android.ActivityFractureUtil_Package_References.ActivityFractureUtil_Access;
   use type ActivityFractureUtil_Access;
   subtype ActivityFractureUtil_Access_Array is org.allbinary.android.ActivityFractureUtil_Package_References.ActivityFractureUtil_Access_Array;
   use type ActivityFractureUtil_Access_Array;
   subtype ActivityFractureUtil_Access_Array_Access is org.allbinary.android.ActivityFractureUtil_Package_References.ActivityFractureUtil_Access_Array_Access;
   use type ActivityFractureUtil_Access_Array_Access;
   subtype ActivityFractureUtil_Access_Array_Access_Array is org.allbinary.android.ActivityFractureUtil_Package_References.ActivityFractureUtil_Access_Array_Access_Array;
   use type ActivityFractureUtil_Access_Array_Access_Array;
   subtype ActivityFractureUtil_Access_Array_Access_Array_Access is org.allbinary.android.ActivityFractureUtil_Package_References.ActivityFractureUtil_Access_Array_Access_Array_Access;
   use type ActivityFractureUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ActivityFractureInputUtilFactory_Access is org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References.ActivityFractureInputUtilFactory_Access;
   function "=" (Left, Right : ActivityFractureInputUtilFactory_Access) return Boolean renames org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References."=";
   subtype ActivityFractureInputUtilFactory_Access_Array is org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References.ActivityFractureInputUtilFactory_Access_Array;
   function "=" (Left, Right : ActivityFractureInputUtilFactory_Access_Array) return Boolean renames org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References."=";
   subtype ActivityFractureInputUtilFactory_Access_Array_Access is org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References.ActivityFractureInputUtilFactory_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureInputUtilFactory_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References."=";
   function Java_Box (Value : ActivityFractureInputUtilFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References.Java_Box;
   function Java_Unbox_ActivityFractureInputUtilFactory_Access_Array (Value : access Java_Object'Class) return ActivityFractureInputUtilFactory_Access_Array_Access renames org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References.Java_Unbox_ActivityFractureInputUtilFactory_Access_Array;
   subtype ActivityFractureInputUtilFactory_Access_Array_Access_Array is org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References.ActivityFractureInputUtilFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ActivityFractureInputUtilFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References."=";
   subtype ActivityFractureInputUtilFactory_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References.ActivityFractureInputUtilFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureInputUtilFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References."=";
   function Java_Box (Value : ActivityFractureInputUtilFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References.Java_Box;
   function Java_Unbox_ActivityFractureInputUtilFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ActivityFractureInputUtilFactory_Access_Array_Access_Array_Access renames org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package_References.Java_Unbox_ActivityFractureInputUtilFactory_Access_Array_Access_Array;

   type ActivityFractureInputUtilFactory is new Java_Object with null record;

   procedure Initialize (This : in out ActivityFractureInputUtilFactory'Class);
   function Create return ActivityFractureInputUtilFactory_Access;
   function getInstance return ActivityFractureUtil_Access;

end org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package;


