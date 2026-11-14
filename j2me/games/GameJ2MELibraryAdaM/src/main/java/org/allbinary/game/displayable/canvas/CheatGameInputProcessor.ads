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
limited with org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package;
package org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References is
   type CheatGameInputProcessor_Access is access all org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package.CheatGameInputProcessor'Class;
   type CheatGameInputProcessor_Access_Array is array (Natural range <>) of CheatGameInputProcessor_Access;
   type CheatGameInputProcessor_Access_Array_Access is access all CheatGameInputProcessor_Access_Array;
   type CheatGameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of CheatGameInputProcessor_Access_Array_Access;
   type CheatGameInputProcessor_Access_Array_Access_Array_Access is access all CheatGameInputProcessor_Access_Array_Access_Array;
   type CheatGameInputProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CheatGameInputProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : CheatGameInputProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CheatGameInputProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CheatGameInputProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CheatGameInputProcessor_Access_Array_Access is (if Value /= null and then Value.all in CheatGameInputProcessor_Access_Array_Object'Class then CheatGameInputProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type CheatGameInputProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CheatGameInputProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CheatGameInputProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CheatGameInputProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CheatGameInputProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CheatGameInputProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CheatGameInputProcessor_Access_Array_Access_Array_Object'Class then CheatGameInputProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References;

with org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.GameKeyFactory_Package_References;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
limited with org.allbinary.game.layer.special.SpecialGameInputInterface_Package;
with org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package is

   package GameKeyFactory_Package renames Standard.org.allbinary.game.input.GameKeyFactory_Package;
   package PlayerGameInput_Package renames Standard.org.allbinary.game.input.PlayerGameInput_Package;
   package SpecialGameInputInterface_Package renames Standard.org.allbinary.game.layer.special.SpecialGameInputInterface_Package;
   package Reference_Types is
   subtype GameKeyFactory_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access;
   use type GameKeyFactory_Access;
   subtype GameKeyFactory_Access_Array is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array;
   use type GameKeyFactory_Access_Array;
   subtype GameKeyFactory_Access_Array_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access;
   use type GameKeyFactory_Access_Array_Access;
   subtype GameKeyFactory_Access_Array_Access_Array is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access_Array;
   use type GameKeyFactory_Access_Array_Access_Array;
   subtype GameKeyFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access_Array_Access;
   use type GameKeyFactory_Access_Array_Access_Array_Access;
   subtype SpecialGameInputInterface_Access is org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References.SpecialGameInputInterface_Access;
   use type SpecialGameInputInterface_Access;
   subtype SpecialGameInputInterface_Access_Array is org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References.SpecialGameInputInterface_Access_Array;
   use type SpecialGameInputInterface_Access_Array;
   subtype SpecialGameInputInterface_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References.SpecialGameInputInterface_Access_Array_Access;
   use type SpecialGameInputInterface_Access_Array_Access;
   subtype SpecialGameInputInterface_Access_Array_Access_Array is org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References.SpecialGameInputInterface_Access_Array_Access_Array;
   use type SpecialGameInputInterface_Access_Array_Access_Array;
   subtype SpecialGameInputInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References.SpecialGameInputInterface_Access_Array_Access_Array_Access;
   use type SpecialGameInputInterface_Access_Array_Access_Array_Access;
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


   subtype CheatGameInputProcessor_Access is org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References.CheatGameInputProcessor_Access;
   function "=" (Left, Right : CheatGameInputProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References."=";
   subtype CheatGameInputProcessor_Access_Array is org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References.CheatGameInputProcessor_Access_Array;
   function "=" (Left, Right : CheatGameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References."=";
   subtype CheatGameInputProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References.CheatGameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : CheatGameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References."=";
   function Java_Box (Value : CheatGameInputProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_CheatGameInputProcessor_Access_Array (Value : access Java_Object'Class) return CheatGameInputProcessor_Access_Array_Access renames org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References.Java_Unbox_CheatGameInputProcessor_Access_Array;
   subtype CheatGameInputProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References.CheatGameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : CheatGameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References."=";
   subtype CheatGameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References.CheatGameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CheatGameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References."=";
   function Java_Box (Value : CheatGameInputProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_CheatGameInputProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return CheatGameInputProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package_References.Java_Unbox_CheatGameInputProcessor_Access_Array_Access_Array;

   type CheatGameInputProcessor is new PlayerGameInput with record
      PROCESS_GAME : Unbounded_String;
      gameCanvas : AllBinaryGameCanvas_Access;
      gameKeyFactory : GameKeyFactory_Access;
   end record;
   inputProcessor : SpecialGameInputInterface_Access;

   procedure Initialize (This : in out CheatGameInputProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return CheatGameInputProcessor_Access;
   procedure update (This : in out CheatGameInputProcessor);

end org.allbinary.game.displayable.canvas.CheatGameInputProcessor_Package;


