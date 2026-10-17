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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.log.LOGGING_Package; use org.allbinary.log.LOGGING_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package is

   package LOGGING_Package renames Standard.org.allbinary.log.LOGGING_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type GraphicItemFactory is tagged;
   type GraphicItemFactory_Access is access all GraphicItemFactory'Class;
   type GraphicItemFactory_Access_Array is array (Natural range <>) of GraphicItemFactory_Access;
   type GraphicItemFactory_Access_Array_Access is access all GraphicItemFactory_Access_Array;

   type GraphicItemFactory is new Java_Object with record
      graphicItems : HashMap_Access;
      DEFAULT : GraphicsItemInterfaceFactoryInterface_Access;
   end record;
   instance : GraphicItemFactory_Access;

   procedure Initialize (This : in out GraphicItemFactory'Class);
   function Create return GraphicItemFactory_Access;
   function getInstance return GraphicItemFactory_Access;
   procedure getInstance;
   function getInstance (This : in out GraphicItemFactory; itemName : Unbounded_String) return GraphicsItemInterfaceFactoryInterface_Access;
   procedure getInstance (This : in out GraphicItemFactory; itemName : Unbounded_String);
   function getInstance (This : in out GraphicItemFactory; graphicItemNodeList : BasicArrayList_Access) return HashMap_Access;
   procedure getInstance (This : in out GraphicItemFactory; graphicItemNodeList : BasicArrayList_Access);

end org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package;


