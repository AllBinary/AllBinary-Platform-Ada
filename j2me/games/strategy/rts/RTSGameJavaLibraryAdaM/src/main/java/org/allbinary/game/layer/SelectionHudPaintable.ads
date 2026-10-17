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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.input.motion.button.CommonButtons_Package; use org.allbinary.input.motion.button.CommonButtons_Package;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package; use org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package; use org.allbinary.logic.math.PrimitiveLongUtil_Package;

package org.allbinary.game.layer.SelectionHudPaintable_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package InitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.InitUpdatePaintable_Package;
   package CommonButtons_Package renames Standard.org.allbinary.input.motion.button.CommonButtons_Package;
   package TouchButtonLocationHelper_Package renames Standard.org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;
   package PrimitiveLongUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveLongUtil_Package;

   type SelectionHudPaintable is tagged;
   type SelectionHudPaintable_Access is access all SelectionHudPaintable'Class;
   type SelectionHudPaintable_Access_Array is array (Natural range <>) of SelectionHudPaintable_Access;
   type SelectionHudPaintable_Access_Array_Access is access all SelectionHudPaintable_Access_Array;

   type SelectionHudPaintable is new InitUpdatePaintable and UpdateMyFontInterface with record
      y : Integer;
      primitiveLongUtil : PrimitiveLongUtil_Access;
      updateMyFontProcessor : MyFontProcessor_Access;
      myFontProcessor : MyFontProcessor_Access;
      x : Integer;
      textX : Integer;
      imageX : Integer;
      basicColor : BasicColor_Access;
      color : Integer;
      width : Integer;
      height : Integer;
      name : Unbounded_String;
      animationInterface : Animation_Access;
      backgroundColor : Integer;
   end record;

   procedure Initialize (This : in out SelectionHudPaintable'Class);
   function Create return SelectionHudPaintable_Access;
   procedure updateMeasurement (This : in out SelectionHudPaintable; graphics_Param : access Graphics'Class);
   procedure update (This : in out SelectionHudPaintable);
   procedure updateSelectionInfo (This : in out SelectionHudPaintable);
   procedure updateInfo (This : in out SelectionHudPaintable);
   function getPrimitiveLongUtil (This : in out SelectionHudPaintable) return PrimitiveLongUtil_Access;
   procedure setAnimationInterface (This : in out SelectionHudPaintable; animationInterface_Param : access Animation'Class);
   function getAnimationInterface (This : in out SelectionHudPaintable) return Animation_Access;
   procedure setName (This : in out SelectionHudPaintable; name : Unbounded_String);
   function getName (This : in out SelectionHudPaintable) return Unbounded_String;
   procedure setBasicColorP (This : in out SelectionHudPaintable; basicColor_Param : access BasicColor'Class);
   function getBasicColorP (This : in out SelectionHudPaintable) return BasicColor_Access;
   procedure setColor (This : in out SelectionHudPaintable; color : Integer);
   function getColor (This : in out SelectionHudPaintable) return Integer;
   function getWidth (This : in out SelectionHudPaintable) return Integer;
   procedure setHeight (This : in out SelectionHudPaintable; height : Integer);
   function getHeight (This : in out SelectionHudPaintable) return Integer;
   function getX (This : in out SelectionHudPaintable) return Integer;
   procedure paint (This : in out SelectionHudPaintable; graphics_Param : access Graphics'Class);

end org.allbinary.game.layer.SelectionHudPaintable_Package;


