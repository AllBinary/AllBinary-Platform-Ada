--  Generated Code Do Not Modify

limited with org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package;
package org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References is
   type ActivityFractureControllerUtilFactory_Access is access all org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package.ActivityFractureControllerUtilFactory'Class;
   type ActivityFractureControllerUtilFactory_Access_Array is array (Natural range <>) of ActivityFractureControllerUtilFactory_Access;
   type ActivityFractureControllerUtilFactory_Access_Array_Access is access all ActivityFractureControllerUtilFactory_Access_Array;
   type ActivityFractureControllerUtilFactory_Access_Array_Access_Array is array (Natural range <>) of ActivityFractureControllerUtilFactory_Access_Array_Access;
   type ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Access is access all ActivityFractureControllerUtilFactory_Access_Array_Access_Array;
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
   subtype ActivityFractureControllerUtilFactory_Access_Array_Access_Array is org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References.ActivityFractureControllerUtilFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ActivityFractureControllerUtilFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References."=";
   subtype ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References.ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureControllerUtilFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package_References."=";

   type ActivityFractureControllerUtilFactory is new Java_Object with null record;

   procedure Initialize (This : in out ActivityFractureControllerUtilFactory'Class);
   function Create return ActivityFractureControllerUtilFactory_Access;
   function getInstance return AndroidKeyFactory_Access;

end org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package;


