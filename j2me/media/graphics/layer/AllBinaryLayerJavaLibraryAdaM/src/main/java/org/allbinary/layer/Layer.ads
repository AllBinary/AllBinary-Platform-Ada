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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.layer.Layer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type Layer is tagged;
   type Layer_Access is access all Layer'Class;
   type Layer_Access_Array is array (Natural range <>) of Layer_Access;
   type Layer_Access_Array_Access is access all Layer_Access_Array;

   type Layer is new Java_Object with record
      logUtil : LogUtil_Access;
      x : Integer;
      y : Integer;
      z : Integer;
      width : Integer;
      height : Integer;
      visible : Boolean;
   end record;
   ID : Integer;

   procedure Initialize (This : in out Layer'Class; width : Integer; height : Integer);
   function Create (width : Integer; height : Integer) return Layer_Access;
   procedure setPosition (This : in out Layer; x : Integer; y : Integer; z : Integer);
   procedure moveDXY (This : in out Layer; dx : Integer; dy : Integer);
   procedure moveDXYZ (This : in out Layer; dx : Integer; dy : Integer; dz : Integer);
   function getXP (This : in out Layer) return Integer;
   function getYP (This : in out Layer) return Integer;
   function getZP (This : in out Layer) return Integer;
   function getWidth (This : in out Layer) return Integer;
   function getHeight (This : in out Layer) return Integer;
   function getDepth (This : in out Layer) return Long_Long_Integer;
   procedure setVisible (This : in out Layer; visible : Boolean);
   function isVisible (This : in out Layer) return Boolean;
   procedure paint (This : in out Layer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure setLayerWidth (This : in out Layer; width : Integer);
   procedure setLayerHeight (This : in out Layer; height : Integer);
   procedure toStringAppend (This : in out Layer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class);

end org.allbinary.layer.Layer_Package;


