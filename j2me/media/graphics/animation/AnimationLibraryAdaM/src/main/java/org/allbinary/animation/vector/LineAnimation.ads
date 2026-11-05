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

limited with org.allbinary.animation.vector.LineAnimation_Package;
package org.allbinary.animation.vector.LineAnimation_Package_References is
   type LineAnimation_Access is access all org.allbinary.animation.vector.LineAnimation_Package.LineAnimation'Class;
   type LineAnimation_Access_Array is array (Natural range <>) of LineAnimation_Access;
   type LineAnimation_Access_Array_Access is access all LineAnimation_Access_Array;
   type LineAnimation_Access_Array_Access_Array is array (Natural range <>) of LineAnimation_Access_Array_Access;
   type LineAnimation_Access_Array_Access_Array_Access is access all LineAnimation_Access_Array_Access_Array;
end org.allbinary.animation.vector.LineAnimation_Package_References;

with org.allbinary.animation.vector.LineAnimation_Package_References;
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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.ColorCompositeInterface_Package; use org.allbinary.graphics.color.ColorCompositeInterface_Package;
with org.allbinary.layer.PositionInterface_Package; use org.allbinary.layer.PositionInterface_Package;

package org.allbinary.animation.vector.LineAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ColorCompositeInterface_Package renames Standard.org.allbinary.graphics.color.ColorCompositeInterface_Package;
   package PositionInterface_Package renames Standard.org.allbinary.layer.PositionInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype LineAnimation_Access is org.allbinary.animation.vector.LineAnimation_Package_References.LineAnimation_Access;
   function "=" (Left, Right : LineAnimation_Access) return Boolean renames org.allbinary.animation.vector.LineAnimation_Package_References."=";
   subtype LineAnimation_Access_Array is org.allbinary.animation.vector.LineAnimation_Package_References.LineAnimation_Access_Array;
   function "=" (Left, Right : LineAnimation_Access_Array) return Boolean renames org.allbinary.animation.vector.LineAnimation_Package_References."=";
   subtype LineAnimation_Access_Array_Access is org.allbinary.animation.vector.LineAnimation_Package_References.LineAnimation_Access_Array_Access;
   function "=" (Left, Right : LineAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.LineAnimation_Package_References."=";
   subtype LineAnimation_Access_Array_Access_Array is org.allbinary.animation.vector.LineAnimation_Package_References.LineAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : LineAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.vector.LineAnimation_Package_References."=";
   subtype LineAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.vector.LineAnimation_Package_References.LineAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LineAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.LineAnimation_Package_References."=";

   type LineAnimation is new Animation_Package.Animation and ColorCompositeInterface and PositionInterface with record
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
   function getBasicColorP (This : in out LineAnimation) return BasicColor_Access;
   procedure setBasicColorP (This : in out LineAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.animation.vector.LineAnimation_Package;


