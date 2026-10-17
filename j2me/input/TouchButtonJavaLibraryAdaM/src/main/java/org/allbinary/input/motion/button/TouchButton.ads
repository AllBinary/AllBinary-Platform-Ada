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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.input.motion.button.TouchButton_Package is

   package Animation_Package renames org.allbinary.animation.Animation_Package;
   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package CellPosition_Package renames org.allbinary.graphics.CellPosition_Package;
   package GPoint_Package renames org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package RectangleFactory_Package renames org.allbinary.graphics.RectangleFactory_Package;
   package Paintable_Package renames org.allbinary.graphics.paint.Paintable_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type TouchButton is tagged;
   type TouchButton_Access is access all TouchButton'Class;
   type TouchButton_Access_Array is array (Natural range <>) of TouchButton_Access;
   type TouchButton_Access_Array_Access is access all TouchButton_Access_Array;

   type TouchButton is new Paintable with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      touchButtonInput : TouchButtonInput_Access;
      animationInterface : Animation_Access;
      hintAnimationInterface : Animation_Access;
      rawRectangle : Rectangle_Access;
      xBorder : Integer;
      yBorder : Integer;
      rectangleP : Rectangle_Access;
      cellPositionP : CellPosition_Access;
      animationX : Integer;
      animationY : Integer;
      hintAnimationY : Integer;
   end record;

   procedure Initialize (This : in out TouchButton'Class; touchButtonInput : TouchButtonInput_Access; animationInterface : Animation_Access; hintAnimationInterface : Animation_Access; rawRectangle : Rectangle_Access; cellPosition : CellPosition_Access; xBorder : Integer; yBorder : Integer);
   function Create (touchButtonInput : TouchButtonInput_Access; animationInterface : Animation_Access; hintAnimationInterface : Animation_Access; rawRectangle : Rectangle_Access; cellPosition : CellPosition_Access; xBorder : Integer; yBorder : Integer) return TouchButton_Access;
   function createButton (touchButtonInput : TouchButtonInput_Access; touchButtonResource : TouchButtonResource_Access; rawRectangle : Rectangle_Access; cellPosition : CellPosition_Access; xBorder : Integer; yBorder : Integer) return TouchButton_Access;
   procedure createButton (touchButtonInput : TouchButtonInput_Access; touchButtonResource : TouchButtonResource_Access; rawRectangle : Rectangle_Access; cellPosition : CellPosition_Access; xBorder : Integer; yBorder : Integer);
   procedure paintHint (This : in out TouchButton; graphics : Graphics_Access);
   procedure paint (This : in out TouchButton; graphics : Graphics_Access);
   procedure updateRectangle (This : in out TouchButton);
   function getCellPosition (This : in out TouchButton) return CellPosition_Access;
   procedure getCellPosition (This : in out TouchButton);
   function getRectangle (This : in out TouchButton) return Rectangle_Access;
   procedure getRectangle (This : in out TouchButton);
   function getTouchButtonInput (This : in out TouchButton) return TouchButtonInput_Access;
   procedure getTouchButtonInput (This : in out TouchButton);
   function toString (This : in out TouchButton) return Unbounded_String;
   procedure toString (This : in out TouchButton);

end org.allbinary.input.motion.button.TouchButton_Package;


