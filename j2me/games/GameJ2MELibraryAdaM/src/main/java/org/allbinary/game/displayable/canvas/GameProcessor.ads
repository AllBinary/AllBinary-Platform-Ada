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
limited with org.allbinary.game.displayable.canvas.GameProcessor_Package;
package org.allbinary.game.displayable.canvas.GameProcessor_Package_References is
   type GameProcessor_Access is access all org.allbinary.game.displayable.canvas.GameProcessor_Package.GameProcessor'Class;
   type GameProcessor_Access_Array is array (Natural range <>) of GameProcessor_Access;
   type GameProcessor_Access_Array_Access is access all GameProcessor_Access_Array;
   type GameProcessor_Access_Array_Access_Array is array (Natural range <>) of GameProcessor_Access_Array_Access;
   type GameProcessor_Access_Array_Access_Array_Access is access all GameProcessor_Access_Array_Access_Array;
   type GameProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : GameProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameProcessor_Access_Array_Access is (if Value /= null and then Value.all in GameProcessor_Access_Array_Object'Class then GameProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type GameProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameProcessor_Access_Array_Access_Array_Object'Class then GameProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.GameProcessor_Package_References;

with org.allbinary.game.displayable.canvas.GameProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.GameProcessor_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package Reference_Types is
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   use type AllBinaryGameCanvas_Access;
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   use type AllBinaryGameCanvas_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   use type AllBinaryGameCanvas_Access_Array_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameProcessor_Access is org.allbinary.game.displayable.canvas.GameProcessor_Package_References.GameProcessor_Access;
   function "=" (Left, Right : GameProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameProcessor_Package_References."=";
   subtype GameProcessor_Access_Array is org.allbinary.game.displayable.canvas.GameProcessor_Package_References.GameProcessor_Access_Array;
   function "=" (Left, Right : GameProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameProcessor_Package_References."=";
   subtype GameProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.GameProcessor_Package_References.GameProcessor_Access_Array_Access;
   function "=" (Left, Right : GameProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameProcessor_Package_References."=";
   function Java_Box (Value : GameProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.GameProcessor_Package_References.Java_Box;
   function Java_Unbox_GameProcessor_Access_Array (Value : access Java_Object'Class) return GameProcessor_Access_Array_Access renames org.allbinary.game.displayable.canvas.GameProcessor_Package_References.Java_Unbox_GameProcessor_Access_Array;
   subtype GameProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameProcessor_Package_References.GameProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : GameProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameProcessor_Package_References."=";
   subtype GameProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameProcessor_Package_References.GameProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameProcessor_Package_References."=";
   function Java_Box (Value : GameProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.GameProcessor_Package_References.Java_Box;
   function Java_Unbox_GameProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return GameProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.GameProcessor_Package_References.Java_Unbox_GameProcessor_Access_Array_Access_Array;

   type GameProcessor is new Processor with record
      gameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out GameProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return GameProcessor_Access;
   procedure process (This : in out GameProcessor);

end org.allbinary.game.displayable.canvas.GameProcessor_Package;


