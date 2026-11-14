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
limited with org.allbinary.android.api1.ActivityFractureUtilAPI1_Package;
package org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References is
   type ActivityFractureUtilAPI1_Access is access all org.allbinary.android.api1.ActivityFractureUtilAPI1_Package.ActivityFractureUtilAPI1'Class;
   type ActivityFractureUtilAPI1_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI1_Access;
   type ActivityFractureUtilAPI1_Access_Array_Access is access all ActivityFractureUtilAPI1_Access_Array;
   type ActivityFractureUtilAPI1_Access_Array_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI1_Access_Array_Access;
   type ActivityFractureUtilAPI1_Access_Array_Access_Array_Access is access all ActivityFractureUtilAPI1_Access_Array_Access_Array;
   type ActivityFractureUtilAPI1_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ActivityFractureUtilAPI1_Access_Array_Access;
   end record;
   function Java_Box (Value : ActivityFractureUtilAPI1_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ActivityFractureUtilAPI1_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ActivityFractureUtilAPI1_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ActivityFractureUtilAPI1_Access_Array_Access is (if Value /= null and then Value.all in ActivityFractureUtilAPI1_Access_Array_Object'Class then ActivityFractureUtilAPI1_Access_Array_Object'Class (Value.all).Value else null);
   type ActivityFractureUtilAPI1_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ActivityFractureUtilAPI1_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ActivityFractureUtilAPI1_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ActivityFractureUtilAPI1_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ActivityFractureUtilAPI1_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ActivityFractureUtilAPI1_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ActivityFractureUtilAPI1_Access_Array_Access_Array_Object'Class then ActivityFractureUtilAPI1_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References;

with org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.android.ActivityFractureUtil_Package; use org.allbinary.android.ActivityFractureUtil_Package;
limited with android.app.Activity_Package;
with android.app.Activity_Package_References;

package org.allbinary.android.api1.ActivityFractureUtilAPI1_Package is

   package ActivityFractureUtil_Package renames Standard.org.allbinary.android.ActivityFractureUtil_Package;
   package Activity_Package renames Standard.android.app.Activity_Package;
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


   subtype ActivityFractureUtilAPI1_Access is org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References.ActivityFractureUtilAPI1_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI1_Access) return Boolean renames org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References."=";
   subtype ActivityFractureUtilAPI1_Access_Array is org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References.ActivityFractureUtilAPI1_Access_Array;
   function "=" (Left, Right : ActivityFractureUtilAPI1_Access_Array) return Boolean renames org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References."=";
   subtype ActivityFractureUtilAPI1_Access_Array_Access is org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References.ActivityFractureUtilAPI1_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI1_Access_Array_Access) return Boolean renames org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References."=";
   function Java_Box (Value : ActivityFractureUtilAPI1_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References.Java_Box;
   function Java_Unbox_ActivityFractureUtilAPI1_Access_Array (Value : access Java_Object'Class) return ActivityFractureUtilAPI1_Access_Array_Access renames org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References.Java_Unbox_ActivityFractureUtilAPI1_Access_Array;
   subtype ActivityFractureUtilAPI1_Access_Array_Access_Array is org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References.ActivityFractureUtilAPI1_Access_Array_Access_Array;
   function "=" (Left, Right : ActivityFractureUtilAPI1_Access_Array_Access_Array) return Boolean renames org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References."=";
   subtype ActivityFractureUtilAPI1_Access_Array_Access_Array_Access is org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References.ActivityFractureUtilAPI1_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI1_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References."=";
   function Java_Box (Value : ActivityFractureUtilAPI1_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References.Java_Box;
   function Java_Unbox_ActivityFractureUtilAPI1_Access_Array_Access_Array (Value : access Java_Object'Class) return ActivityFractureUtilAPI1_Access_Array_Access_Array_Access renames org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References.Java_Unbox_ActivityFractureUtilAPI1_Access_Array_Access_Array;

   type ActivityFractureUtilAPI1 is new ActivityFractureUtil with null record;
   instance : ActivityFractureUtilAPI1_Access;

   procedure Initialize (This : in out ActivityFractureUtilAPI1'Class);
   function Create return ActivityFractureUtilAPI1_Access;
   function getInstance return ActivityFractureUtilAPI1_Access;
   procedure process (This : in out ActivityFractureUtilAPI1; activity_Param : access Activity_Package.Activity'Class);
   procedure setFullScreen (This : in out ActivityFractureUtilAPI1; activity_Param : access Activity_Package.Activity'Class);

end org.allbinary.android.api1.ActivityFractureUtilAPI1_Package;


