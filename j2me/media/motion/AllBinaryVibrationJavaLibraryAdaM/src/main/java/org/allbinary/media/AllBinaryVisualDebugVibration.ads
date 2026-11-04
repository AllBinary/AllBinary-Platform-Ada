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

limited with org.allbinary.media.AllBinaryVisualDebugVibration_Package;
package org.allbinary.media.AllBinaryVisualDebugVibration_Package_References is
   type AllBinaryVisualDebugVibration_Access is access all org.allbinary.media.AllBinaryVisualDebugVibration_Package.AllBinaryVisualDebugVibration'Class;
   type AllBinaryVisualDebugVibration_Access_Array is array (Natural range <>) of AllBinaryVisualDebugVibration_Access;
   type AllBinaryVisualDebugVibration_Access_Array_Access is access all AllBinaryVisualDebugVibration_Access_Array;
   type AllBinaryVisualDebugVibration_Access_Array_Access_Array is array (Natural range <>) of AllBinaryVisualDebugVibration_Access_Array_Access;
   type AllBinaryVisualDebugVibration_Access_Array_Access_Array_Access is access all AllBinaryVisualDebugVibration_Access_Array_Access_Array;
end org.allbinary.media.AllBinaryVisualDebugVibration_Package_References;

with org.allbinary.media.AllBinaryVisualDebugVibration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.media.AllBinaryVibrationME_Package; use org.allbinary.media.AllBinaryVibrationME_Package;

package org.allbinary.media.AllBinaryVisualDebugVibration_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   use type DisplayInfoSingleton_Access;
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   use type DisplayInfoSingleton_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access;
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   use type DisplayInfoSingleton_Access_Array_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access_Array_Access;
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   use type MyFontProcessor_Access;
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   use type MyFontProcessor_Access_Array;
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access;
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   use type MyFontProcessor_Access_Array_Access_Array;
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access_Array_Access;
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryVisualDebugVibration_Access is org.allbinary.media.AllBinaryVisualDebugVibration_Package_References.AllBinaryVisualDebugVibration_Access;
   function "=" (Left, Right : AllBinaryVisualDebugVibration_Access) return Boolean renames org.allbinary.media.AllBinaryVisualDebugVibration_Package_References."=";
   subtype AllBinaryVisualDebugVibration_Access_Array is org.allbinary.media.AllBinaryVisualDebugVibration_Package_References.AllBinaryVisualDebugVibration_Access_Array;
   function "=" (Left, Right : AllBinaryVisualDebugVibration_Access_Array) return Boolean renames org.allbinary.media.AllBinaryVisualDebugVibration_Package_References."=";
   subtype AllBinaryVisualDebugVibration_Access_Array_Access is org.allbinary.media.AllBinaryVisualDebugVibration_Package_References.AllBinaryVisualDebugVibration_Access_Array_Access;
   function "=" (Left, Right : AllBinaryVisualDebugVibration_Access_Array_Access) return Boolean renames org.allbinary.media.AllBinaryVisualDebugVibration_Package_References."=";
   subtype AllBinaryVisualDebugVibration_Access_Array_Access_Array is org.allbinary.media.AllBinaryVisualDebugVibration_Package_References.AllBinaryVisualDebugVibration_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryVisualDebugVibration_Access_Array_Access_Array) return Boolean renames org.allbinary.media.AllBinaryVisualDebugVibration_Package_References."=";
   subtype AllBinaryVisualDebugVibration_Access_Array_Access_Array_Access is org.allbinary.media.AllBinaryVisualDebugVibration_Package_References.AllBinaryVisualDebugVibration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryVisualDebugVibration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.AllBinaryVisualDebugVibration_Package_References."=";

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
   procedure updateMeasurement (This : in out AllBinaryVisualDebugVibration; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure vibrate (This : in out AllBinaryVisualDebugVibration; duration : Integer; type_Id : Integer; volume : Integer);
   procedure paint (This : in out AllBinaryVisualDebugVibration; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.media.AllBinaryVisualDebugVibration_Package;


