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
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.graphics.form.FormPaintable_Package is

   package Paintable_Package renames org.allbinary.graphics.paint.Paintable_Package;

   type FormPaintable is tagged;
   type FormPaintable_Access is access all FormPaintable'Class;
   type FormPaintable_Access_Array is array (Natural range <>) of FormPaintable_Access;
   type FormPaintable_Access_Array_Access is access all FormPaintable_Access_Array;

   type FormPaintable is new Paintable with record
      form : PaintableForm_Access;
   end record;

   procedure Initialize (This : in out FormPaintable'Class; form : PaintableForm_Access);
   function Create (form : PaintableForm_Access) return FormPaintable_Access;
   procedure paint (This : in out FormPaintable; graphics : Graphics_Access);
   function getForm (This : in out FormPaintable) return PaintableForm_Access;
   procedure getForm (This : in out FormPaintable);

end org.allbinary.graphics.form.FormPaintable_Package;


