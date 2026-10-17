-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;

package org.allbinary.game.layer.MultiSelectPaintable_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type MultiSelectPaintable is tagged;
   type MultiSelectPaintable_Access is access all MultiSelectPaintable'Class;
   type MultiSelectPaintable_Access_Array is array (Natural range <>) of MultiSelectPaintable_Access;
   type MultiSelectPaintable_Access_Array_Access is access all MultiSelectPaintable_Access_Array;

   type MultiSelectPaintable is new SelectionHudPaintable with record
      rootNameList : BasicArrayList_Access;
      totalCharArray : Character_Array_Access;
      rootNamesString : Unbounded_String;
      TOTAL : Unbounded_String;
      backgroundColor : Integer;
      totalWidth : Integer;
      textLine2Y : Integer;
   end record;

   procedure Initialize (This : in out MultiSelectPaintable'Class);
   function Create return MultiSelectPaintable_Access;
   procedure updateMeasurement (This : in out MultiSelectPaintable; graphics : Graphics_Access);
   procedure update (This : in out MultiSelectPaintable; list : BasicArrayList_Access);
   procedure clear (This : in out MultiSelectPaintable);
   procedure paint (This : in out MultiSelectPaintable; graphics : Graphics_Access);

end org.allbinary.game.layer.MultiSelectPaintable_Package;


