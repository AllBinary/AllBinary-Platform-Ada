--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package;
package org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References is
   type ActivityFractureControllerUtilFactory_Access is access all org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package.ActivityFractureControllerUtilFactory'Class;
   type ActivityFractureControllerUtilFactory_Access_Array is array (Natural range <>) of ActivityFractureControllerUtilFactory_Access;
   type ActivityFractureControllerUtilFactory_Access_Array_Access is access all ActivityFractureControllerUtilFactory_Access_Array;
   type ActivityFractureControllerUtilFactory_Access_Array_Access_Array is array (Natural range <>) of ActivityFractureControllerUtilFactory_Access_Array_Access;
   type ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Access is access all ActivityFractureControllerUtilFactory_Access_Array_Access_Array;
   type ActivityFractureControllerUtilFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ActivityFractureControllerUtilFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ActivityFractureControllerUtilFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ActivityFractureControllerUtilFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ActivityFractureControllerUtilFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ActivityFractureControllerUtilFactory_Access_Array_Access is (if Value /= null and then Value.all in ActivityFractureControllerUtilFactory_Access_Array_Object'Class then ActivityFractureControllerUtilFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ActivityFractureControllerUtilFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Object'Class then ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References;

with org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.AndroidKeyFactory_Package;
with org.allbinary.game.input.AndroidKeyFactory_Package_References;

package org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package is

   package Reference_Types is
   subtype AndroidKeyFactory_Access is org.allbinary.game.input.AndroidKeyFactory_Package_References.AndroidKeyFactory_Access;
   use type AndroidKeyFactory_Access;
   subtype AndroidKeyFactory_Access_Array is org.allbinary.game.input.AndroidKeyFactory_Package_References.AndroidKeyFactory_Access_Array;
   use type AndroidKeyFactory_Access_Array;
   subtype AndroidKeyFactory_Access_Array_Access is org.allbinary.game.input.AndroidKeyFactory_Package_References.AndroidKeyFactory_Access_Array_Access;
   use type AndroidKeyFactory_Access_Array_Access;
   subtype AndroidKeyFactory_Access_Array_Access_Array is org.allbinary.game.input.AndroidKeyFactory_Package_References.AndroidKeyFactory_Access_Array_Access_Array;
   use type AndroidKeyFactory_Access_Array_Access_Array;
   subtype AndroidKeyFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.AndroidKeyFactory_Package_References.AndroidKeyFactory_Access_Array_Access_Array_Access;
   use type AndroidKeyFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ActivityFractureControllerUtilFactory_Access is org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References.ActivityFractureControllerUtilFactory_Access;
   function "=" (Left, Right : ActivityFractureControllerUtilFactory_Access) return Boolean renames org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References."=";
   subtype ActivityFractureControllerUtilFactory_Access_Array is org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References.ActivityFractureControllerUtilFactory_Access_Array;
   function "=" (Left, Right : ActivityFractureControllerUtilFactory_Access_Array) return Boolean renames org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References."=";
   subtype ActivityFractureControllerUtilFactory_Access_Array_Access is org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References.ActivityFractureControllerUtilFactory_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureControllerUtilFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References."=";
   function Java_Box (Value : ActivityFractureControllerUtilFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References.Java_Box;
   function Java_Unbox_ActivityFractureControllerUtilFactory_Access_Array (Value : access Java_Object'Class) return ActivityFractureControllerUtilFactory_Access_Array_Access renames org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References.Java_Unbox_ActivityFractureControllerUtilFactory_Access_Array;
   subtype ActivityFractureControllerUtilFactory_Access_Array_Access_Array is org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References.ActivityFractureControllerUtilFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ActivityFractureControllerUtilFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References."=";
   subtype ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References.ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References."=";
   function Java_Box (Value : ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References.Java_Box;
   function Java_Unbox_ActivityFractureControllerUtilFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Access renames org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References.Java_Unbox_ActivityFractureControllerUtilFactory_Access_Array_Access_Array;

   type ActivityFractureControllerUtilFactory is new Java_Object with null record;

   procedure Initialize (This : in out ActivityFractureControllerUtilFactory'Class);
   function Create return ActivityFractureControllerUtilFactory_Access;
   function getInstance return AndroidKeyFactory_Access;

end org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package;


