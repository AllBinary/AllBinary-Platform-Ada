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
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;

package org.allbinary.graphics.paint.Paintable_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type Paintable is tagged;
   type Paintable_Access is access all Paintable'Class;
   type Paintable_Access_Array is array (Natural range <>) of Paintable_Access;
   type Paintable_Access_Array_Access is access all Paintable_Access_Array;

   type Paintable is new PaintableInterface with null record;

   procedure Initialize (This : in out Paintable'Class);
   function Create return Paintable_Access;
   procedure setBasicColorP (This : in out Paintable; basicColor : BasicColor_Access);
   procedure paint (This : in out Paintable; graphics : Graphics_Access);
   procedure paintThreed (This : in out Paintable; graphics : Graphics_Access);

end org.allbinary.graphics.paint.Paintable_Package;


