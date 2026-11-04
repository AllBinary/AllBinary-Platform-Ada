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

limited with org.allbinary.input.motion.button.TouchButtonsPaintable_Package;
package org.allbinary.input.motion.button.TouchButtonsPaintable_Package_References is
   type TouchButtonsPaintable_Access is access all org.allbinary.input.motion.button.TouchButtonsPaintable_Package.TouchButtonsPaintable'Class;
   type TouchButtonsPaintable_Access_Array is array (Natural range <>) of TouchButtonsPaintable_Access;
   type TouchButtonsPaintable_Access_Array_Access is access all TouchButtonsPaintable_Access_Array;
   type TouchButtonsPaintable_Access_Array_Access_Array is array (Natural range <>) of TouchButtonsPaintable_Access_Array_Access;
   type TouchButtonsPaintable_Access_Array_Access_Array_Access is access all TouchButtonsPaintable_Access_Array_Access_Array;
end org.allbinary.input.motion.button.TouchButtonsPaintable_Package_References;

with org.allbinary.input.motion.button.TouchButtonsPaintable_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package_References;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
limited with org.allbinary.input.motion.button.TouchButtonFactory_Package;
with org.allbinary.input.motion.button.TouchButtonFactory_Package_References;

package org.allbinary.input.motion.button.TouchButtonsPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorSetUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorSetUtil_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
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
   subtype BasicColorSetUtil_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access;
   use type BasicColorSetUtil_Access;
   subtype BasicColorSetUtil_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array;
   use type BasicColorSetUtil_Access_Array;
   subtype BasicColorSetUtil_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access;
   use type BasicColorSetUtil_Access_Array_Access;
   subtype BasicColorSetUtil_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array;
   use type BasicColorSetUtil_Access_Array_Access_Array;
   subtype BasicColorSetUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array_Access;
   use type BasicColorSetUtil_Access_Array_Access_Array_Access;
   subtype TouchButtonFactory_Access is org.allbinary.input.motion.button.TouchButtonFactory_Package_References.TouchButtonFactory_Access;
   use type TouchButtonFactory_Access;
   subtype TouchButtonFactory_Access_Array is org.allbinary.input.motion.button.TouchButtonFactory_Package_References.TouchButtonFactory_Access_Array;
   use type TouchButtonFactory_Access_Array;
   subtype TouchButtonFactory_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonFactory_Package_References.TouchButtonFactory_Access_Array_Access;
   use type TouchButtonFactory_Access_Array_Access;
   subtype TouchButtonFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonFactory_Package_References.TouchButtonFactory_Access_Array_Access_Array;
   use type TouchButtonFactory_Access_Array_Access_Array;
   subtype TouchButtonFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonFactory_Package_References.TouchButtonFactory_Access_Array_Access_Array_Access;
   use type TouchButtonFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonsPaintable_Access is org.allbinary.input.motion.button.TouchButtonsPaintable_Package_References.TouchButtonsPaintable_Access;
   function "=" (Left, Right : TouchButtonsPaintable_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintable_Package_References."=";
   subtype TouchButtonsPaintable_Access_Array is org.allbinary.input.motion.button.TouchButtonsPaintable_Package_References.TouchButtonsPaintable_Access_Array;
   function "=" (Left, Right : TouchButtonsPaintable_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintable_Package_References."=";
   subtype TouchButtonsPaintable_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsPaintable_Package_References.TouchButtonsPaintable_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsPaintable_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintable_Package_References."=";
   subtype TouchButtonsPaintable_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonsPaintable_Package_References.TouchButtonsPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonsPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintable_Package_References."=";
   subtype TouchButtonsPaintable_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsPaintable_Package_References.TouchButtonsPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintable_Package_References."=";

   type TouchButtonsPaintable is new Paintable with record
      foregroundBasicColor : BasicColor_Access;
      foregroundColor : Integer;
      basicSetColorUtil : BasicColorSetUtil_Access;
      touchButtonFactory : TouchButtonFactory_Access;
   end record;

   procedure Initialize (This : in out TouchButtonsPaintable'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (basicColor_Param : access BasicColor_Package.BasicColor'Class) return TouchButtonsPaintable_Access;
   procedure paint (This : in out TouchButtonsPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.input.motion.button.TouchButtonsPaintable_Package;


