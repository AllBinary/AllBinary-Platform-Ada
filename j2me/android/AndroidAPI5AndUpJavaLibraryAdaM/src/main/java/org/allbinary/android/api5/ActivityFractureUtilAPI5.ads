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

with AllBinary_Java;
limited with org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;
package org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References is
   type ActivityFractureUtilAPI5_Access is access all org.allbinary.android.api5.ActivityFractureUtilAPI5_Package.ActivityFractureUtilAPI5'Class;
   type ActivityFractureUtilAPI5_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI5_Access;
   type ActivityFractureUtilAPI5_Access_Array_Access is access all ActivityFractureUtilAPI5_Access_Array;
   type ActivityFractureUtilAPI5_Access_Array_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI5_Access_Array_Access;
   type ActivityFractureUtilAPI5_Access_Array_Access_Array_Access is access all ActivityFractureUtilAPI5_Access_Array_Access_Array;
   type ActivityFractureUtilAPI5_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ActivityFractureUtilAPI5_Access_Array_Access;
   end record;
   function Java_Box (Value : ActivityFractureUtilAPI5_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ActivityFractureUtilAPI5_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ActivityFractureUtilAPI5_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ActivityFractureUtilAPI5_Access_Array_Access is (if Value /= null and then Value.all in ActivityFractureUtilAPI5_Access_Array_Object'Class then ActivityFractureUtilAPI5_Access_Array_Object'Class (Value.all).Value else null);
   type ActivityFractureUtilAPI5_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ActivityFractureUtilAPI5_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ActivityFractureUtilAPI5_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ActivityFractureUtilAPI5_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ActivityFractureUtilAPI5_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ActivityFractureUtilAPI5_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ActivityFractureUtilAPI5_Access_Array_Access_Array_Object'Class then ActivityFractureUtilAPI5_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References;

with org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.app.Activity_Package;
with android.app.Activity_Package_References;
with org.allbinary.android.api1.ActivityFractureUtilAPI1_Package; use org.allbinary.android.api1.ActivityFractureUtilAPI1_Package;

package org.allbinary.android.api5.ActivityFractureUtilAPI5_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package ActivityFractureUtilAPI1_Package renames Standard.org.allbinary.android.api1.ActivityFractureUtilAPI1_Package;
   package Reference_Types is
   subtype Activity_Access is android.app.Activity_Package_References.Activity_Access;
   use type Activity_Access;
   subtype Activity_Access_Array is android.app.Activity_Package_References.Activity_Access_Array;
   use type Activity_Access_Array;
   subtype Activity_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access;
   use type Activity_Access_Array_Access;
   subtype Activity_Access_Array_Access_Array is android.app.Activity_Package_References.Activity_Access_Array_Access_Array;
   use type Activity_Access_Array_Access_Array;
   subtype Activity_Access_Array_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access_Array_Access;
   use type Activity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ActivityFractureUtilAPI5_Access is org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References.ActivityFractureUtilAPI5_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI5_Access) return Boolean renames org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References."=";
   subtype ActivityFractureUtilAPI5_Access_Array is org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References.ActivityFractureUtilAPI5_Access_Array;
   function "=" (Left, Right : ActivityFractureUtilAPI5_Access_Array) return Boolean renames org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References."=";
   subtype ActivityFractureUtilAPI5_Access_Array_Access is org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References.ActivityFractureUtilAPI5_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI5_Access_Array_Access) return Boolean renames org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References."=";
   function Java_Box (Value : ActivityFractureUtilAPI5_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References.Java_Box;
   function Java_Unbox_ActivityFractureUtilAPI5_Access_Array (Value : access Java_Object'Class) return ActivityFractureUtilAPI5_Access_Array_Access renames org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References.Java_Unbox_ActivityFractureUtilAPI5_Access_Array;
   subtype ActivityFractureUtilAPI5_Access_Array_Access_Array is org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References.ActivityFractureUtilAPI5_Access_Array_Access_Array;
   function "=" (Left, Right : ActivityFractureUtilAPI5_Access_Array_Access_Array) return Boolean renames org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References."=";
   subtype ActivityFractureUtilAPI5_Access_Array_Access_Array_Access is org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References.ActivityFractureUtilAPI5_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI5_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References."=";
   function Java_Box (Value : ActivityFractureUtilAPI5_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References.Java_Box;
   function Java_Unbox_ActivityFractureUtilAPI5_Access_Array_Access_Array (Value : access Java_Object'Class) return ActivityFractureUtilAPI5_Access_Array_Access_Array_Access renames org.allbinary.android.api5.ActivityFractureUtilAPI5_Package_References.Java_Unbox_ActivityFractureUtilAPI5_Access_Array_Access_Array;

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


