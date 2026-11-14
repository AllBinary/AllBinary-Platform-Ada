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
limited with org.allbinary.game.PlayerType_Package;
package org.allbinary.game.PlayerType_Package_References is
   type PlayerType_Access is access all org.allbinary.game.PlayerType_Package.PlayerType'Class;
   type PlayerType_Access_Array is array (Natural range <>) of PlayerType_Access;
   type PlayerType_Access_Array_Access is access all PlayerType_Access_Array;
   type PlayerType_Access_Array_Access_Array is array (Natural range <>) of PlayerType_Access_Array_Access;
   type PlayerType_Access_Array_Access_Array_Access is access all PlayerType_Access_Array_Access_Array;
   type PlayerType_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayerType_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayerType_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayerType_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayerType_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayerType_Access_Array_Access is (if Value /= null and then Value.all in PlayerType_Access_Array_Object'Class then PlayerType_Access_Array_Object'Class (Value.all).Value else null);
   type PlayerType_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayerType_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayerType_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayerType_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayerType_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayerType_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlayerType_Access_Array_Access_Array_Object'Class then PlayerType_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.PlayerType_Package_References;

with org.allbinary.game.PlayerType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.PlayerType_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PlayerType_Access is org.allbinary.game.PlayerType_Package_References.PlayerType_Access;
   function "=" (Left, Right : PlayerType_Access) return Boolean renames org.allbinary.game.PlayerType_Package_References."=";
   subtype PlayerType_Access_Array is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array;
   function "=" (Left, Right : PlayerType_Access_Array) return Boolean renames org.allbinary.game.PlayerType_Package_References."=";
   subtype PlayerType_Access_Array_Access is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array_Access;
   function "=" (Left, Right : PlayerType_Access_Array_Access) return Boolean renames org.allbinary.game.PlayerType_Package_References."=";
   function Java_Box (Value : PlayerType_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.PlayerType_Package_References.Java_Box;
   function Java_Unbox_PlayerType_Access_Array (Value : access Java_Object'Class) return PlayerType_Access_Array_Access renames org.allbinary.game.PlayerType_Package_References.Java_Unbox_PlayerType_Access_Array;
   subtype PlayerType_Access_Array_Access_Array is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerType_Access_Array_Access_Array) return Boolean renames org.allbinary.game.PlayerType_Package_References."=";
   subtype PlayerType_Access_Array_Access_Array_Access is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.PlayerType_Package_References."=";
   function Java_Box (Value : PlayerType_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.PlayerType_Package_References.Java_Box;
   function Java_Unbox_PlayerType_Access_Array_Access_Array (Value : access Java_Object'Class) return PlayerType_Access_Array_Access_Array_Access renames org.allbinary.game.PlayerType_Package_References.Java_Unbox_PlayerType_Access_Array_Access_Array;

   type PlayerType is new Java_Object with record
      id : Integer;
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out PlayerType'Class; name : Unbounded_String; value : Integer);
   function Create (name : Unbounded_String; value : Integer) return PlayerType_Access;
   function getId (This : in out PlayerType) return Integer;
   function getName (This : in out PlayerType) return Unbounded_String;
   function toString (This : in out PlayerType) return Unbounded_String;

end org.allbinary.game.PlayerType_Package;


