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
limited with org.allbinary.game.configuration.GameSpeed_Package;
package org.allbinary.game.configuration.GameSpeed_Package_References is
   type GameSpeed_Access is access all org.allbinary.game.configuration.GameSpeed_Package.GameSpeed'Class;
   type GameSpeed_Access_Array is array (Natural range <>) of GameSpeed_Access;
   type GameSpeed_Access_Array_Access is access all GameSpeed_Access_Array;
   type GameSpeed_Access_Array_Access_Array is array (Natural range <>) of GameSpeed_Access_Array_Access;
   type GameSpeed_Access_Array_Access_Array_Access is access all GameSpeed_Access_Array_Access_Array;
   type GameSpeed_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameSpeed_Access_Array_Access;
   end record;
   function Java_Box (Value : GameSpeed_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameSpeed_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameSpeed_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameSpeed_Access_Array_Access is (if Value /= null and then Value.all in GameSpeed_Access_Array_Object'Class then GameSpeed_Access_Array_Object'Class (Value.all).Value else null);
   type GameSpeed_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameSpeed_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameSpeed_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameSpeed_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameSpeed_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameSpeed_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameSpeed_Access_Array_Access_Array_Object'Class then GameSpeed_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.GameSpeed_Package_References;

with org.allbinary.game.configuration.GameSpeed_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.configuration.GameSpeed_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameSpeed_Access is org.allbinary.game.configuration.GameSpeed_Package_References.GameSpeed_Access;
   function "=" (Left, Right : GameSpeed_Access) return Boolean renames org.allbinary.game.configuration.GameSpeed_Package_References."=";
   subtype GameSpeed_Access_Array is org.allbinary.game.configuration.GameSpeed_Package_References.GameSpeed_Access_Array;
   function "=" (Left, Right : GameSpeed_Access_Array) return Boolean renames org.allbinary.game.configuration.GameSpeed_Package_References."=";
   subtype GameSpeed_Access_Array_Access is org.allbinary.game.configuration.GameSpeed_Package_References.GameSpeed_Access_Array_Access;
   function "=" (Left, Right : GameSpeed_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameSpeed_Package_References."=";
   function Java_Box (Value : GameSpeed_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.GameSpeed_Package_References.Java_Box;
   function Java_Unbox_GameSpeed_Access_Array (Value : access Java_Object'Class) return GameSpeed_Access_Array_Access renames org.allbinary.game.configuration.GameSpeed_Package_References.Java_Unbox_GameSpeed_Access_Array;
   subtype GameSpeed_Access_Array_Access_Array is org.allbinary.game.configuration.GameSpeed_Package_References.GameSpeed_Access_Array_Access_Array;
   function "=" (Left, Right : GameSpeed_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.GameSpeed_Package_References."=";
   subtype GameSpeed_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameSpeed_Package_References.GameSpeed_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameSpeed_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameSpeed_Package_References."=";
   function Java_Box (Value : GameSpeed_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.GameSpeed_Package_References.Java_Box;
   function Java_Unbox_GameSpeed_Access_Array_Access_Array (Value : access Java_Object'Class) return GameSpeed_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.GameSpeed_Package_References.Java_Unbox_GameSpeed_Access_Array_Access_Array;

   type GameSpeed is new Java_Object with null record;
   instance : GameSpeed_Access;

   procedure Initialize (This : in out GameSpeed'Class);
   function Create return GameSpeed_Access;
   function getSpeed (This : in out GameSpeed) return Integer;
   function getDelay (This : in out GameSpeed) return Integer;
   function getInstance return GameSpeed_Access;

end org.allbinary.game.configuration.GameSpeed_Package;


