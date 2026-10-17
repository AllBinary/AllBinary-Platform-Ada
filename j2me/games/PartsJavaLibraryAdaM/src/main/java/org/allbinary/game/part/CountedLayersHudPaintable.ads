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
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.part.PartInterface_Package; use org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package; use org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;

package org.allbinary.game.part.CountedLayersHudPaintable_Package is

   package PickedUpLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type CountedLayersHudPaintable is tagged;
   type CountedLayersHudPaintable_Access is access all CountedLayersHudPaintable'Class;
   type CountedLayersHudPaintable_Access_Array is array (Natural range <>) of CountedLayersHudPaintable_Access;
   type CountedLayersHudPaintable_Access_Array_Access is access all CountedLayersHudPaintable_Access_Array;

   type CountedLayersHudPaintable is new PaintableInterface and UpdateMyFontInterface with record
      displayInfoSingleton : DisplayInfoSingleton_Access;
      partInterfaceArray : PartInterface_Access_Array_Access;
      countedTotalStringColor : Integer;
      countedPartsBorder : Integer;
      startIndex : Integer;
      dropSize : Integer;
      myFontProcessor : MyFontProcessor_Access;
      height : Integer;
   end record;
   XXStringWidth : Integer;

   procedure Initialize (This : in out CountedLayersHudPaintable'Class; partInterfaceArray : PartInterface_Access_Array_Access; dropSize : Integer; startIndex : Integer; countedTotalStringColor : Integer; countedPartsBorder : Integer);
   function Create (partInterfaceArray : PartInterface_Access_Array_Access; dropSize : Integer; startIndex : Integer; countedTotalStringColor : Integer; countedPartsBorder : Integer) return CountedLayersHudPaintable_Access;
   procedure updateMeasurement (This : in out CountedLayersHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paint (This : in out CountedLayersHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out CountedLayersHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.part.CountedLayersHudPaintable_Package;


