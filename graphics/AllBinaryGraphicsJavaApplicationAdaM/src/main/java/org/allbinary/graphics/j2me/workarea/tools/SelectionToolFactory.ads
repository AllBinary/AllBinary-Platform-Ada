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

package org.allbinary.graphics.j2me.workarea.tools.SelectionToolFactory_Package is

   package CanvasJPanel_Package renames org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;

   type SelectionToolFactory is tagged;
   type SelectionToolFactory_Access is access all SelectionToolFactory'Class;
   type SelectionToolFactory_Access_Array is array (Natural range <>) of SelectionToolFactory_Access;
   type SelectionToolFactory_Access_Array_Access is access all SelectionToolFactory_Access_Array;

   type SelectionToolFactory is new GraphicsItemInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out SelectionToolFactory'Class);
   function Create return SelectionToolFactory_Access;
   function getInstance (This : in out SelectionToolFactory; canvasJPanel : CanvasJPanel_Access) return GraphicItemInterface_Access;
   procedure getInstance (This : in out SelectionToolFactory; canvasJPanel : CanvasJPanel_Access);

end org.allbinary.graphics.j2me.workarea.tools.SelectionToolFactory_Package;


