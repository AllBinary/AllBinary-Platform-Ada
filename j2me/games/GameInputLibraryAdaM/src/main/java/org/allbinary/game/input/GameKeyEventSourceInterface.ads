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
limited with org.allbinary.game.input.GameKeyEventSourceInterface_Package;
package org.allbinary.game.input.GameKeyEventSourceInterface_Package_References is
   type GameKeyEventSourceInterface_Access is access all org.allbinary.game.input.GameKeyEventSourceInterface_Package.GameKeyEventSourceInterface'Class;
   type GameKeyEventSourceInterface_Access_Array is array (Natural range <>) of GameKeyEventSourceInterface_Access;
   type GameKeyEventSourceInterface_Access_Array_Access is access all GameKeyEventSourceInterface_Access_Array;
   type GameKeyEventSourceInterface_Access_Array_Access_Array is array (Natural range <>) of GameKeyEventSourceInterface_Access_Array_Access;
   type GameKeyEventSourceInterface_Access_Array_Access_Array_Access is access all GameKeyEventSourceInterface_Access_Array_Access_Array;
   type GameKeyEventSourceInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameKeyEventSourceInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : GameKeyEventSourceInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameKeyEventSourceInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameKeyEventSourceInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameKeyEventSourceInterface_Access_Array_Access is (if Value /= null and then Value.all in GameKeyEventSourceInterface_Access_Array_Object'Class then GameKeyEventSourceInterface_Access_Array_Object'Class (Value.all).Value else null);
   type GameKeyEventSourceInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameKeyEventSourceInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameKeyEventSourceInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameKeyEventSourceInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameKeyEventSourceInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameKeyEventSourceInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameKeyEventSourceInterface_Access_Array_Access_Array_Object'Class then GameKeyEventSourceInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.GameKeyEventSourceInterface_Package_References;

with org.allbinary.game.input.GameKeyEventSourceInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.input.GameKeyEventSourceInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type GameKeyEventSourceInterface is interface;
   subtype GameKeyEventSourceInterface_Access is org.allbinary.game.input.GameKeyEventSourceInterface_Package_References.GameKeyEventSourceInterface_Access;
   function "=" (Left, Right : GameKeyEventSourceInterface_Access) return Boolean renames org.allbinary.game.input.GameKeyEventSourceInterface_Package_References."=";
   subtype GameKeyEventSourceInterface_Access_Array is org.allbinary.game.input.GameKeyEventSourceInterface_Package_References.GameKeyEventSourceInterface_Access_Array;
   function "=" (Left, Right : GameKeyEventSourceInterface_Access_Array) return Boolean renames org.allbinary.game.input.GameKeyEventSourceInterface_Package_References."=";
   subtype GameKeyEventSourceInterface_Access_Array_Access is org.allbinary.game.input.GameKeyEventSourceInterface_Package_References.GameKeyEventSourceInterface_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventSourceInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKeyEventSourceInterface_Package_References."=";
   function Java_Box (Value : GameKeyEventSourceInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.GameKeyEventSourceInterface_Package_References.Java_Box;
   function Java_Unbox_GameKeyEventSourceInterface_Access_Array (Value : access Java_Object'Class) return GameKeyEventSourceInterface_Access_Array_Access renames org.allbinary.game.input.GameKeyEventSourceInterface_Package_References.Java_Unbox_GameKeyEventSourceInterface_Access_Array;
   subtype GameKeyEventSourceInterface_Access_Array_Access_Array is org.allbinary.game.input.GameKeyEventSourceInterface_Package_References.GameKeyEventSourceInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEventSourceInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameKeyEventSourceInterface_Package_References."=";
   subtype GameKeyEventSourceInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKeyEventSourceInterface_Package_References.GameKeyEventSourceInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventSourceInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKeyEventSourceInterface_Package_References."=";
   function Java_Box (Value : GameKeyEventSourceInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.GameKeyEventSourceInterface_Package_References.Java_Box;
   function Java_Unbox_GameKeyEventSourceInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return GameKeyEventSourceInterface_Access_Array_Access_Array_Access renames org.allbinary.game.input.GameKeyEventSourceInterface_Package_References.Java_Unbox_GameKeyEventSourceInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_GameKeyEventSourceInterface (Value : GameKeyEventSourceInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getSourceId (This : in out GameKeyEventSourceInterface) return Integer is abstract;

end org.allbinary.game.input.GameKeyEventSourceInterface_Package;


