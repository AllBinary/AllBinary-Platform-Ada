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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package; use org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.input.motion.button.TouchButtonFactory_Package; use org.allbinary.input.motion.button.TouchButtonFactory_Package;
with org.allbinary.input.motion.button.TouchButton_Package; use org.allbinary.input.motion.button.TouchButton_Package;

package org.allbinary.input.motion.button.TouchButtonsPaintable_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorSetUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorSetUtil_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type TouchButtonsPaintable is tagged;
   type TouchButtonsPaintable_Access is access all TouchButtonsPaintable'Class;
   type TouchButtonsPaintable_Access_Array is array (Natural range <>) of TouchButtonsPaintable_Access;
   type TouchButtonsPaintable_Access_Array_Access is access all TouchButtonsPaintable_Access_Array;

   type TouchButtonsPaintable is new Paintable with record
      foregroundBasicColor : BasicColor_Access;
      foregroundColor : Integer;
      basicSetColorUtil : BasicColorSetUtil_Access;
      touchButtonFactory : TouchButtonFactory_Access;
   end record;

   procedure Initialize (This : in out TouchButtonsPaintable'Class; basicColor : BasicColor_Access);
   function Create (basicColor : BasicColor_Access) return TouchButtonsPaintable_Access;
   procedure paint (This : in out TouchButtonsPaintable; graphics : Graphics_Access);

end org.allbinary.input.motion.button.TouchButtonsPaintable_Package;


