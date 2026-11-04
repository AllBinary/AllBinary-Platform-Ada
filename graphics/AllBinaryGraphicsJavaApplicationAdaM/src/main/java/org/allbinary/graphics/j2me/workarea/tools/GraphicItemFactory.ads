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

limited with org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package;
package org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package_References is
   type GraphicItemFactory_Access is access all org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package.GraphicItemFactory'Class;
   type GraphicItemFactory_Access_Array is array (Natural range <>) of GraphicItemFactory_Access;
   type GraphicItemFactory_Access_Array_Access is access all GraphicItemFactory_Access_Array;
   type GraphicItemFactory_Access_Array_Access_Array is array (Natural range <>) of GraphicItemFactory_Access_Array_Access;
   type GraphicItemFactory_Access_Array_Access_Array_Access is access all GraphicItemFactory_Access_Array_Access_Array;
end org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References;

package org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype GraphicsItemInterfaceFactoryInterface_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References.GraphicsItemInterfaceFactoryInterface_Access;
   use type GraphicsItemInterfaceFactoryInterface_Access;
   subtype GraphicsItemInterfaceFactoryInterface_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References.GraphicsItemInterfaceFactoryInterface_Access_Array;
   use type GraphicsItemInterfaceFactoryInterface_Access_Array;
   subtype GraphicsItemInterfaceFactoryInterface_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References.GraphicsItemInterfaceFactoryInterface_Access_Array_Access;
   use type GraphicsItemInterfaceFactoryInterface_Access_Array_Access;
   subtype GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References.GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array;
   use type GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References.GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GraphicItemFactory_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package_References.GraphicItemFactory_Access;
   function "=" (Left, Right : GraphicItemFactory_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package_References."=";
   subtype GraphicItemFactory_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package_References.GraphicItemFactory_Access_Array;
   function "=" (Left, Right : GraphicItemFactory_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package_References."=";
   subtype GraphicItemFactory_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package_References.GraphicItemFactory_Access_Array_Access;
   function "=" (Left, Right : GraphicItemFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package_References."=";
   subtype GraphicItemFactory_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package_References.GraphicItemFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GraphicItemFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package_References."=";
   subtype GraphicItemFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package_References.GraphicItemFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GraphicItemFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package_References."=";

   type GraphicItemFactory is new Java_Object with record
      graphicItems : HashMap_Access;
      DEFAULT : GraphicsItemInterfaceFactoryInterface_Access;
   end record;
   instance : GraphicItemFactory_Access;

   procedure Initialize (This : in out GraphicItemFactory'Class);
   function Create return GraphicItemFactory_Access;
   function getInstance return GraphicItemFactory_Access;
   function getInstance (This : in out GraphicItemFactory; itemName : Unbounded_String) return GraphicsItemInterfaceFactoryInterface_Access;
   procedure getInstance (This : in out GraphicItemFactory; itemName : Unbounded_String);
   function getInstance (This : in out GraphicItemFactory; graphicItemNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) return HashMap_Access;
   procedure getInstance (This : in out GraphicItemFactory; graphicItemNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package;


