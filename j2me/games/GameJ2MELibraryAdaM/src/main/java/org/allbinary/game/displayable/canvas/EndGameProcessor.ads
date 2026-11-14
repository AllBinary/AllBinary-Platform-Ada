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
limited with org.allbinary.game.displayable.canvas.EndGameProcessor_Package;
package org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References is
   type EndGameProcessor_Access is access all org.allbinary.game.displayable.canvas.EndGameProcessor_Package.EndGameProcessor'Class;
   type EndGameProcessor_Access_Array is array (Natural range <>) of EndGameProcessor_Access;
   type EndGameProcessor_Access_Array_Access is access all EndGameProcessor_Access_Array;
   type EndGameProcessor_Access_Array_Access_Array is array (Natural range <>) of EndGameProcessor_Access_Array_Access;
   type EndGameProcessor_Access_Array_Access_Array_Access is access all EndGameProcessor_Access_Array_Access_Array;
   type EndGameProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EndGameProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : EndGameProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EndGameProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EndGameProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EndGameProcessor_Access_Array_Access is (if Value /= null and then Value.all in EndGameProcessor_Access_Array_Object'Class then EndGameProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type EndGameProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EndGameProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : EndGameProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EndGameProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EndGameProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EndGameProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in EndGameProcessor_Access_Array_Access_Array_Object'Class then EndGameProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References;

with org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
limited with org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.game.state.GameStateFactory_Package_References;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.EndGameProcessor_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package GameStateFactory_Package renames Standard.org.allbinary.game.state.GameStateFactory_Package;
   package Reference_Types is
   subtype GameStateFactory_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access;
   use type GameStateFactory_Access;
   subtype GameStateFactory_Access_Array is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array;
   use type GameStateFactory_Access_Array;
   subtype GameStateFactory_Access_Array_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access;
   use type GameStateFactory_Access_Array_Access;
   subtype GameStateFactory_Access_Array_Access_Array is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access_Array;
   use type GameStateFactory_Access_Array_Access_Array;
   subtype GameStateFactory_Access_Array_Access_Array_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access_Array_Access;
   use type GameStateFactory_Access_Array_Access_Array_Access;
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


   subtype EndGameProcessor_Access is org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References.EndGameProcessor_Access;
   function "=" (Left, Right : EndGameProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References."=";
   subtype EndGameProcessor_Access_Array is org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References.EndGameProcessor_Access_Array;
   function "=" (Left, Right : EndGameProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References."=";
   subtype EndGameProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References.EndGameProcessor_Access_Array_Access;
   function "=" (Left, Right : EndGameProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References."=";
   function Java_Box (Value : EndGameProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References.Java_Box;
   function Java_Unbox_EndGameProcessor_Access_Array (Value : access Java_Object'Class) return EndGameProcessor_Access_Array_Access renames org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References.Java_Unbox_EndGameProcessor_Access_Array;
   subtype EndGameProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References.EndGameProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : EndGameProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References."=";
   subtype EndGameProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References.EndGameProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EndGameProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References."=";
   function Java_Box (Value : EndGameProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References.Java_Box;
   function Java_Unbox_EndGameProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return EndGameProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.EndGameProcessor_Package_References.Java_Unbox_EndGameProcessor_Access_Array_Access_Array;

   type EndGameProcessor is new Processor with record
      gameStateFactory : GameStateFactory_Access;
      gameCanvas : AllBinaryGameCanvas_Access;
      WAIT : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out EndGameProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return EndGameProcessor_Access;
   procedure process (This : in out EndGameProcessor);

end org.allbinary.game.displayable.canvas.EndGameProcessor_Package;


