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

limited with org.allbinary.game.input.InputProcessor_Package;
package org.allbinary.game.input.InputProcessor_Package_References is
   type InputProcessor_Access is access all org.allbinary.game.input.InputProcessor_Package.InputProcessor'Class;
   type InputProcessor_Access_Array is array (Natural range <>) of InputProcessor_Access;
   type InputProcessor_Access_Array_Access is access all InputProcessor_Access_Array;
   type InputProcessor_Access_Array_Access_Array is array (Natural range <>) of InputProcessor_Access_Array_Access;
   type InputProcessor_Access_Array_Access_Array_Access is access all InputProcessor_Access_Array_Access_Array;
end org.allbinary.game.input.InputProcessor_Package_References;

with org.allbinary.game.input.InputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Canvas_Package_References;
limited with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameInputStrings_Package_References;

package org.allbinary.game.input.InputProcessor_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Reference_Types is
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   use type Canvas_Access;
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   use type Canvas_Access_Array;
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   use type Canvas_Access_Array_Access;
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   use type Canvas_Access_Array_Access_Array;
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   use type Canvas_Access_Array_Access_Array_Access;
   subtype GameInputStrings_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access;
   use type GameInputStrings_Access;
   subtype GameInputStrings_Access_Array is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array;
   use type GameInputStrings_Access_Array;
   subtype GameInputStrings_Access_Array_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access;
   use type GameInputStrings_Access_Array_Access;
   subtype GameInputStrings_Access_Array_Access_Array is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access_Array;
   use type GameInputStrings_Access_Array_Access_Array;
   subtype GameInputStrings_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access_Array_Access;
   use type GameInputStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputProcessor_Access is org.allbinary.game.input.InputProcessor_Package_References.InputProcessor_Access;
   function "=" (Left, Right : InputProcessor_Access) return Boolean renames org.allbinary.game.input.InputProcessor_Package_References."=";
   subtype InputProcessor_Access_Array is org.allbinary.game.input.InputProcessor_Package_References.InputProcessor_Access_Array;
   function "=" (Left, Right : InputProcessor_Access_Array) return Boolean renames org.allbinary.game.input.InputProcessor_Package_References."=";
   subtype InputProcessor_Access_Array_Access is org.allbinary.game.input.InputProcessor_Package_References.InputProcessor_Access_Array_Access;
   function "=" (Left, Right : InputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputProcessor_Package_References."=";
   subtype InputProcessor_Access_Array_Access_Array is org.allbinary.game.input.InputProcessor_Package_References.InputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : InputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.InputProcessor_Package_References."=";
   subtype InputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.InputProcessor_Package_References.InputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputProcessor_Package_References."=";

   type InputProcessor is new Java_Object with record
      gameInputStrings : GameInputStrings_Access;
   end record;

   procedure Initialize (This : in out InputProcessor'Class);
   function Create return InputProcessor_Access;
   procedure keyPressedByDevice (This : in out InputProcessor; keyCode : Integer; deviceId : Integer);
   procedure keyReleasedByDevice (This : in out InputProcessor; canvas_Param : access Canvas_Package.Canvas'Class; keyCode : Integer; deviceId : Integer);

end org.allbinary.game.input.InputProcessor_Package;


