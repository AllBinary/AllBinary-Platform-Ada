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
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.PlatformInputMappingFactory_Package; use org.allbinary.game.input.PlatformInputMappingFactory_Package;
with org.allbinary.game.input.mapping.GameInputMapping_Package; use org.allbinary.game.input.mapping.GameInputMapping_Package;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.paint.help.HelpPaintable_Package; use org.allbinary.game.paint.help.HelpPaintable_Package;

package org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package is

   package GameKey_Package renames org.allbinary.game.input.GameKey_Package;
   package GameKeyFactory_Package renames org.allbinary.game.input.GameKeyFactory_Package;
   package Input_Package renames org.allbinary.game.input.Input_Package;
   package PlatformInputMappingFactory_Package renames org.allbinary.game.input.PlatformInputMappingFactory_Package;
   package GameInputMapping_Package renames org.allbinary.game.input.mapping.GameInputMapping_Package;
   package PersistentInputMapping_Package renames org.allbinary.game.input.mapping.PersistentInputMapping_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type BasicInputMappingHelpPaintable is tagged;
   type BasicInputMappingHelpPaintable_Access is access all BasicInputMappingHelpPaintable'Class;
   type BasicInputMappingHelpPaintable_Access_Array is array (Natural range <>) of BasicInputMappingHelpPaintable_Access;
   type BasicInputMappingHelpPaintable_Access_Array_Access is access all BasicInputMappingHelpPaintable_Access_Array;

   type BasicInputMappingHelpPaintable is new HelpPaintable with record
      gameInputMappingArray : GameInputMapping_Access_Array_Access;
      NONE : GameKey_Access;
   end record;

   procedure Initialize (This : in out BasicInputMappingHelpPaintable'Class; gameInputMappingArray : GameInputMapping_Access_Array_Access; basicColor : BasicColor_Access);
   function Create (gameInputMappingArray : GameInputMapping_Access_Array_Access; basicColor : BasicColor_Access) return BasicInputMappingHelpPaintable_Access;
   procedure update (This : in out BasicInputMappingHelpPaintable; selectedGameKey : GameKey_Access; selectedInput : Input_Access);
   function get (This : in out BasicInputMappingHelpPaintable; keyList : BasicArrayList_Access) return Unbounded_String;
   procedure get (This : in out BasicInputMappingHelpPaintable; keyList : BasicArrayList_Access);

end org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package;


