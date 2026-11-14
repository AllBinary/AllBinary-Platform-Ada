-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package;
package org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References is
   type GameTickDisplayInfoSingleton_Access is access all org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package.GameTickDisplayInfoSingleton'Class;
   type GameTickDisplayInfoSingleton_Access_Array is array (Natural range <>) of GameTickDisplayInfoSingleton_Access;
   type GameTickDisplayInfoSingleton_Access_Array_Access is access all GameTickDisplayInfoSingleton_Access_Array;
   type GameTickDisplayInfoSingleton_Access_Array_Access_Array is array (Natural range <>) of GameTickDisplayInfoSingleton_Access_Array_Access;
   type GameTickDisplayInfoSingleton_Access_Array_Access_Array_Access is access all GameTickDisplayInfoSingleton_Access_Array_Access_Array;
   type GameTickDisplayInfoSingleton_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameTickDisplayInfoSingleton_Access_Array_Access;
   end record;
   function Java_Box (Value : GameTickDisplayInfoSingleton_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameTickDisplayInfoSingleton_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameTickDisplayInfoSingleton_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameTickDisplayInfoSingleton_Access_Array_Access is (if Value /= null and then Value.all in GameTickDisplayInfoSingleton_Access_Array_Object'Class then GameTickDisplayInfoSingleton_Access_Array_Object'Class (Value.all).Value else null);
   type GameTickDisplayInfoSingleton_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameTickDisplayInfoSingleton_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameTickDisplayInfoSingleton_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameTickDisplayInfoSingleton_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameTickDisplayInfoSingleton_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameTickDisplayInfoSingleton_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameTickDisplayInfoSingleton_Access_Array_Access_Array_Object'Class then GameTickDisplayInfoSingleton_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References;

with org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;

package org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package is

   package Reference_Types is
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   use type DisplayInfoSingleton_Access;
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   use type DisplayInfoSingleton_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access;
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   use type DisplayInfoSingleton_Access_Array_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameTickDisplayInfoSingleton_Access is org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References.GameTickDisplayInfoSingleton_Access;
   function "=" (Left, Right : GameTickDisplayInfoSingleton_Access) return Boolean renames org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References."=";
   subtype GameTickDisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References.GameTickDisplayInfoSingleton_Access_Array;
   function "=" (Left, Right : GameTickDisplayInfoSingleton_Access_Array) return Boolean renames org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References."=";
   subtype GameTickDisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References.GameTickDisplayInfoSingleton_Access_Array_Access;
   function "=" (Left, Right : GameTickDisplayInfoSingleton_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References."=";
   function Java_Box (Value : GameTickDisplayInfoSingleton_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References.Java_Box;
   function Java_Unbox_GameTickDisplayInfoSingleton_Access_Array (Value : access Java_Object'Class) return GameTickDisplayInfoSingleton_Access_Array_Access renames org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References.Java_Unbox_GameTickDisplayInfoSingleton_Access_Array;
   subtype GameTickDisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References.GameTickDisplayInfoSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : GameTickDisplayInfoSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References."=";
   subtype GameTickDisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References.GameTickDisplayInfoSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameTickDisplayInfoSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References."=";
   function Java_Box (Value : GameTickDisplayInfoSingleton_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References.Java_Box;
   function Java_Unbox_GameTickDisplayInfoSingleton_Access_Array_Access_Array (Value : access Java_Object'Class) return GameTickDisplayInfoSingleton_Access_Array_Access_Array_Access renames org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package_References.Java_Unbox_GameTickDisplayInfoSingleton_Access_Array_Access_Array;

   type GameTickDisplayInfoSingleton is new Java_Object with record
      displayInfoSingleton : DisplayInfoSingleton_Access;
      lastWidth : Integer;
      lastHeight : Integer;
      lastHalfWidth : Integer;
      lastHalfHeight : Integer;
   end record;
   instance : GameTickDisplayInfoSingleton_Access;

   procedure Initialize (This : in out GameTickDisplayInfoSingleton'Class);
   function Create return GameTickDisplayInfoSingleton_Access;
   function getInstance return GameTickDisplayInfoSingleton_Access;
   procedure update (This : in out GameTickDisplayInfoSingleton);
   function getLastWidth (This : in out GameTickDisplayInfoSingleton) return Integer;
   function getLastHeight (This : in out GameTickDisplayInfoSingleton) return Integer;
   function getLastHalfWidth (This : in out GameTickDisplayInfoSingleton) return Integer;
   function getLastHalfHeight (This : in out GameTickDisplayInfoSingleton) return Integer;

end org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package;


