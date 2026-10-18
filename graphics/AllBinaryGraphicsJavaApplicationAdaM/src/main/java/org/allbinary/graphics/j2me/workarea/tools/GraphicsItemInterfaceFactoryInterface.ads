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
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;

package org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package is

   package CanvasJPanel_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;

   type GraphicsItemInterfaceFactoryInterface is interface;
   type GraphicsItemInterfaceFactoryInterface_Access is access all GraphicsItemInterfaceFactoryInterface'Class;
   type GraphicsItemInterfaceFactoryInterface_Access_Array is array (Natural range <>) of GraphicsItemInterfaceFactoryInterface_Access;
   type GraphicsItemInterfaceFactoryInterface_Access_Array_Access is access all GraphicsItemInterfaceFactoryInterface_Access_Array;
   type GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of GraphicsItemInterfaceFactoryInterface_Access_Array_Access;
   type GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array;
   function getInstance (This : in out GraphicsItemInterfaceFactoryInterface; canvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class) return GraphicItemInterface_Access is abstract;

end org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package;


