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
limited with org.allbinary.game.GameInfoData_Package;
package org.allbinary.game.GameInfoData_Package_References is
   type GameInfoData_Access is access all org.allbinary.game.GameInfoData_Package.GameInfoData'Class;
   type GameInfoData_Access_Array is array (Natural range <>) of GameInfoData_Access;
   type GameInfoData_Access_Array_Access is access all GameInfoData_Access_Array;
   type GameInfoData_Access_Array_Access_Array is array (Natural range <>) of GameInfoData_Access_Array_Access;
   type GameInfoData_Access_Array_Access_Array_Access is access all GameInfoData_Access_Array_Access_Array;
   type GameInfoData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInfoData_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInfoData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInfoData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInfoData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInfoData_Access_Array_Access is (if Value /= null and then Value.all in GameInfoData_Access_Array_Object'Class then GameInfoData_Access_Array_Object'Class (Value.all).Value else null);
   type GameInfoData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInfoData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInfoData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInfoData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInfoData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInfoData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameInfoData_Access_Array_Access_Array_Object'Class then GameInfoData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.GameInfoData_Package_References;

with org.allbinary.game.GameInfoData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.GameInfoData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameInfoData_Access is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access;
   function "=" (Left, Right : GameInfoData_Access) return Boolean renames org.allbinary.game.GameInfoData_Package_References."=";
   subtype GameInfoData_Access_Array is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array;
   function "=" (Left, Right : GameInfoData_Access_Array) return Boolean renames org.allbinary.game.GameInfoData_Package_References."=";
   subtype GameInfoData_Access_Array_Access is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array_Access;
   function "=" (Left, Right : GameInfoData_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfoData_Package_References."=";
   function Java_Box (Value : GameInfoData_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.GameInfoData_Package_References.Java_Box;
   function Java_Unbox_GameInfoData_Access_Array (Value : access Java_Object'Class) return GameInfoData_Access_Array_Access renames org.allbinary.game.GameInfoData_Package_References.Java_Unbox_GameInfoData_Access_Array;
   subtype GameInfoData_Access_Array_Access_Array is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array_Access_Array;
   function "=" (Left, Right : GameInfoData_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameInfoData_Package_References."=";
   subtype GameInfoData_Access_Array_Access_Array_Access is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInfoData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfoData_Package_References."=";
   function Java_Box (Value : GameInfoData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.GameInfoData_Package_References.Java_Box;
   function Java_Unbox_GameInfoData_Access_Array_Access_Array (Value : access Java_Object'Class) return GameInfoData_Access_Array_Access_Array_Access renames org.allbinary.game.GameInfoData_Package_References.Java_Unbox_GameInfoData_Access_Array_Access_Array;

   type GameInfoData is new Java_Object with record
      GAME_TYPE : Unbounded_String;
      GAME_MODE : Unbounded_String;
      PLAYER_TYPE : Unbounded_String;
      HIGHEST_LEVEL : Unbounded_String;
      CURRENT_LEVEL : Unbounded_String;
      SOFTWARE_INFORMATION : Unbounded_String;
   end record;
   instance : GameInfoData_Access;

   procedure Initialize (This : in out GameInfoData'Class);
   function Create return GameInfoData_Access;
   function getInstance return GameInfoData_Access;

end org.allbinary.game.GameInfoData_Package;


