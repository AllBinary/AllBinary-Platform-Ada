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
limited with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
package org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References is
   type InputToGameKeyMapping_Access is access all org.allbinary.game.input.mapping.InputToGameKeyMapping_Package.InputToGameKeyMapping'Class;
   type InputToGameKeyMapping_Access_Array is array (Natural range <>) of InputToGameKeyMapping_Access;
   type InputToGameKeyMapping_Access_Array_Access is access all InputToGameKeyMapping_Access_Array;
   type InputToGameKeyMapping_Access_Array_Access_Array is array (Natural range <>) of InputToGameKeyMapping_Access_Array_Access;
   type InputToGameKeyMapping_Access_Array_Access_Array_Access is access all InputToGameKeyMapping_Access_Array_Access_Array;
   type InputToGameKeyMapping_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputToGameKeyMapping_Access_Array_Access;
   end record;
   function Java_Box (Value : InputToGameKeyMapping_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputToGameKeyMapping_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputToGameKeyMapping_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputToGameKeyMapping_Access_Array_Access is (if Value /= null and then Value.all in InputToGameKeyMapping_Access_Array_Object'Class then InputToGameKeyMapping_Access_Array_Object'Class (Value.all).Value else null);
   type InputToGameKeyMapping_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputToGameKeyMapping_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputToGameKeyMapping_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputToGameKeyMapping_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputToGameKeyMapping_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputToGameKeyMapping_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputToGameKeyMapping_Access_Array_Access_Array_Object'Class then InputToGameKeyMapping_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References;

with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References;
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
limited with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKey_Package_References;
limited with org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.GameKeyFactory_Package_References;
limited with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.Input_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.input.mapping.InputMapping_Package; use org.allbinary.game.input.mapping.InputMapping_Package;

package org.allbinary.game.input.mapping.InputToGameKeyMapping_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package GameKeyFactory_Package renames Standard.org.allbinary.game.input.GameKeyFactory_Package;
   package Input_Package renames Standard.org.allbinary.game.input.Input_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype GameKey_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access;
   use type GameKey_Access;
   subtype GameKey_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array;
   use type GameKey_Access_Array;
   subtype GameKey_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access;
   use type GameKey_Access_Array_Access;
   subtype GameKey_Access_Array_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array;
   use type GameKey_Access_Array_Access_Array;
   subtype GameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array_Access;
   use type GameKey_Access_Array_Access_Array_Access;
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
   subtype Input_Access is org.allbinary.game.input.Input_Package_References.Input_Access;
   use type Input_Access;
   subtype Input_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array;
   use type Input_Access_Array;
   subtype Input_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access;
   use type Input_Access_Array_Access;
   subtype Input_Access_Array_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array;
   use type Input_Access_Array_Access_Array;
   subtype Input_Access_Array_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array_Access;
   use type Input_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputToGameKeyMapping_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   function Java_Box (Value : InputToGameKeyMapping_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.Java_Box;
   function Java_Unbox_InputToGameKeyMapping_Access_Array (Value : access Java_Object'Class) return InputToGameKeyMapping_Access_Array_Access renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.Java_Unbox_InputToGameKeyMapping_Access_Array;
   subtype InputToGameKeyMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   function Java_Box (Value : InputToGameKeyMapping_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.Java_Box;
   function Java_Unbox_InputToGameKeyMapping_Access_Array_Access_Array (Value : access Java_Object'Class) return InputToGameKeyMapping_Access_Array_Access_Array_Access renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.Java_Unbox_InputToGameKeyMapping_Access_Array_Access_Array;

   type InputToGameKeyMapping is new InputMapping with record
      gameKeyFactory : GameKeyFactory_Access;
      mappedGameKeys : GameKey_Access_Array_Access;
      platformToGameKeyMapping : GameKey_Access_Array_Access;
      negativePlatformToGameKeyMapping : GameKey_Access_Array_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out InputToGameKeyMapping'Class);
   function Create return InputToGameKeyMapping_Access;
   function getNullInstance return InputToGameKeyMapping_Access;
   procedure clear (This : in out InputToGameKeyMapping);
   procedure removeAll (This : in out InputToGameKeyMapping);
   procedure addMapping (This : in out InputToGameKeyMapping; inputToGameKeyMapping_Var_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class);
   procedure addAll (This : in out InputToGameKeyMapping; input_Param : access Input_Package.Input'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure add (This : in out InputToGameKeyMapping; input_Param : access Input_Package.Input'Class; mappedToInput_Param : access Input_Package.Input'Class);
   procedure remove (This : in out InputToGameKeyMapping; input_Param : access Input_Package.Input'Class; mappedToInput_Param : access Input_Package.Input'Class);
   procedure set (This : in out InputToGameKeyMapping; input_Param : access Input_Package.Input'Class; mappedToInput_Param : access Input_Package.Input'Class);
   function getMaxMappable (This : in out InputToGameKeyMapping) return Integer;
   function getReverseInstance (This : in out InputToGameKeyMapping; id : Integer) return BasicArrayList_Access;
   procedure getReverseInstance (This : in out InputToGameKeyMapping; id : Integer);
   procedure initGameKey (This : in out InputToGameKeyMapping; canvas_Param : access Canvas_Package.Canvas'Class; gameKey_Param : access GameKey_Package.GameKey'Class);
   function getSmallestCanvasGameKeyCode (This : in out InputToGameKeyMapping; canvas_Param : access Canvas_Package.Canvas'Class) return Integer;
   procedure getSmallestCanvasGameKeyCode (This : in out InputToGameKeyMapping; canvas_Param : access Canvas_Package.Canvas'Class);
   procedure init (This : in out InputToGameKeyMapping; canvas_Param : access Canvas_Package.Canvas'Class);
   function getInstanceForCanvas (This : in out InputToGameKeyMapping; canvas_Param : access Canvas_Package.Canvas'Class; id : Integer) return GameKey_Access;
   procedure getInstanceForCanvas (This : in out InputToGameKeyMapping; canvas_Param : access Canvas_Package.Canvas'Class; id : Integer);
   function getInstance (This : in out InputToGameKeyMapping; id : Integer) return GameKey_Access;
   procedure getInstance (This : in out InputToGameKeyMapping; id : Integer);

end org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;


