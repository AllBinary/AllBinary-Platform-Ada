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
limited with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References is
   type TransformInfoObjectConfigInterface_Access is access all org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package.TransformInfoObjectConfigInterface'Class;
   type TransformInfoObjectConfigInterface_Access_Array is array (Natural range <>) of TransformInfoObjectConfigInterface_Access;
   type TransformInfoObjectConfigInterface_Access_Array_Access is access all TransformInfoObjectConfigInterface_Access_Array;
   type TransformInfoObjectConfigInterface_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectConfigInterface_Access_Array_Access;
   type TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access is access all TransformInfoObjectConfigInterface_Access_Array_Access_Array;
   type TransformInfoObjectConfigInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoObjectConfigInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoObjectConfigInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoObjectConfigInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoObjectConfigInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoObjectConfigInterface_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoObjectConfigInterface_Access_Array_Object'Class then TransformInfoObjectConfigInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoObjectConfigInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoObjectConfigInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoObjectConfigInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoObjectConfigInterface_Access_Array_Access_Array_Object'Class then TransformInfoObjectConfigInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References;

with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package; use org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;

package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package DomDocumentMappingInterface_Package renames Standard.org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
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
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TransformInfoObjectConfigInterface is interface and DomDocumentMappingInterface;
   subtype TransformInfoObjectConfigInterface_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access;
   function "=" (Left, Right : TransformInfoObjectConfigInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References."=";
   subtype TransformInfoObjectConfigInterface_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References."=";
   subtype TransformInfoObjectConfigInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References."=";
   function Java_Box (Value : TransformInfoObjectConfigInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.Java_Box;
   function Java_Unbox_TransformInfoObjectConfigInterface_Access_Array (Value : access Java_Object'Class) return TransformInfoObjectConfigInterface_Access_Array_Access renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.Java_Unbox_TransformInfoObjectConfigInterface_Access_Array;
   subtype TransformInfoObjectConfigInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References."=";
   subtype TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References."=";
   function Java_Box (Value : TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.Java_Box;
   function Java_Unbox_TransformInfoObjectConfigInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.Java_Unbox_TransformInfoObjectConfigInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TransformInfoObjectConfigInterface (Value : TransformInfoObjectConfigInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function containsView (This : in out TransformInfoObjectConfigInterface; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return Boolean is abstract;
   procedure containsView (This : in out TransformInfoObjectConfigInterface; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is abstract;
   function getName (This : in out TransformInfoObjectConfigInterface) return Unbounded_String is abstract;
   function getTransformsGroup (This : in out TransformInfoObjectConfigInterface; group : Unbounded_String) return BasicArrayList_Access is abstract;
   procedure getTransformsGroup (This : in out TransformInfoObjectConfigInterface; group : Unbounded_String) is abstract;
   function getTransforms (This : in out TransformInfoObjectConfigInterface) return BasicArrayList_Access is abstract;
   function getParentTransforms (This : in out TransformInfoObjectConfigInterface) return BasicArrayList_Access is abstract;
   function getGroupTransforms (This : in out TransformInfoObjectConfigInterface) return BasicArrayList_Access is abstract;
   function getOutputTypeName (This : in out TransformInfoObjectConfigInterface) return Unbounded_String is abstract;
   procedure setOutputTypeName (This : in out TransformInfoObjectConfigInterface; value : Unbounded_String) is abstract;
   function getInputOutputTypeName (This : in out TransformInfoObjectConfigInterface) return Unbounded_String is abstract;
   function getInputOutputTypeFile (This : in out TransformInfoObjectConfigInterface) return Unbounded_String is abstract;
   function getImportUriPath (This : in out TransformInfoObjectConfigInterface) return Unbounded_String is abstract;
   function toString (This : in out TransformInfoObjectConfigInterface) return Unbounded_String is abstract;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;


