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

limited with org.allbinary.animation.vector.CircleAnimation_Package;
package org.allbinary.animation.vector.CircleAnimation_Package_References is
   type CircleAnimation_Access is access all org.allbinary.animation.vector.CircleAnimation_Package.CircleAnimation'Class;
   type CircleAnimation_Access_Array is array (Natural range <>) of CircleAnimation_Access;
   type CircleAnimation_Access_Array_Access is access all CircleAnimation_Access_Array;
   type CircleAnimation_Access_Array_Access_Array is array (Natural range <>) of CircleAnimation_Access_Array_Access;
   type CircleAnimation_Access_Array_Access_Array_Access is access all CircleAnimation_Access_Array_Access_Array;
end org.allbinary.animation.vector.CircleAnimation_Package_References;

with org.allbinary.animation.vector.CircleAnimation_Package_References;
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

package org.allbinary.animation.vector.CircleAnimation_Package is

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


   subtype CircleAnimation_Access is org.allbinary.animation.vector.CircleAnimation_Package_References.CircleAnimation_Access;
   function "=" (Left, Right : CircleAnimation_Access) return Boolean renames org.allbinary.animation.vector.CircleAnimation_Package_References."=";
   subtype CircleAnimation_Access_Array is org.allbinary.animation.vector.CircleAnimation_Package_References.CircleAnimation_Access_Array;
   function "=" (Left, Right : CircleAnimation_Access_Array) return Boolean renames org.allbinary.animation.vector.CircleAnimation_Package_References."=";
   subtype CircleAnimation_Access_Array_Access is org.allbinary.animation.vector.CircleAnimation_Package_References.CircleAnimation_Access_Array_Access;
   function "=" (Left, Right : CircleAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.CircleAnimation_Package_References."=";
   subtype CircleAnimation_Access_Array_Access_Array is org.allbinary.animation.vector.CircleAnimation_Package_References.CircleAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : CircleAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.vector.CircleAnimation_Package_References."=";
   subtype CircleAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.vector.CircleAnimation_Package_References.CircleAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CircleAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.CircleAnimation_Package_References."=";

   type CircleAnimation is new Animation_Package.Animation and ColorCompositeInterface with record
      TOTAL_ANGLE : Integer;
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out CircleAnimation'Class; width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return CircleAnimation_Access;
   procedure nextFrame (This : in out CircleAnimation);
   procedure paintXY (This : in out CircleAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.vector.CircleAnimation_Package;


