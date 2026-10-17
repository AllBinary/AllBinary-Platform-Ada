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
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type ProgressCanvasFactory is tagged;
   type ProgressCanvasFactory_Access is access all ProgressCanvasFactory'Class;
   type ProgressCanvasFactory_Access_Array is array (Natural range <>) of ProgressCanvasFactory_Access;
   type ProgressCanvasFactory_Access_Array_Access is access all ProgressCanvasFactory_Access_Array;

   type ProgressCanvasFactory is new Java_Object with null record;
   PROGRESS_FORM_SCREEN : Java_Object_Access;

   procedure Initialize (This : in out ProgressCanvasFactory'Class);
   function Create return ProgressCanvasFactory_Access;
   function getInstance return ProgressCanvas_Access;
   procedure getInstance;
   function getLazyInstance return PaintableInterface_Access;
   procedure getLazyInstance;

end org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;


