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

limited with org.allbinary.animation.vector.RectangleFilledAnimation_Package;
package org.allbinary.animation.vector.RectangleFilledAnimation_Package_References is
   type RectangleFilledAnimation_Access is access all org.allbinary.animation.vector.RectangleFilledAnimation_Package.RectangleFilledAnimation'Class;
   type RectangleFilledAnimation_Access_Array is array (Natural range <>) of RectangleFilledAnimation_Access;
   type RectangleFilledAnimation_Access_Array_Access is access all RectangleFilledAnimation_Access_Array;
   type RectangleFilledAnimation_Access_Array_Access_Array is array (Natural range <>) of RectangleFilledAnimation_Access_Array_Access;
   type RectangleFilledAnimation_Access_Array_Access_Array_Access is access all RectangleFilledAnimation_Access_Array_Access_Array;
end org.allbinary.animation.vector.RectangleFilledAnimation_Package_References;

with org.allbinary.animation.vector.RectangleFilledAnimation_Package_References;
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

package org.allbinary.animation.vector.RectangleFilledAnimation_Package is

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


   subtype RectangleFilledAnimation_Access is org.allbinary.animation.vector.RectangleFilledAnimation_Package_References.RectangleFilledAnimation_Access;
   function "=" (Left, Right : RectangleFilledAnimation_Access) return Boolean renames org.allbinary.animation.vector.RectangleFilledAnimation_Package_References."=";
   subtype RectangleFilledAnimation_Access_Array is org.allbinary.animation.vector.RectangleFilledAnimation_Package_References.RectangleFilledAnimation_Access_Array;
   function "=" (Left, Right : RectangleFilledAnimation_Access_Array) return Boolean renames org.allbinary.animation.vector.RectangleFilledAnimation_Package_References."=";
   subtype RectangleFilledAnimation_Access_Array_Access is org.allbinary.animation.vector.RectangleFilledAnimation_Package_References.RectangleFilledAnimation_Access_Array_Access;
   function "=" (Left, Right : RectangleFilledAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.RectangleFilledAnimation_Package_References."=";
   subtype RectangleFilledAnimation_Access_Array_Access_Array is org.allbinary.animation.vector.RectangleFilledAnimation_Package_References.RectangleFilledAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : RectangleFilledAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.vector.RectangleFilledAnimation_Package_References."=";
   subtype RectangleFilledAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.vector.RectangleFilledAnimation_Package_References.RectangleFilledAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RectangleFilledAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.RectangleFilledAnimation_Package_References."=";

   type RectangleFilledAnimation is new Animation_Package.Animation and ColorCompositeInterface with record
      widthP : Integer;
      heightP : Integer;
   end record;

   procedure Initialize (This : in out RectangleFilledAnimation'Class; width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return RectangleFilledAnimation_Access;
   procedure nextFrame (This : in out RectangleFilledAnimation);
   procedure paintXY (This : in out RectangleFilledAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure setWidth (This : in out RectangleFilledAnimation; width : Integer);
   procedure setHeight (This : in out RectangleFilledAnimation; height : Integer);
   function getBasicColorP (This : in out RectangleFilledAnimation) return BasicColor_Access;
   procedure setBasicColorP (This : in out RectangleFilledAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.animation.vector.RectangleFilledAnimation_Package;


