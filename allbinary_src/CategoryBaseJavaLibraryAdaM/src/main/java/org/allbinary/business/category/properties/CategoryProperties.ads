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
limited with org.allbinary.business.category.properties.CategoryProperties_Package;
package org.allbinary.business.category.properties.CategoryProperties_Package_References is
   type CategoryProperties_Access is access all org.allbinary.business.category.properties.CategoryProperties_Package.CategoryProperties'Class;
   type CategoryProperties_Access_Array is array (Natural range <>) of CategoryProperties_Access;
   type CategoryProperties_Access_Array_Access is access all CategoryProperties_Access_Array;
   type CategoryProperties_Access_Array_Access_Array is array (Natural range <>) of CategoryProperties_Access_Array_Access;
   type CategoryProperties_Access_Array_Access_Array_Access is access all CategoryProperties_Access_Array_Access_Array;
   type CategoryProperties_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryProperties_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryProperties_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryProperties_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryProperties_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryProperties_Access_Array_Access is (if Value /= null and then Value.all in CategoryProperties_Access_Array_Object'Class then CategoryProperties_Access_Array_Object'Class (Value.all).Value else null);
   type CategoryProperties_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryProperties_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryProperties_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryProperties_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryProperties_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryProperties_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CategoryProperties_Access_Array_Access_Array_Object'Class then CategoryProperties_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.category.properties.CategoryProperties_Package_References;

with org.allbinary.business.category.properties.CategoryProperties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;

package org.allbinary.business.category.properties.CategoryProperties_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package CategoryHierarchyInterface_Package renames Standard.org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype CategoryHierarchyInterface_Access is org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References.CategoryHierarchyInterface_Access;
   use type CategoryHierarchyInterface_Access;
   subtype CategoryHierarchyInterface_Access_Array is org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References.CategoryHierarchyInterface_Access_Array;
   use type CategoryHierarchyInterface_Access_Array;
   subtype CategoryHierarchyInterface_Access_Array_Access is org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References.CategoryHierarchyInterface_Access_Array_Access;
   use type CategoryHierarchyInterface_Access_Array_Access;
   subtype CategoryHierarchyInterface_Access_Array_Access_Array is org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References.CategoryHierarchyInterface_Access_Array_Access_Array;
   use type CategoryHierarchyInterface_Access_Array_Access_Array;
   subtype CategoryHierarchyInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References.CategoryHierarchyInterface_Access_Array_Access_Array_Access;
   use type CategoryHierarchyInterface_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
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


   subtype CategoryProperties_Access is org.allbinary.business.category.properties.CategoryProperties_Package_References.CategoryProperties_Access;
   function "=" (Left, Right : CategoryProperties_Access) return Boolean renames org.allbinary.business.category.properties.CategoryProperties_Package_References."=";
   subtype CategoryProperties_Access_Array is org.allbinary.business.category.properties.CategoryProperties_Package_References.CategoryProperties_Access_Array;
   function "=" (Left, Right : CategoryProperties_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryProperties_Package_References."=";
   subtype CategoryProperties_Access_Array_Access is org.allbinary.business.category.properties.CategoryProperties_Package_References.CategoryProperties_Access_Array_Access;
   function "=" (Left, Right : CategoryProperties_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryProperties_Package_References."=";
   function Java_Box (Value : CategoryProperties_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.CategoryProperties_Package_References.Java_Box;
   function Java_Unbox_CategoryProperties_Access_Array (Value : access Java_Object'Class) return CategoryProperties_Access_Array_Access renames org.allbinary.business.category.properties.CategoryProperties_Package_References.Java_Unbox_CategoryProperties_Access_Array;
   subtype CategoryProperties_Access_Array_Access_Array is org.allbinary.business.category.properties.CategoryProperties_Package_References.CategoryProperties_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryProperties_Package_References."=";
   subtype CategoryProperties_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.CategoryProperties_Package_References.CategoryProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryProperties_Package_References."=";
   function Java_Box (Value : CategoryProperties_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.CategoryProperties_Package_References.Java_Box;
   function Java_Unbox_CategoryProperties_Access_Array_Access_Array (Value : access Java_Object'Class) return CategoryProperties_Access_Array_Access_Array_Access renames org.allbinary.business.category.properties.CategoryProperties_Package_References.Java_Unbox_CategoryProperties_Access_Array_Access_Array;

   type CategoryProperties is new Java_Object and CategoryPropertiesInterface with record
      logUtil : LogUtil_Access;
      category : Unbounded_String;
   end record;
   MAXDEPTH : constant Integer := 100;

   procedure Initialize (This : in out CategoryProperties'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return CategoryProperties_Access;
   procedure Initialize (This : in out CategoryProperties'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return CategoryProperties_Access;
   procedure Initialize (This : in out CategoryProperties'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return CategoryProperties_Access;
   function isRealRoot (This : in out CategoryProperties) return Boolean;
   function isRoot (This : in out CategoryProperties) return Boolean;
   function getKey (This : in out CategoryProperties) return Java_Object_Access;
   function getValue (This : in out CategoryProperties) return Unbounded_String;
   function getPath (This : in out CategoryProperties; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) return AbPath_Access;
   procedure getPath (This : in out CategoryProperties; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class);
   function getFileName (This : in out CategoryProperties) return Unbounded_String;
   function getWebAppPath (This : in out CategoryProperties) return AbPath_Access;
   procedure setValue (This : in out CategoryProperties; value : Unbounded_String);
   function isValid (This : in out CategoryProperties) return Boolean;
   function toHashMap (This : in out CategoryProperties) return HashMap_Access;
   function toVector (This : in out CategoryProperties) return BasicArrayList_Access;
   function toValidationInfoDoc (This : in out CategoryProperties) return Document_Access;
   function toValidationInfoNode (This : in out CategoryProperties; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out CategoryProperties; document_Param : access Document_Package.Document'Class);
   function validationInfo (This : in out CategoryProperties) return Unbounded_String;

end org.allbinary.business.category.properties.CategoryProperties_Package;


