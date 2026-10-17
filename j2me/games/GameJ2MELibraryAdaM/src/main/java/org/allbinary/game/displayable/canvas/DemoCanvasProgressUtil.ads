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
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.graphics.paint.PaintableComposite_Package; use org.allbinary.graphics.paint.PaintableComposite_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;

package org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package is

   package ProgressCanvas_Package renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package PaintableComposite_Package renames org.allbinary.graphics.paint.PaintableComposite_Package;
   package PaintableInterface_Package renames org.allbinary.graphics.paint.PaintableInterface_Package;

   type DemoCanvasProgressUtil is tagged;
   type DemoCanvasProgressUtil_Access is access all DemoCanvasProgressUtil'Class;
   type DemoCanvasProgressUtil_Access_Array is array (Natural range <>) of DemoCanvasProgressUtil_Access;
   type DemoCanvasProgressUtil_Access_Array_Access is access all DemoCanvasProgressUtil_Access_Array;

   type DemoCanvasProgressUtil is new Java_Object with null record;

   procedure Initialize (This : in out DemoCanvasProgressUtil'Class);
   function Create return DemoCanvasProgressUtil_Access;
   procedure showProgress (demoCanvas : DemoCanvas_Access);
   procedure showProgressOptionallyInTheBackground (demoCanvas : DemoCanvas_Access; background : Boolean);

end org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package;


