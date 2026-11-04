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

limited with org.allbinary.game.paint.OwnershipPaintable_Package;
package org.allbinary.game.paint.OwnershipPaintable_Package_References is
   type OwnershipPaintable_Access is access all org.allbinary.game.paint.OwnershipPaintable_Package.OwnershipPaintable'Class;
   type OwnershipPaintable_Access_Array is array (Natural range <>) of OwnershipPaintable_Access;
   type OwnershipPaintable_Access_Array_Access is access all OwnershipPaintable_Access_Array;
   type OwnershipPaintable_Access_Array_Access_Array is array (Natural range <>) of OwnershipPaintable_Access_Array_Access;
   type OwnershipPaintable_Access_Array_Access_Array_Access is access all OwnershipPaintable_Access_Array_Access_Array;
end org.allbinary.game.paint.OwnershipPaintable_Package_References;

with org.allbinary.game.paint.OwnershipPaintable_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.paint.OwnershipPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OwnershipPaintable_Access is org.allbinary.game.paint.OwnershipPaintable_Package_References.OwnershipPaintable_Access;
   function "=" (Left, Right : OwnershipPaintable_Access) return Boolean renames org.allbinary.game.paint.OwnershipPaintable_Package_References."=";
   subtype OwnershipPaintable_Access_Array is org.allbinary.game.paint.OwnershipPaintable_Package_References.OwnershipPaintable_Access_Array;
   function "=" (Left, Right : OwnershipPaintable_Access_Array) return Boolean renames org.allbinary.game.paint.OwnershipPaintable_Package_References."=";
   subtype OwnershipPaintable_Access_Array_Access is org.allbinary.game.paint.OwnershipPaintable_Package_References.OwnershipPaintable_Access_Array_Access;
   function "=" (Left, Right : OwnershipPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.paint.OwnershipPaintable_Package_References."=";
   subtype OwnershipPaintable_Access_Array_Access_Array is org.allbinary.game.paint.OwnershipPaintable_Package_References.OwnershipPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : OwnershipPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.paint.OwnershipPaintable_Package_References."=";
   subtype OwnershipPaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.OwnershipPaintable_Package_References.OwnershipPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OwnershipPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.paint.OwnershipPaintable_Package_References."=";

   type OwnershipPaintable is new Paintable and UpdateMyFontInterface with record
      logUtil : LogUtil_Access;
      displayInfo : DisplayInfoSingleton_Access;
      myFontProcessor : MyFontProcessor_Access;
      COPYRIGHT : Unbounded_String;
      basicColor : BasicColor_Access;
      color : Integer;
      anchor : Integer;
      COPYRIGHT_Y : Integer;
      beginWidth : Integer;
   end record;

   procedure Initialize (This : in out OwnershipPaintable'Class);
   function Create return OwnershipPaintable_Access;
   function getInstance return OwnershipPaintable_Access;
   procedure updateMeasurement (This : in out OwnershipPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure setBasicColorP (This : in out OwnershipPaintable; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBasicColorP (This : in out OwnershipPaintable) return BasicColor_Access;
   procedure paint (This : in out OwnershipPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.paint.OwnershipPaintable_Package;


