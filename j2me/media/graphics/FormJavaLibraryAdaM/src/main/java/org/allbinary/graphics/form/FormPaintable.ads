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
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;

package org.allbinary.graphics.form.FormPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;

   type FormPaintable is tagged;
   type FormPaintable_Access is access all FormPaintable'Class;
   type FormPaintable_Access_Array is array (Natural range <>) of FormPaintable_Access;
   type FormPaintable_Access_Array_Access is access all FormPaintable_Access_Array;

   type FormPaintable is new Paintable with record
      form : PaintableForm_Access;
   end record;

   procedure Initialize (This : in out FormPaintable'Class; form_Param : access PaintableForm_Package.PaintableForm'Class);
   function Create (form_Param : access PaintableForm_Package.PaintableForm'Class) return FormPaintable_Access;
   procedure paint (This : in out FormPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   function getForm (This : in out FormPaintable) return PaintableForm_Access;

end org.allbinary.graphics.form.FormPaintable_Package;


