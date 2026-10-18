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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.ColorCompositeInterface_Package; use org.allbinary.graphics.color.ColorCompositeInterface_Package;
with org.allbinary.layer.PositionInterface_Package; use org.allbinary.layer.PositionInterface_Package;

package org.allbinary.animation.vector.LineAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ColorCompositeInterface_Package renames Standard.org.allbinary.graphics.color.ColorCompositeInterface_Package;
   package PositionInterface_Package renames Standard.org.allbinary.layer.PositionInterface_Package;

   type LineAnimation is tagged;
   type LineAnimation_Access is access all LineAnimation'Class;
   type LineAnimation_Access_Array is array (Natural range <>) of LineAnimation_Access;
   type LineAnimation_Access_Array_Access is access all LineAnimation_Access_Array;
   type LineAnimation_Access_Array_Access_Array is array (Natural range <>) of LineAnimation_Access_Array_Access;
   type LineAnimation_Access_Array_Access_Array_Access is access all LineAnimation_Access_Array_Access_Array;

   type LineAnimation is new Animation and ColorCompositeInterface and PositionInterface with record
      newLine : Integer_Array_Access_Array_Access;
      tempLine : Integer_Array_Access_Array_Access;
      line : Integer_Array_Access_Array_Access;
   end record;

   procedure Initialize (This : in out LineAnimation'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (basicColor_Param : access BasicColor_Package.BasicColor'Class) return LineAnimation_Access;
   procedure init (This : in out LineAnimation; x : Integer; y : Integer);
   procedure setPosition (This : in out LineAnimation; x : Integer; y : Integer; z : Integer);
   procedure paintXY (This : in out LineAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure nextFrame (This : in out LineAnimation);

end org.allbinary.animation.vector.LineAnimation_Package;


