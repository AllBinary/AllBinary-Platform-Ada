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

with AllBinary_Java;
limited with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
package org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References is
   type DomDocumentMappingInterface_Access is access all org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package.DomDocumentMappingInterface'Class;
   type DomDocumentMappingInterface_Access_Array is array (Natural range <>) of DomDocumentMappingInterface_Access;
   type DomDocumentMappingInterface_Access_Array_Access is access all DomDocumentMappingInterface_Access_Array;
   type DomDocumentMappingInterface_Access_Array_Access_Array is array (Natural range <>) of DomDocumentMappingInterface_Access_Array_Access;
   type DomDocumentMappingInterface_Access_Array_Access_Array_Access is access all DomDocumentMappingInterface_Access_Array_Access_Array;
   type DomDocumentMappingInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DomDocumentMappingInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : DomDocumentMappingInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DomDocumentMappingInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DomDocumentMappingInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DomDocumentMappingInterface_Access_Array_Access is (if Value /= null and then Value.all in DomDocumentMappingInterface_Access_Array_Object'Class then DomDocumentMappingInterface_Access_Array_Object'Class (Value.all).Value else null);
   type DomDocumentMappingInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DomDocumentMappingInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DomDocumentMappingInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DomDocumentMappingInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DomDocumentMappingInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DomDocumentMappingInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DomDocumentMappingInterface_Access_Array_Access_Array_Object'Class then DomDocumentMappingInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References;

with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;

package org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package is

   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Reference_Types is
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type DomDocumentMappingInterface is interface;
   subtype DomDocumentMappingInterface_Access is org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References.DomDocumentMappingInterface_Access;
   function "=" (Left, Right : DomDocumentMappingInterface_Access) return Boolean renames org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References."=";
   subtype DomDocumentMappingInterface_Access_Array is org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References.DomDocumentMappingInterface_Access_Array;
   function "=" (Left, Right : DomDocumentMappingInterface_Access_Array) return Boolean renames org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References."=";
   subtype DomDocumentMappingInterface_Access_Array_Access is org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References.DomDocumentMappingInterface_Access_Array_Access;
   function "=" (Left, Right : DomDocumentMappingInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References."=";
   function Java_Box (Value : DomDocumentMappingInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References.Java_Box;
   function Java_Unbox_DomDocumentMappingInterface_Access_Array (Value : access Java_Object'Class) return DomDocumentMappingInterface_Access_Array_Access renames org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References.Java_Unbox_DomDocumentMappingInterface_Access_Array;
   subtype DomDocumentMappingInterface_Access_Array_Access_Array is org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References.DomDocumentMappingInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DomDocumentMappingInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References."=";
   subtype DomDocumentMappingInterface_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References.DomDocumentMappingInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DomDocumentMappingInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References."=";
   function Java_Box (Value : DomDocumentMappingInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References.Java_Box;
   function Java_Unbox_DomDocumentMappingInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return DomDocumentMappingInterface_Access_Array_Access_Array_Access renames org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package_References.Java_Unbox_DomDocumentMappingInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_DomDocumentMappingInterface (Value : DomDocumentMappingInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function toXmlDoc (This : in out DomDocumentMappingInterface) return Document_Access is abstract;

end org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;


