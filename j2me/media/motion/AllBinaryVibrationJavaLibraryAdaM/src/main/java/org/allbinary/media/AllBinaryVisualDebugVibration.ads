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
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.media.AllBinaryVibrationME_Package; use org.allbinary.media.AllBinaryVibrationME_Package;

package org.allbinary.media.AllBinaryVisualDebugVibration_Package is

   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type AllBinaryVisualDebugVibration is tagged;
   type AllBinaryVisualDebugVibration_Access is access all AllBinaryVisualDebugVibration'Class;
   type AllBinaryVisualDebugVibration_Access_Array is array (Natural range <>) of AllBinaryVisualDebugVibration_Access;
   type AllBinaryVisualDebugVibration_Access_Array_Access is access all AllBinaryVisualDebugVibration_Access_Array;

   type AllBinaryVisualDebugVibration is new AllBinaryVibrationME and UpdateMyFontInterface with record
      displayInfoSingleton : DisplayInfoSingleton_Access;
      timeDelayHelper : TimeDelayHelper_Access;
      VIBRATING : Unbounded_String;
      myFontProcessor : MyFontProcessor_Access;
      anchor : Integer;
      width : Integer;
   end record;

   procedure Initialize (This : in out AllBinaryVisualDebugVibration'Class);
   function Create return AllBinaryVisualDebugVibration_Access;
   procedure updateMeasurement (This : in out AllBinaryVisualDebugVibration; graphics_Param : access Graphics'Class);
   procedure vibrate (This : in out AllBinaryVisualDebugVibration; duration : Integer; type_Id : Integer; volume : Integer);
   procedure paint (This : in out AllBinaryVisualDebugVibration; graphics_Param : access Graphics'Class);

end org.allbinary.media.AllBinaryVisualDebugVibration_Package;


