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

limited with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
package org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References is
   type TransformDocumentInterface_Access is access all org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package.TransformDocumentInterface'Class;
   type TransformDocumentInterface_Access_Array is array (Natural range <>) of TransformDocumentInterface_Access;
   type TransformDocumentInterface_Access_Array_Access is access all TransformDocumentInterface_Access_Array;
   type TransformDocumentInterface_Access_Array_Access_Array is array (Natural range <>) of TransformDocumentInterface_Access_Array_Access;
   type TransformDocumentInterface_Access_Array_Access_Array_Access is access all TransformDocumentInterface_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References;

with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References;
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
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package is

   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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
   end Reference_Types;
   use Reference_Types;


   type TransformDocumentInterface is interface;
   subtype TransformDocumentInterface_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access;
   function "=" (Left, Right : TransformDocumentInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References."=";
   subtype TransformDocumentInterface_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array;
   function "=" (Left, Right : TransformDocumentInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References."=";
   subtype TransformDocumentInterface_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access;
   function "=" (Left, Right : TransformDocumentInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References."=";
   subtype TransformDocumentInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformDocumentInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References."=";
   subtype TransformDocumentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformDocumentInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References."=";
   function Java_Object_Access_From_TransformDocumentInterface (Value : TransformDocumentInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getBaseNode (This : in out TransformDocumentInterface) return Node_Access is abstract;
   function getDoc (This : in out TransformDocumentInterface) return Document_Access is abstract;

end org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;


