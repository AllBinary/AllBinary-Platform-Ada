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
limited with org.allbinary.game.score.NoScoreable_Package;
package org.allbinary.game.score.NoScoreable_Package_References is
   type NoScoreable_Access is access all org.allbinary.game.score.NoScoreable_Package.NoScoreable'Class;
   type NoScoreable_Access_Array is array (Natural range <>) of NoScoreable_Access;
   type NoScoreable_Access_Array_Access is access all NoScoreable_Access_Array;
   type NoScoreable_Access_Array_Access_Array is array (Natural range <>) of NoScoreable_Access_Array_Access;
   type NoScoreable_Access_Array_Access_Array_Access is access all NoScoreable_Access_Array_Access_Array;
   type NoScoreable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoScoreable_Access_Array_Access;
   end record;
   function Java_Box (Value : NoScoreable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoScoreable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoScoreable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoScoreable_Access_Array_Access is (if Value /= null and then Value.all in NoScoreable_Access_Array_Object'Class then NoScoreable_Access_Array_Object'Class (Value.all).Value else null);
   type NoScoreable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoScoreable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NoScoreable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoScoreable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoScoreable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoScoreable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NoScoreable_Access_Array_Access_Array_Object'Class then NoScoreable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.NoScoreable_Package_References;

with org.allbinary.game.score.NoScoreable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.score.Scoreable_Package; use org.allbinary.game.score.Scoreable_Package;

package org.allbinary.game.score.NoScoreable_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NoScoreable_Access is org.allbinary.game.score.NoScoreable_Package_References.NoScoreable_Access;
   function "=" (Left, Right : NoScoreable_Access) return Boolean renames org.allbinary.game.score.NoScoreable_Package_References."=";
   subtype NoScoreable_Access_Array is org.allbinary.game.score.NoScoreable_Package_References.NoScoreable_Access_Array;
   function "=" (Left, Right : NoScoreable_Access_Array) return Boolean renames org.allbinary.game.score.NoScoreable_Package_References."=";
   subtype NoScoreable_Access_Array_Access is org.allbinary.game.score.NoScoreable_Package_References.NoScoreable_Access_Array_Access;
   function "=" (Left, Right : NoScoreable_Access_Array_Access) return Boolean renames org.allbinary.game.score.NoScoreable_Package_References."=";
   function Java_Box (Value : NoScoreable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.NoScoreable_Package_References.Java_Box;
   function Java_Unbox_NoScoreable_Access_Array (Value : access Java_Object'Class) return NoScoreable_Access_Array_Access renames org.allbinary.game.score.NoScoreable_Package_References.Java_Unbox_NoScoreable_Access_Array;
   subtype NoScoreable_Access_Array_Access_Array is org.allbinary.game.score.NoScoreable_Package_References.NoScoreable_Access_Array_Access_Array;
   function "=" (Left, Right : NoScoreable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.NoScoreable_Package_References."=";
   subtype NoScoreable_Access_Array_Access_Array_Access is org.allbinary.game.score.NoScoreable_Package_References.NoScoreable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoScoreable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.NoScoreable_Package_References."=";
   function Java_Box (Value : NoScoreable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.NoScoreable_Package_References.Java_Box;
   function Java_Unbox_NoScoreable_Access_Array_Access_Array (Value : access Java_Object'Class) return NoScoreable_Access_Array_Access_Array_Access renames org.allbinary.game.score.NoScoreable_Package_References.Java_Unbox_NoScoreable_Access_Array_Access_Array;

   type NoScoreable is new Scoreable with null record;
   SINGLETON : NoScoreable_Access;

   procedure Initialize (This : in out NoScoreable'Class);
   function Create return NoScoreable_Access;
   function getInstance return NoScoreable_Access;
   procedure addPoints (This : in out NoScoreable; points : Integer);
   procedure removePoints (This : in out NoScoreable; points : Integer);

end org.allbinary.game.score.NoScoreable_Package;


