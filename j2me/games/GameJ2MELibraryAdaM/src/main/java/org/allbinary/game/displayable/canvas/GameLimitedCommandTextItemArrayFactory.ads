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
limited with org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package;
package org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References is
   type GameLimitedCommandTextItemArrayFactory_Access is access all org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package.GameLimitedCommandTextItemArrayFactory'Class;
   type GameLimitedCommandTextItemArrayFactory_Access_Array is array (Natural range <>) of GameLimitedCommandTextItemArrayFactory_Access;
   type GameLimitedCommandTextItemArrayFactory_Access_Array_Access is access all GameLimitedCommandTextItemArrayFactory_Access_Array;
   type GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array is array (Natural range <>) of GameLimitedCommandTextItemArrayFactory_Access_Array_Access;
   type GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Access is access all GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array;
   type GameLimitedCommandTextItemArrayFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameLimitedCommandTextItemArrayFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : GameLimitedCommandTextItemArrayFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameLimitedCommandTextItemArrayFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameLimitedCommandTextItemArrayFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameLimitedCommandTextItemArrayFactory_Access_Array_Access is (if Value /= null and then Value.all in GameLimitedCommandTextItemArrayFactory_Access_Array_Object'Class then GameLimitedCommandTextItemArrayFactory_Access_Array_Object'Class (Value.all).Value else null);
   type GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Object'Class then GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References;

with org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;
with org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References;

package org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package is

   package CommandTextItemArrayFactory_Package renames Standard.org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;
   package Reference_Types is
   subtype CommandTextItemArrayFactory_Access is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access;
   use type CommandTextItemArrayFactory_Access;
   subtype CommandTextItemArrayFactory_Access_Array is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array;
   use type CommandTextItemArrayFactory_Access_Array;
   subtype CommandTextItemArrayFactory_Access_Array_Access is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array_Access;
   use type CommandTextItemArrayFactory_Access_Array_Access;
   subtype CommandTextItemArrayFactory_Access_Array_Access_Array is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array_Access_Array;
   use type CommandTextItemArrayFactory_Access_Array_Access_Array;
   subtype CommandTextItemArrayFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array_Access_Array_Access;
   use type CommandTextItemArrayFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameLimitedCommandTextItemArrayFactory_Access is org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References.GameLimitedCommandTextItemArrayFactory_Access;
   function "=" (Left, Right : GameLimitedCommandTextItemArrayFactory_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References."=";
   subtype GameLimitedCommandTextItemArrayFactory_Access_Array is org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References.GameLimitedCommandTextItemArrayFactory_Access_Array;
   function "=" (Left, Right : GameLimitedCommandTextItemArrayFactory_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References."=";
   subtype GameLimitedCommandTextItemArrayFactory_Access_Array_Access is org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References.GameLimitedCommandTextItemArrayFactory_Access_Array_Access;
   function "=" (Left, Right : GameLimitedCommandTextItemArrayFactory_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References."=";
   function Java_Box (Value : GameLimitedCommandTextItemArrayFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References.Java_Box;
   function Java_Unbox_GameLimitedCommandTextItemArrayFactory_Access_Array (Value : access Java_Object'Class) return GameLimitedCommandTextItemArrayFactory_Access_Array_Access renames org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References.Java_Unbox_GameLimitedCommandTextItemArrayFactory_Access_Array;
   subtype GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References.GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References."=";
   subtype GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References.GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References."=";
   function Java_Box (Value : GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References.Java_Box;
   function Java_Unbox_GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package_References.Java_Unbox_GameLimitedCommandTextItemArrayFactory_Access_Array_Access_Array;

   type GameLimitedCommandTextItemArrayFactory is new Java_Object with record
      commandTextItemArrayFactory : CommandTextItemArrayFactory_Access;
   end record;
   instance : GameLimitedCommandTextItemArrayFactory_Access;

   procedure Initialize (This : in out GameLimitedCommandTextItemArrayFactory'Class);
   function Create return GameLimitedCommandTextItemArrayFactory_Access;
   function getInstance return GameLimitedCommandTextItemArrayFactory_Access;
   function getCommandTextItemArrayFactory (This : in out GameLimitedCommandTextItemArrayFactory) return CommandTextItemArrayFactory_Access;

end org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package;


