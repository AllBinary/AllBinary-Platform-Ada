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

limited with org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package;
package org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package_References is
   type GraphicItemBuilder_Access is access all org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package.GraphicItemBuilder'Class;
   type GraphicItemBuilder_Access_Array is array (Natural range <>) of GraphicItemBuilder_Access;
   type GraphicItemBuilder_Access_Array_Access is access all GraphicItemBuilder_Access_Array;
   type GraphicItemBuilder_Access_Array_Access_Array is array (Natural range <>) of GraphicItemBuilder_Access_Array_Access;
   type GraphicItemBuilder_Access_Array_Access_Array_Access is access all GraphicItemBuilder_Access_Array_Access_Array;
end org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References;

package org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package is

   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype GraphicItemInterface_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access;
   use type GraphicItemInterface_Access;
   subtype GraphicItemInterface_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array;
   use type GraphicItemInterface_Access_Array;
   subtype GraphicItemInterface_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array_Access;
   use type GraphicItemInterface_Access_Array_Access;
   subtype GraphicItemInterface_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array_Access_Array;
   use type GraphicItemInterface_Access_Array_Access_Array;
   subtype GraphicItemInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array_Access_Array_Access;
   use type GraphicItemInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GraphicItemBuilder_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package_References.GraphicItemBuilder_Access;
   function "=" (Left, Right : GraphicItemBuilder_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package_References."=";
   subtype GraphicItemBuilder_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package_References.GraphicItemBuilder_Access_Array;
   function "=" (Left, Right : GraphicItemBuilder_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package_References."=";
   subtype GraphicItemBuilder_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package_References.GraphicItemBuilder_Access_Array_Access;
   function "=" (Left, Right : GraphicItemBuilder_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package_References."=";
   subtype GraphicItemBuilder_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package_References.GraphicItemBuilder_Access_Array_Access_Array;
   function "=" (Left, Right : GraphicItemBuilder_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package_References."=";
   subtype GraphicItemBuilder_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package_References.GraphicItemBuilder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GraphicItemBuilder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package_References."=";

   type GraphicItemBuilder is new Java_Object with null record;

   procedure Initialize (This : in out GraphicItemBuilder'Class);
   function Create return GraphicItemBuilder_Access;
   function getInstance (node_Param : access Node_Package.Node'Class) return GraphicItemInterface_Access;
   procedure getInstance (node_Param : access Node_Package.Node'Class);

end org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package;


