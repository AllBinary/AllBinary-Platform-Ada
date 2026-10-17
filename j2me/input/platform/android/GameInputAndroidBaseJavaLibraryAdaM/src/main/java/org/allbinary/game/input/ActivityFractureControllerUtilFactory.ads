--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.android.AndroidInfoFactory_Package; use org.allbinary.android.AndroidInfoFactory_Package;
with org.allbinary.game.input.AndroidAPI12KeyFactory_Package; use org.allbinary.game.input.AndroidAPI12KeyFactory_Package;
with org.allbinary.game.input.AndroidAPI9KeyFactory_Package; use org.allbinary.game.input.AndroidAPI9KeyFactory_Package;
with org.allbinary.game.input.AndroidAPI1KeyFactory_Package; use org.allbinary.game.input.AndroidAPI1KeyFactory_Package;
with org.allbinary.game.input.AndroidKeyFactory_Package; use org.allbinary.game.input.AndroidKeyFactory_Package;

package org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package is

   package AndroidInfoFactory_Package renames Standard.org.allbinary.android.AndroidInfoFactory_Package;

   type ActivityFractureControllerUtilFactory is tagged;
   type ActivityFractureControllerUtilFactory_Access is access all ActivityFractureControllerUtilFactory'Class;
   type ActivityFractureControllerUtilFactory_Access_Array is array (Natural range <>) of ActivityFractureControllerUtilFactory_Access;
   type ActivityFractureControllerUtilFactory_Access_Array_Access is access all ActivityFractureControllerUtilFactory_Access_Array;

   type ActivityFractureControllerUtilFactory is new Java_Object with null record;

   procedure Initialize (This : in out ActivityFractureControllerUtilFactory'Class);
   function Create return ActivityFractureControllerUtilFactory_Access;
   function getInstance return AndroidKeyFactory_Access;

end org.allbinary.game.input.ActivityFractureControllerUtilFactory_Package;


