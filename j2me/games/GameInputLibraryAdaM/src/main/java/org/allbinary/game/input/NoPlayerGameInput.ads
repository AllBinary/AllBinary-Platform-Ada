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
limited with org.allbinary.game.input.NoPlayerGameInput_Package;
package org.allbinary.game.input.NoPlayerGameInput_Package_References is
   type NoPlayerGameInput_Access is access all org.allbinary.game.input.NoPlayerGameInput_Package.NoPlayerGameInput'Class;
   type NoPlayerGameInput_Access_Array is array (Natural range <>) of NoPlayerGameInput_Access;
   type NoPlayerGameInput_Access_Array_Access is access all NoPlayerGameInput_Access_Array;
   type NoPlayerGameInput_Access_Array_Access_Array is array (Natural range <>) of NoPlayerGameInput_Access_Array_Access;
   type NoPlayerGameInput_Access_Array_Access_Array_Access is access all NoPlayerGameInput_Access_Array_Access_Array;
   type NoPlayerGameInput_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoPlayerGameInput_Access_Array_Access;
   end record;
   function Java_Box (Value : NoPlayerGameInput_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoPlayerGameInput_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoPlayerGameInput_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoPlayerGameInput_Access_Array_Access is (if Value /= null and then Value.all in NoPlayerGameInput_Access_Array_Object'Class then NoPlayerGameInput_Access_Array_Object'Class (Value.all).Value else null);
   type NoPlayerGameInput_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoPlayerGameInput_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NoPlayerGameInput_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoPlayerGameInput_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoPlayerGameInput_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoPlayerGameInput_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NoPlayerGameInput_Access_Array_Access_Array_Object'Class then NoPlayerGameInput_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.NoPlayerGameInput_Package_References;

with org.allbinary.game.input.NoPlayerGameInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;

package org.allbinary.game.input.NoPlayerGameInput_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package Reference_Types is
   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   use type GameKeyEvent_Access;
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   use type GameKeyEvent_Access_Array;
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access;
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   use type GameKeyEvent_Access_Array_Access_Array;
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NoPlayerGameInput_Access is org.allbinary.game.input.NoPlayerGameInput_Package_References.NoPlayerGameInput_Access;
   function "=" (Left, Right : NoPlayerGameInput_Access) return Boolean renames org.allbinary.game.input.NoPlayerGameInput_Package_References."=";
   subtype NoPlayerGameInput_Access_Array is org.allbinary.game.input.NoPlayerGameInput_Package_References.NoPlayerGameInput_Access_Array;
   function "=" (Left, Right : NoPlayerGameInput_Access_Array) return Boolean renames org.allbinary.game.input.NoPlayerGameInput_Package_References."=";
   subtype NoPlayerGameInput_Access_Array_Access is org.allbinary.game.input.NoPlayerGameInput_Package_References.NoPlayerGameInput_Access_Array_Access;
   function "=" (Left, Right : NoPlayerGameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.NoPlayerGameInput_Package_References."=";
   function Java_Box (Value : NoPlayerGameInput_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.NoPlayerGameInput_Package_References.Java_Box;
   function Java_Unbox_NoPlayerGameInput_Access_Array (Value : access Java_Object'Class) return NoPlayerGameInput_Access_Array_Access renames org.allbinary.game.input.NoPlayerGameInput_Package_References.Java_Unbox_NoPlayerGameInput_Access_Array;
   subtype NoPlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.NoPlayerGameInput_Package_References.NoPlayerGameInput_Access_Array_Access_Array;
   function "=" (Left, Right : NoPlayerGameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.NoPlayerGameInput_Package_References."=";
   subtype NoPlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.NoPlayerGameInput_Package_References.NoPlayerGameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoPlayerGameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.NoPlayerGameInput_Package_References."=";
   function Java_Box (Value : NoPlayerGameInput_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.NoPlayerGameInput_Package_References.Java_Box;
   function Java_Unbox_NoPlayerGameInput_Access_Array_Access_Array (Value : access Java_Object'Class) return NoPlayerGameInput_Access_Array_Access_Array_Access renames org.allbinary.game.input.NoPlayerGameInput_Package_References.Java_Unbox_NoPlayerGameInput_Access_Array_Access_Array;

   type NoPlayerGameInput is new PlayerGameInput with null record;
   SINGLETON : NoPlayerGameInput_Access;

   procedure Initialize (This : in out NoPlayerGameInput'Class);
   function Create return NoPlayerGameInput_Access;
   function getInstance return NoPlayerGameInput_Access;
   procedure onDownGameKeyEvent (This : in out NoPlayerGameInput; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure onUpGameKeyEvent (This : in out NoPlayerGameInput; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);

end org.allbinary.game.input.NoPlayerGameInput_Package;


