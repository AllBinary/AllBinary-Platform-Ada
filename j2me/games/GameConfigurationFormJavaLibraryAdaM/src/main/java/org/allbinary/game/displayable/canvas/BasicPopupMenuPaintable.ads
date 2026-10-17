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
with org.allbinary.AndroidUtil_Package; use org.allbinary.AndroidUtil_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.animation.vector.RectangleFilledAnimation_Package; use org.allbinary.animation.vector.RectangleFilledAnimation_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.layer.SWTUtil_Package; use org.allbinary.game.layer.SWTUtil_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package; use org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.graphics.draw.DrawVerticalStringUtil_Package; use org.allbinary.graphics.draw.DrawVerticalStringUtil_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package; use org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.threed.SWTJOGLProcessor_Package; use org.allbinary.graphics.threed.SWTJOGLProcessor_Package;

package org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package is

   package AndroidUtil_Package renames Standard.org.allbinary.AndroidUtil_Package;
   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package RectangleFilledAnimation_Package renames Standard.org.allbinary.animation.vector.RectangleFilledAnimation_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package SWTUtil_Package renames Standard.org.allbinary.game.layer.SWTUtil_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package BasicColorSetUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorSetUtil_Package;
   package DrawVerticalStringUtil_Package renames Standard.org.allbinary.graphics.draw.DrawVerticalStringUtil_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package OpenGLFeatureUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package SWTJOGLProcessor_Package renames Standard.org.allbinary.graphics.threed.SWTJOGLProcessor_Package;

   type BasicPopupMenuPaintable is tagged;
   type BasicPopupMenuPaintable_Access is access all BasicPopupMenuPaintable'Class;
   type BasicPopupMenuPaintable_Access_Array is array (Natural range <>) of BasicPopupMenuPaintable_Access;
   type BasicPopupMenuPaintable_Access_Array_Access is access all BasicPopupMenuPaintable_Access_Array;

   type BasicPopupMenuPaintable is new Paintable and UpdateMyFontInterface with record
      basicSetColorUtil : BasicColorSetUtil_Access;
      drawStringUtil : DrawVerticalStringUtil_Access;
      label : Unbounded_String;
      foregroundBasicColor : BasicColor_Access;
      myFontProcessor : MyFontProcessor_Access;
      rectangle : Rectangle_Access;
      BORDER : Integer;
      heightOffset : Integer;
      offset : Integer;
      animationInterface : Animation_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out BasicPopupMenuPaintable'Class; rectangle_Param : access Rectangle'Class; backgroundBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class);
   function Create (rectangle_Param : access Rectangle'Class; backgroundBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) return BasicPopupMenuPaintable_Access;
   procedure updateMeasurement (This : in out BasicPopupMenuPaintable; graphics_Param : access Graphics'Class);
   procedure init (This : in out BasicPopupMenuPaintable; rectangle_Param : access Rectangle'Class);
   procedure paint (This : in out BasicPopupMenuPaintable; graphics_Param : access Graphics'Class);

end org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package;


