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
limited with org.allbinary.game.configuration.GameConfiguration_Package;
package org.allbinary.game.configuration.GameConfiguration_Package_References is
   type GameConfiguration_Access is access all org.allbinary.game.configuration.GameConfiguration_Package.GameConfiguration'Class;
   type GameConfiguration_Access_Array is array (Natural range <>) of GameConfiguration_Access;
   type GameConfiguration_Access_Array_Access is access all GameConfiguration_Access_Array;
   type GameConfiguration_Access_Array_Access_Array is array (Natural range <>) of GameConfiguration_Access_Array_Access;
   type GameConfiguration_Access_Array_Access_Array_Access is access all GameConfiguration_Access_Array_Access_Array;
   type GameConfiguration_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameConfiguration_Access_Array_Access;
   end record;
   function Java_Box (Value : GameConfiguration_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameConfiguration_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameConfiguration_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameConfiguration_Access_Array_Access is (if Value /= null and then Value.all in GameConfiguration_Access_Array_Object'Class then GameConfiguration_Access_Array_Object'Class (Value.all).Value else null);
   type GameConfiguration_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameConfiguration_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameConfiguration_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameConfiguration_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameConfiguration_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameConfiguration_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameConfiguration_Access_Array_Access_Array_Object'Class then GameConfiguration_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.GameConfiguration_Package_References;

with org.allbinary.game.configuration.GameConfiguration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.configuration.GameConfiguration_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameConfiguration_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access;
   function "=" (Left, Right : GameConfiguration_Access) return Boolean renames org.allbinary.game.configuration.GameConfiguration_Package_References."=";
   subtype GameConfiguration_Access_Array is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array;
   function "=" (Left, Right : GameConfiguration_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfiguration_Package_References."=";
   subtype GameConfiguration_Access_Array_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access;
   function "=" (Left, Right : GameConfiguration_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfiguration_Package_References."=";
   function Java_Box (Value : GameConfiguration_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.GameConfiguration_Package_References.Java_Box;
   function Java_Unbox_GameConfiguration_Access_Array (Value : access Java_Object'Class) return GameConfiguration_Access_Array_Access renames org.allbinary.game.configuration.GameConfiguration_Package_References.Java_Unbox_GameConfiguration_Access_Array;
   subtype GameConfiguration_Access_Array_Access_Array is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : GameConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfiguration_Package_References."=";
   subtype GameConfiguration_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfiguration_Package_References."=";
   function Java_Box (Value : GameConfiguration_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.GameConfiguration_Package_References.Java_Box;
   function Java_Unbox_GameConfiguration_Access_Array_Access_Array (Value : access Java_Object'Class) return GameConfiguration_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.GameConfiguration_Package_References.Java_Unbox_GameConfiguration_Access_Array_Access_Array;

   type GameConfiguration is new Java_Object with record
      name : Unbounded_String;
      defaultValue : Integer;
      value : Integer;
      minValue : Integer;
      maxValue : Integer;
      modifiable : Boolean;
   end record;
   MIN_VALUE : Integer;

   procedure Initialize (This : in out GameConfiguration'Class; name : Unbounded_String; defaultValue : Integer; minValue : Integer; maxValue : Integer);
   function Create (name : Unbounded_String; defaultValue : Integer; minValue : Integer; maxValue : Integer) return GameConfiguration_Access;
   procedure setValue (This : in out GameConfiguration; value : Integer);
   function getValue (This : in out GameConfiguration) return Integer;
   procedure setMaxValue (This : in out GameConfiguration; maxValue : Integer);
   function getMaxValue (This : in out GameConfiguration) return Integer;
   procedure setMinValue (This : in out GameConfiguration; minValue : Integer);
   function getMinValue (This : in out GameConfiguration) return Integer;
   procedure setName (This : in out GameConfiguration; name : Unbounded_String);
   function getName (This : in out GameConfiguration) return Unbounded_String;
   procedure setDefaultValue (This : in out GameConfiguration; defaultValue : Integer);
   function getDefaultValue (This : in out GameConfiguration) return Integer;
   procedure setDefault (This : in out GameConfiguration);
   function toString (This : in out GameConfiguration) return Unbounded_String;
   procedure setModifiable (This : in out GameConfiguration; modifiable : Boolean);
   function isModifiable (This : in out GameConfiguration) return Boolean;

end org.allbinary.game.configuration.GameConfiguration_Package;


