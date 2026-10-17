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
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.PlatformInputMappingFactory_Package; use org.allbinary.game.input.PlatformInputMappingFactory_Package;
with org.allbinary.game.input.mapping.GameInputMapping_Package; use org.allbinary.game.input.mapping.GameInputMapping_Package;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.paint.help.HelpPaintable_Package; use org.allbinary.game.paint.help.HelpPaintable_Package;

package org.allbinary.game.paint.help.InputMappingHelpPaintable_Package is

   package GameKey_Package renames org.allbinary.game.input.GameKey_Package;
   package GameKeyFactory_Package renames org.allbinary.game.input.GameKeyFactory_Package;
   package Input_Package renames org.allbinary.game.input.Input_Package;
   package PlatformInputMappingFactory_Package renames org.allbinary.game.input.PlatformInputMappingFactory_Package;
   package GameInputMapping_Package renames org.allbinary.game.input.mapping.GameInputMapping_Package;
   package PersistentInputMapping_Package renames org.allbinary.game.input.mapping.PersistentInputMapping_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type InputMappingHelpPaintable is tagged;
   type InputMappingHelpPaintable_Access is access all InputMappingHelpPaintable'Class;
   type InputMappingHelpPaintable_Access_Array is array (Natural range <>) of InputMappingHelpPaintable_Access;
   type InputMappingHelpPaintable_Access_Array_Access is access all InputMappingHelpPaintable_Access_Array;

   type InputMappingHelpPaintable is new HelpPaintable with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      commonSeps : CommonSeps_Access;
      stringUtil : StringUtil_Access;
      basicColorFactory : BasicColorFactory_Access;
      NONE : GameKey_Access;
      EMPTY_STRING : Unbounded_String;
      gameInputMappingArray : GameInputMapping_Access_Array_Access;
      keyMappingArray : BasicArrayList_Access_Array_Access;
      actionBasicColor : BasicColor_Access_Array_Access;
      inputBasicColorArray : BasicColor_Access_Array_Access_Array_Access;
      selectedBasicColor : BasicColor_Access;
      updateMyFontProperties : UpdateMyFontProperties_Access;
   end record;
   AND_Id : Unbounded_String;
   SEP : Unbounded_String;
   MORE_THAN_TWO_IN_LIST_AND : Unbounded_String;

   procedure Initialize (This : in out InputMappingHelpPaintable'Class; gameInputMappingArray : GameInputMapping_Access_Array_Access; backgroundBasicColor : BasicColor_Access; basicColor : BasicColor_Access);
   function Create (gameInputMappingArray : GameInputMapping_Access_Array_Access; backgroundBasicColor : BasicColor_Access; basicColor : BasicColor_Access) return InputMappingHelpPaintable_Access;
   procedure updateMeasurement (This : in out InputMappingHelpPaintable; graphics : Graphics_Access);
   procedure update (This : in out InputMappingHelpPaintable; selectedGameKey : GameKey_Access; selectedInput : Input_Access);
   function get (This : in out InputMappingHelpPaintable; keyList : BasicArrayList_Access) return Unbounded_String;
   procedure get (This : in out InputMappingHelpPaintable; keyList : BasicArrayList_Access);
   procedure paint (This : in out InputMappingHelpPaintable; graphics : Graphics_Access);

end org.allbinary.game.paint.help.InputMappingHelpPaintable_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.PlatformInputMappingFactory_Package; use org.allbinary.game.input.PlatformInputMappingFactory_Package;
with org.allbinary.game.input.mapping.GameInputMapping_Package; use org.allbinary.game.input.mapping.GameInputMapping_Package;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.paint.help.HelpPaintable_Package; use org.allbinary.game.paint.help.HelpPaintable_Package;

package org.allbinary.game.paint.help.UpdateMyFontProperties_Package is

   package GameKey_Package renames org.allbinary.game.input.GameKey_Package;
   package GameKeyFactory_Package renames org.allbinary.game.input.GameKeyFactory_Package;
   package Input_Package renames org.allbinary.game.input.Input_Package;
   package PlatformInputMappingFactory_Package renames org.allbinary.game.input.PlatformInputMappingFactory_Package;
   package GameInputMapping_Package renames org.allbinary.game.input.mapping.GameInputMapping_Package;
   package PersistentInputMapping_Package renames org.allbinary.game.input.mapping.PersistentInputMapping_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type UpdateMyFontProperties is tagged;
   type UpdateMyFontProperties_Access is access all UpdateMyFontProperties'Class;
   type UpdateMyFontProperties_Access_Array is array (Natural range <>) of UpdateMyFontProperties_Access;
   type UpdateMyFontProperties_Access_Array_Access is access all UpdateMyFontProperties_Access_Array;

   type UpdateMyFontProperties is new Java_Object with record
      actionStringArray : Unbounded_String_Array_Access;
      keymappingBeginWidthArray : Integer_Array_Access;
      actionStringDeltaXArray : Integer_Array_Access;
      inputDeltaXArray : Integer_Array_Access_Array_Access;
      sepArray : Unbounded_String_Array_Access_Array_Access;
      sepWidthArray : Integer_Array_Access_Array_Access;
      charHeight : Integer;
   end record;

   procedure Initialize (This : in out UpdateMyFontProperties'Class);
   function Create return UpdateMyFontProperties_Access;

end org.allbinary.game.paint.help.UpdateMyFontProperties_Package;


