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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.mapping.InputMapping_Package; use org.allbinary.game.input.mapping.InputMapping_Package;

package org.allbinary.game.input.mapping.InputToGameKeyMapping_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package GameKeyFactory_Package renames Standard.org.allbinary.game.input.GameKeyFactory_Package;
   package Input_Package renames Standard.org.allbinary.game.input.Input_Package;
   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type InputToGameKeyMapping is tagged;
   type InputToGameKeyMapping_Access is access all InputToGameKeyMapping'Class;
   type InputToGameKeyMapping_Access_Array is array (Natural range <>) of InputToGameKeyMapping_Access;
   type InputToGameKeyMapping_Access_Array_Access is access all InputToGameKeyMapping_Access_Array;

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
   procedure addMapping (This : in out InputToGameKeyMapping; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class);
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


