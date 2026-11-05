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

limited with org.allbinary.animation.vector.RectangleAdjustedAnimation_Package;
package org.allbinary.animation.vector.RectangleAdjustedAnimation_Package_References is
   type RectangleAdjustedAnimation_Access is access all org.allbinary.animation.vector.RectangleAdjustedAnimation_Package.RectangleAdjustedAnimation'Class;
   type RectangleAdjustedAnimation_Access_Array is array (Natural range <>) of RectangleAdjustedAnimation_Access;
   type RectangleAdjustedAnimation_Access_Array_Access is access all RectangleAdjustedAnimation_Access_Array;
   type RectangleAdjustedAnimation_Access_Array_Access_Array is array (Natural range <>) of RectangleAdjustedAnimation_Access_Array_Access;
   type RectangleAdjustedAnimation_Access_Array_Access_Array_Access is access all RectangleAdjustedAnimation_Access_Array_Access_Array;
end org.allbinary.animation.vector.RectangleAdjustedAnimation_Package_References;

with org.allbinary.animation.vector.RectangleAdjustedAnimation_Package_References;
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

package org.allbinary.animation.vector.RectangleAdjustedAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ColorCompositeInterface_Package renames Standard.org.allbinary.graphics.color.ColorCompositeInterface_Package;
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


   subtype RectangleAdjustedAnimation_Access is org.allbinary.animation.vector.RectangleAdjustedAnimation_Package_References.RectangleAdjustedAnimation_Access;
   function "=" (Left, Right : RectangleAdjustedAnimation_Access) return Boolean renames org.allbinary.animation.vector.RectangleAdjustedAnimation_Package_References."=";
   subtype RectangleAdjustedAnimation_Access_Array is org.allbinary.animation.vector.RectangleAdjustedAnimation_Package_References.RectangleAdjustedAnimation_Access_Array;
   function "=" (Left, Right : RectangleAdjustedAnimation_Access_Array) return Boolean renames org.allbinary.animation.vector.RectangleAdjustedAnimation_Package_References."=";
   subtype RectangleAdjustedAnimation_Access_Array_Access is org.allbinary.animation.vector.RectangleAdjustedAnimation_Package_References.RectangleAdjustedAnimation_Access_Array_Access;
   function "=" (Left, Right : RectangleAdjustedAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.RectangleAdjustedAnimation_Package_References."=";
   subtype RectangleAdjustedAnimation_Access_Array_Access_Array is org.allbinary.animation.vector.RectangleAdjustedAnimation_Package_References.RectangleAdjustedAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : RectangleAdjustedAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.vector.RectangleAdjustedAnimation_Package_References."=";
   subtype RectangleAdjustedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.vector.RectangleAdjustedAnimation_Package_References.RectangleAdjustedAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RectangleAdjustedAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.RectangleAdjustedAnimation_Package_References."=";

   type RectangleAdjustedAnimation is new Animation_Package.Animation and ColorCompositeInterface with record
      width : Integer;
      height : Integer;
      offsetX : Integer;
      offsetY : Integer;
   end record;

   procedure Initialize (This : in out RectangleAdjustedAnimation'Class; width : Integer; height : Integer; offsetX : Integer; offsetY : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (width : Integer; height : Integer; offsetX : Integer; offsetY : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return RectangleAdjustedAnimation_Access;
   procedure nextFrame (This : in out RectangleAdjustedAnimation);
   procedure paintXY (This : in out RectangleAdjustedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure setWidth (This : in out RectangleAdjustedAnimation; width : Integer);
   procedure setHeight (This : in out RectangleAdjustedAnimation; height : Integer);
   procedure setOffsetX (This : in out RectangleAdjustedAnimation; offsetX : Integer);
   procedure setOffsetY (This : in out RectangleAdjustedAnimation; offsetY : Integer);
   function getBasicColorP (This : in out RectangleAdjustedAnimation) return BasicColor_Access;
   procedure setBasicColorP (This : in out RectangleAdjustedAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.animation.vector.RectangleAdjustedAnimation_Package;


