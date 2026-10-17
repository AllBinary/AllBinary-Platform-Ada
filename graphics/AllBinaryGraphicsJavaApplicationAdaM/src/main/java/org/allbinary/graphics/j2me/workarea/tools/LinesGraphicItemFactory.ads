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
with org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package; use org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package;

package org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package is

   package CanvasJPanel_Package renames org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;

   type LinesGraphicItemFactory is tagged;
   type LinesGraphicItemFactory_Access is access all LinesGraphicItemFactory'Class;
   type LinesGraphicItemFactory_Access_Array is array (Natural range <>) of LinesGraphicItemFactory_Access;
   type LinesGraphicItemFactory_Access_Array_Access is access all LinesGraphicItemFactory_Access_Array;

   type LinesGraphicItemFactory is new GraphicsItemInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out LinesGraphicItemFactory'Class);
   function Create return LinesGraphicItemFactory_Access;
   function getInstance (This : in out LinesGraphicItemFactory; canvasJPanel : CanvasJPanel_Access) return GraphicItemInterface_Access;
   procedure getInstance (This : in out LinesGraphicItemFactory; canvasJPanel : CanvasJPanel_Access);

end org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package;


