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
limited with org.allbinary.android.api30.ActivityFractureUtilAPI30_Package;
package org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References is
   type ActivityFractureUtilAPI30_Access is access all org.allbinary.android.api30.ActivityFractureUtilAPI30_Package.ActivityFractureUtilAPI30'Class;
   type ActivityFractureUtilAPI30_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI30_Access;
   type ActivityFractureUtilAPI30_Access_Array_Access is access all ActivityFractureUtilAPI30_Access_Array;
   type ActivityFractureUtilAPI30_Access_Array_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI30_Access_Array_Access;
   type ActivityFractureUtilAPI30_Access_Array_Access_Array_Access is access all ActivityFractureUtilAPI30_Access_Array_Access_Array;
   type ActivityFractureUtilAPI30_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ActivityFractureUtilAPI30_Access_Array_Access;
   end record;
   function Java_Box (Value : ActivityFractureUtilAPI30_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ActivityFractureUtilAPI30_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ActivityFractureUtilAPI30_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ActivityFractureUtilAPI30_Access_Array_Access is (if Value /= null and then Value.all in ActivityFractureUtilAPI30_Access_Array_Object'Class then ActivityFractureUtilAPI30_Access_Array_Object'Class (Value.all).Value else null);
   type ActivityFractureUtilAPI30_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ActivityFractureUtilAPI30_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ActivityFractureUtilAPI30_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ActivityFractureUtilAPI30_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ActivityFractureUtilAPI30_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ActivityFractureUtilAPI30_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ActivityFractureUtilAPI30_Access_Array_Access_Array_Object'Class then ActivityFractureUtilAPI30_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References;

with org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References;
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

package org.allbinary.android.api30.ActivityFractureUtilAPI30_Package is

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


   subtype ActivityFractureUtilAPI30_Access is org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References.ActivityFractureUtilAPI30_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI30_Access) return Boolean renames org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References."=";
   subtype ActivityFractureUtilAPI30_Access_Array is org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References.ActivityFractureUtilAPI30_Access_Array;
   function "=" (Left, Right : ActivityFractureUtilAPI30_Access_Array) return Boolean renames org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References."=";
   subtype ActivityFractureUtilAPI30_Access_Array_Access is org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References.ActivityFractureUtilAPI30_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI30_Access_Array_Access) return Boolean renames org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References."=";
   function Java_Box (Value : ActivityFractureUtilAPI30_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References.Java_Box;
   function Java_Unbox_ActivityFractureUtilAPI30_Access_Array (Value : access Java_Object'Class) return ActivityFractureUtilAPI30_Access_Array_Access renames org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References.Java_Unbox_ActivityFractureUtilAPI30_Access_Array;
   subtype ActivityFractureUtilAPI30_Access_Array_Access_Array is org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References.ActivityFractureUtilAPI30_Access_Array_Access_Array;
   function "=" (Left, Right : ActivityFractureUtilAPI30_Access_Array_Access_Array) return Boolean renames org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References."=";
   subtype ActivityFractureUtilAPI30_Access_Array_Access_Array_Access is org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References.ActivityFractureUtilAPI30_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI30_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References."=";
   function Java_Box (Value : ActivityFractureUtilAPI30_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References.Java_Box;
   function Java_Unbox_ActivityFractureUtilAPI30_Access_Array_Access_Array (Value : access Java_Object'Class) return ActivityFractureUtilAPI30_Access_Array_Access_Array_Access renames org.allbinary.android.api30.ActivityFractureUtilAPI30_Package_References.Java_Unbox_ActivityFractureUtilAPI30_Access_Array_Access_Array;

   type ActivityFractureUtilAPI30 is new ActivityFractureUtilAPI5 with null record;
   instance30 : ActivityFractureUtilAPI30_Access;

   procedure Initialize (This : in out ActivityFractureUtilAPI30'Class);
   function Create return ActivityFractureUtilAPI30_Access;
   function getInstance return ActivityFractureUtilAPI30_Access;
   procedure setFullScreen (This : in out ActivityFractureUtilAPI30; activity_Param : access Activity_Package.Activity'Class);

end org.allbinary.android.api30.ActivityFractureUtilAPI30_Package;


