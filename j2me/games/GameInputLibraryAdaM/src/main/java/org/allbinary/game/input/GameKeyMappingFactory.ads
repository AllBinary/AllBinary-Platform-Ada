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
limited with org.allbinary.game.input.GameKeyMappingFactory_Package;
package org.allbinary.game.input.GameKeyMappingFactory_Package_References is
   type GameKeyMappingFactory_Access is access all org.allbinary.game.input.GameKeyMappingFactory_Package.GameKeyMappingFactory'Class;
   type GameKeyMappingFactory_Access_Array is array (Natural range <>) of GameKeyMappingFactory_Access;
   type GameKeyMappingFactory_Access_Array_Access is access all GameKeyMappingFactory_Access_Array;
   type GameKeyMappingFactory_Access_Array_Access_Array is array (Natural range <>) of GameKeyMappingFactory_Access_Array_Access;
   type GameKeyMappingFactory_Access_Array_Access_Array_Access is access all GameKeyMappingFactory_Access_Array_Access_Array;
   type GameKeyMappingFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameKeyMappingFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : GameKeyMappingFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameKeyMappingFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameKeyMappingFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameKeyMappingFactory_Access_Array_Access is (if Value /= null and then Value.all in GameKeyMappingFactory_Access_Array_Object'Class then GameKeyMappingFactory_Access_Array_Object'Class (Value.all).Value else null);
   type GameKeyMappingFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameKeyMappingFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameKeyMappingFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameKeyMappingFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameKeyMappingFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameKeyMappingFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameKeyMappingFactory_Access_Array_Access_Array_Object'Class then GameKeyMappingFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.GameKeyMappingFactory_Package_References;

with org.allbinary.game.input.GameKeyMappingFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKey_Package_References;

package org.allbinary.game.input.GameKeyMappingFactory_Package is

   package Reference_Types is
   subtype GameKey_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access;
   use type GameKey_Access;
   subtype GameKey_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array;
   use type GameKey_Access_Array;
   subtype GameKey_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access;
   use type GameKey_Access_Array_Access;
   subtype GameKey_Access_Array_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array;
   use type GameKey_Access_Array_Access_Array;
   subtype GameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array_Access;
   use type GameKey_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameKeyMappingFactory_Access is org.allbinary.game.input.GameKeyMappingFactory_Package_References.GameKeyMappingFactory_Access;
   function "=" (Left, Right : GameKeyMappingFactory_Access) return Boolean renames org.allbinary.game.input.GameKeyMappingFactory_Package_References."=";
   subtype GameKeyMappingFactory_Access_Array is org.allbinary.game.input.GameKeyMappingFactory_Package_References.GameKeyMappingFactory_Access_Array;
   function "=" (Left, Right : GameKeyMappingFactory_Access_Array) return Boolean renames org.allbinary.game.input.GameKeyMappingFactory_Package_References."=";
   subtype GameKeyMappingFactory_Access_Array_Access is org.allbinary.game.input.GameKeyMappingFactory_Package_References.GameKeyMappingFactory_Access_Array_Access;
   function "=" (Left, Right : GameKeyMappingFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKeyMappingFactory_Package_References."=";
   function Java_Box (Value : GameKeyMappingFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.GameKeyMappingFactory_Package_References.Java_Box;
   function Java_Unbox_GameKeyMappingFactory_Access_Array (Value : access Java_Object'Class) return GameKeyMappingFactory_Access_Array_Access renames org.allbinary.game.input.GameKeyMappingFactory_Package_References.Java_Unbox_GameKeyMappingFactory_Access_Array;
   subtype GameKeyMappingFactory_Access_Array_Access_Array is org.allbinary.game.input.GameKeyMappingFactory_Package_References.GameKeyMappingFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyMappingFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameKeyMappingFactory_Package_References."=";
   subtype GameKeyMappingFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKeyMappingFactory_Package_References.GameKeyMappingFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyMappingFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKeyMappingFactory_Package_References."=";
   function Java_Box (Value : GameKeyMappingFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.GameKeyMappingFactory_Package_References.Java_Box;
   function Java_Unbox_GameKeyMappingFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return GameKeyMappingFactory_Access_Array_Access_Array_Access renames org.allbinary.game.input.GameKeyMappingFactory_Package_References.Java_Unbox_GameKeyMappingFactory_Access_Array_Access_Array;

   type GameKeyMappingFactory is new Java_Object with record
      intKeyToGameKey : GameKey_Access_Array_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GameKeyMappingFactory'Class);
   function Create return GameKeyMappingFactory_Access;
   function getInstance return GameKeyMappingFactory_Access;
   function getGameKey (This : in out GameKeyMappingFactory; key : Integer) return GameKey_Access;
   procedure getGameKey (This : in out GameKeyMappingFactory; key : Integer);
   procedure setGameKey (This : in out GameKeyMappingFactory; gameKey_Param : access GameKey_Package.GameKey'Class);

end org.allbinary.game.input.GameKeyMappingFactory_Package;


