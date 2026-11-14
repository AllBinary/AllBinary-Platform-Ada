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
limited with org.allbinary.android.api19.ActivityFractureUtilAPI19_Package;
package org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References is
   type ActivityFractureUtilAPI19_Access is access all org.allbinary.android.api19.ActivityFractureUtilAPI19_Package.ActivityFractureUtilAPI19'Class;
   type ActivityFractureUtilAPI19_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI19_Access;
   type ActivityFractureUtilAPI19_Access_Array_Access is access all ActivityFractureUtilAPI19_Access_Array;
   type ActivityFractureUtilAPI19_Access_Array_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI19_Access_Array_Access;
   type ActivityFractureUtilAPI19_Access_Array_Access_Array_Access is access all ActivityFractureUtilAPI19_Access_Array_Access_Array;
   type ActivityFractureUtilAPI19_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ActivityFractureUtilAPI19_Access_Array_Access;
   end record;
   function Java_Box (Value : ActivityFractureUtilAPI19_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ActivityFractureUtilAPI19_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ActivityFractureUtilAPI19_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ActivityFractureUtilAPI19_Access_Array_Access is (if Value /= null and then Value.all in ActivityFractureUtilAPI19_Access_Array_Object'Class then ActivityFractureUtilAPI19_Access_Array_Object'Class (Value.all).Value else null);
   type ActivityFractureUtilAPI19_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ActivityFractureUtilAPI19_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ActivityFractureUtilAPI19_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ActivityFractureUtilAPI19_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ActivityFractureUtilAPI19_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ActivityFractureUtilAPI19_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ActivityFractureUtilAPI19_Access_Array_Access_Array_Object'Class then ActivityFractureUtilAPI19_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References;

with org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References;
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
with org.allbinary.android.api5.ActivityFractureUtilAPI5_Package; use org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;

package org.allbinary.android.api19.ActivityFractureUtilAPI19_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package ActivityFractureUtilAPI5_Package renames Standard.org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;
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


   subtype ActivityFractureUtilAPI19_Access is org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References.ActivityFractureUtilAPI19_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI19_Access) return Boolean renames org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References."=";
   subtype ActivityFractureUtilAPI19_Access_Array is org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References.ActivityFractureUtilAPI19_Access_Array;
   function "=" (Left, Right : ActivityFractureUtilAPI19_Access_Array) return Boolean renames org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References."=";
   subtype ActivityFractureUtilAPI19_Access_Array_Access is org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References.ActivityFractureUtilAPI19_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI19_Access_Array_Access) return Boolean renames org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References."=";
   function Java_Box (Value : ActivityFractureUtilAPI19_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References.Java_Box;
   function Java_Unbox_ActivityFractureUtilAPI19_Access_Array (Value : access Java_Object'Class) return ActivityFractureUtilAPI19_Access_Array_Access renames org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References.Java_Unbox_ActivityFractureUtilAPI19_Access_Array;
   subtype ActivityFractureUtilAPI19_Access_Array_Access_Array is org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References.ActivityFractureUtilAPI19_Access_Array_Access_Array;
   function "=" (Left, Right : ActivityFractureUtilAPI19_Access_Array_Access_Array) return Boolean renames org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References."=";
   subtype ActivityFractureUtilAPI19_Access_Array_Access_Array_Access is org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References.ActivityFractureUtilAPI19_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI19_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References."=";
   function Java_Box (Value : ActivityFractureUtilAPI19_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References.Java_Box;
   function Java_Unbox_ActivityFractureUtilAPI19_Access_Array_Access_Array (Value : access Java_Object'Class) return ActivityFractureUtilAPI19_Access_Array_Access_Array_Access renames org.allbinary.android.api19.ActivityFractureUtilAPI19_Package_References.Java_Unbox_ActivityFractureUtilAPI19_Access_Array_Access_Array;

   type ActivityFractureUtilAPI19 is new ActivityFractureUtilAPI5 with null record;
   instance19 : ActivityFractureUtilAPI19_Access;

   procedure Initialize (This : in out ActivityFractureUtilAPI19'Class);
   function Create return ActivityFractureUtilAPI19_Access;
   function getInstance return ActivityFractureUtilAPI19_Access;
   procedure setFullScreen (This : in out ActivityFractureUtilAPI19; activity_Param : access Activity_Package.Activity'Class);

end org.allbinary.android.api19.ActivityFractureUtilAPI19_Package;


