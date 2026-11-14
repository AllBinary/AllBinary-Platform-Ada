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
limited with org.allbinary.logic.visual.transform.TransformInterface_Package;
package org.allbinary.logic.visual.transform.TransformInterface_Package_References is
   type TransformInterface_Access is access all org.allbinary.logic.visual.transform.TransformInterface_Package.TransformInterface'Class;
   type TransformInterface_Access_Array is array (Natural range <>) of TransformInterface_Access;
   type TransformInterface_Access_Array_Access is access all TransformInterface_Access_Array;
   type TransformInterface_Access_Array_Access_Array is array (Natural range <>) of TransformInterface_Access_Array_Access;
   type TransformInterface_Access_Array_Access_Array_Access is access all TransformInterface_Access_Array_Access_Array;
   type TransformInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInterface_Access_Array_Access is (if Value /= null and then Value.all in TransformInterface_Access_Array_Object'Class then TransformInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInterface_Access_Array_Access_Array_Object'Class then TransformInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.TransformInterface_Package_References;

with org.allbinary.logic.visual.transform.TransformInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package; use org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
limited with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References;
with org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package;

package org.allbinary.logic.visual.transform.TransformInterface_Package is

   package DomDocumentMappingInterface_Package renames Standard.org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
   package TransformDocumentInterface_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
   package CompositeTransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package;
   package Reference_Types is
   subtype TransformDocumentInterface_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access;
   use type TransformDocumentInterface_Access;
   subtype TransformDocumentInterface_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array;
   use type TransformDocumentInterface_Access_Array;
   subtype TransformDocumentInterface_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access;
   use type TransformDocumentInterface_Access_Array_Access;
   subtype TransformDocumentInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array;
   use type TransformDocumentInterface_Access_Array_Access_Array;
   subtype TransformDocumentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array_Access;
   use type TransformDocumentInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TransformInterface is interface and DomDocumentMappingInterface and CompositeTransformInfoInterface;
   subtype TransformInterface_Access is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access;
   function "=" (Left, Right : TransformInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.TransformInterface_Package_References."=";
   subtype TransformInterface_Access_Array is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array;
   function "=" (Left, Right : TransformInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.TransformInterface_Package_References."=";
   subtype TransformInterface_Access_Array_Access is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.TransformInterface_Package_References."=";
   function Java_Box (Value : TransformInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.TransformInterface_Package_References.Java_Box;
   function Java_Unbox_TransformInterface_Access_Array (Value : access Java_Object'Class) return TransformInterface_Access_Array_Access renames org.allbinary.logic.visual.transform.TransformInterface_Package_References.Java_Unbox_TransformInterface_Access_Array;
   subtype TransformInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.TransformInterface_Package_References."=";
   subtype TransformInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.TransformInterface_Package_References."=";
   function Java_Box (Value : TransformInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.TransformInterface_Package_References.Java_Box;
   function Java_Unbox_TransformInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.TransformInterface_Package_References.Java_Unbox_TransformInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TransformInterface (Value : TransformInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getTypeId (This : in out TransformInterface) return Integer is abstract;
   procedure setTransformDocumentInterface (This : in out TransformInterface; viewDocumentInterface_Param : access TransformDocumentInterface_Package.TransformDocumentInterface'Class) is abstract;
   function getTransformDocumentInterface (This : in out TransformInterface) return TransformDocumentInterface_Access is abstract;
   function view (This : in out TransformInterface) return Unbounded_String is abstract;

end org.allbinary.logic.visual.transform.TransformInterface_Package;


