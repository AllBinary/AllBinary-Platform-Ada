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
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;

package org.allbinary.graphics.paint.PaintableComposite_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;

   type PaintableComposite is tagged;
   type PaintableComposite_Access is access all PaintableComposite'Class;
   type PaintableComposite_Access_Array is array (Natural range <>) of PaintableComposite_Access;
   type PaintableComposite_Access_Array_Access is access all PaintableComposite_Access_Array;

   type PaintableComposite is new Paintable with record
      paintableArray : PaintableInterface_Access_Array_Access;
   end record;

   procedure Initialize (This : in out PaintableComposite'Class; paintableArray : PaintableInterface_Access_Array_Access);
   function Create (paintableArray : PaintableInterface_Access_Array_Access) return PaintableComposite_Access;
   procedure paint (This : in out PaintableComposite; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out PaintableComposite; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.graphics.paint.PaintableComposite_Package;


