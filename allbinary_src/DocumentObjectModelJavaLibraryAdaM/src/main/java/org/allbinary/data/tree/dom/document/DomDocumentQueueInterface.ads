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

limited with org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package;
package org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References is
   type DomDocumentQueueInterface_Access is access all org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package.DomDocumentQueueInterface'Class;
   type DomDocumentQueueInterface_Access_Array is array (Natural range <>) of DomDocumentQueueInterface_Access;
   type DomDocumentQueueInterface_Access_Array_Access is access all DomDocumentQueueInterface_Access_Array;
   type DomDocumentQueueInterface_Access_Array_Access_Array is array (Natural range <>) of DomDocumentQueueInterface_Access_Array_Access;
   type DomDocumentQueueInterface_Access_Array_Access_Array_Access is access all DomDocumentQueueInterface_Access_Array_Access_Array;
end org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References;

with org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References;

package org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package is

   package DomDocumentMappingInterface_Package renames Standard.org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
   package Reference_Types is
   subtype DomDocumentMappingInterface_Access is org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References.DomDocumentMappingInterface_Access;
   use type DomDocumentMappingInterface_Access;
   subtype DomDocumentMappingInterface_Access_Array is org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References.DomDocumentMappingInterface_Access_Array;
   use type DomDocumentMappingInterface_Access_Array;
   subtype DomDocumentMappingInterface_Access_Array_Access is org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References.DomDocumentMappingInterface_Access_Array_Access;
   use type DomDocumentMappingInterface_Access_Array_Access;
   subtype DomDocumentMappingInterface_Access_Array_Access_Array is org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References.DomDocumentMappingInterface_Access_Array_Access_Array;
   use type DomDocumentMappingInterface_Access_Array_Access_Array;
   subtype DomDocumentMappingInterface_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References.DomDocumentMappingInterface_Access_Array_Access_Array_Access;
   use type DomDocumentMappingInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type DomDocumentQueueInterface is interface;
   subtype DomDocumentQueueInterface_Access is org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References.DomDocumentQueueInterface_Access;
   function "=" (Left, Right : DomDocumentQueueInterface_Access) return Boolean renames org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References."=";
   subtype DomDocumentQueueInterface_Access_Array is org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References.DomDocumentQueueInterface_Access_Array;
   function "=" (Left, Right : DomDocumentQueueInterface_Access_Array) return Boolean renames org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References."=";
   subtype DomDocumentQueueInterface_Access_Array_Access is org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References.DomDocumentQueueInterface_Access_Array_Access;
   function "=" (Left, Right : DomDocumentQueueInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References."=";
   subtype DomDocumentQueueInterface_Access_Array_Access_Array is org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References.DomDocumentQueueInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DomDocumentQueueInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References."=";
   subtype DomDocumentQueueInterface_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References.DomDocumentQueueInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DomDocumentQueueInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References."=";
   function Java_Object_Access_From_DomDocumentQueueInterface (Value : DomDocumentQueueInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function offer (This : in out DomDocumentQueueInterface; domDocumentMappingInterface_Param : access DomDocumentMappingInterface_Package.DomDocumentMappingInterface'Class) return Boolean is abstract;
   function remove (This : in out DomDocumentQueueInterface) return DomDocumentMappingInterface_Access is abstract;

end org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package;


