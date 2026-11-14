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
limited with org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package;
package org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References is
   type RootStoreCategoryProperties_Access is access all org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package.RootStoreCategoryProperties'Class;
   type RootStoreCategoryProperties_Access_Array is array (Natural range <>) of RootStoreCategoryProperties_Access;
   type RootStoreCategoryProperties_Access_Array_Access is access all RootStoreCategoryProperties_Access_Array;
   type RootStoreCategoryProperties_Access_Array_Access_Array is array (Natural range <>) of RootStoreCategoryProperties_Access_Array_Access;
   type RootStoreCategoryProperties_Access_Array_Access_Array_Access is access all RootStoreCategoryProperties_Access_Array_Access_Array;
   type RootStoreCategoryProperties_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RootStoreCategoryProperties_Access_Array_Access;
   end record;
   function Java_Box (Value : RootStoreCategoryProperties_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RootStoreCategoryProperties_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RootStoreCategoryProperties_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RootStoreCategoryProperties_Access_Array_Access is (if Value /= null and then Value.all in RootStoreCategoryProperties_Access_Array_Object'Class then RootStoreCategoryProperties_Access_Array_Object'Class (Value.all).Value else null);
   type RootStoreCategoryProperties_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RootStoreCategoryProperties_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RootStoreCategoryProperties_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RootStoreCategoryProperties_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RootStoreCategoryProperties_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RootStoreCategoryProperties_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RootStoreCategoryProperties_Access_Array_Access_Array_Object'Class then RootStoreCategoryProperties_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References;

with org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References;
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
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
limited with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.io.path.AbPathData_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CategoryHierarchyInterface_Package renames Standard.org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
   package CategoryPropertiesInterface_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
   package RootCategoryPropertiesInterface_Package renames Standard.org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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
   subtype AbPathData_Access is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access;
   use type AbPathData_Access;
   subtype AbPathData_Access_Array is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array;
   use type AbPathData_Access_Array;
   subtype AbPathData_Access_Array_Access is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array_Access;
   use type AbPathData_Access_Array_Access;
   subtype AbPathData_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array_Access_Array;
   use type AbPathData_Access_Array_Access_Array;
   subtype AbPathData_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array_Access_Array_Access;
   use type AbPathData_Access_Array_Access_Array_Access;
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


   subtype RootStoreCategoryProperties_Access is org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References.RootStoreCategoryProperties_Access;
   function "=" (Left, Right : RootStoreCategoryProperties_Access) return Boolean renames org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References."=";
   subtype RootStoreCategoryProperties_Access_Array is org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References.RootStoreCategoryProperties_Access_Array;
   function "=" (Left, Right : RootStoreCategoryProperties_Access_Array) return Boolean renames org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References."=";
   subtype RootStoreCategoryProperties_Access_Array_Access is org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References.RootStoreCategoryProperties_Access_Array_Access;
   function "=" (Left, Right : RootStoreCategoryProperties_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References."=";
   function Java_Box (Value : RootStoreCategoryProperties_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References.Java_Box;
   function Java_Unbox_RootStoreCategoryProperties_Access_Array (Value : access Java_Object'Class) return RootStoreCategoryProperties_Access_Array_Access renames org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References.Java_Unbox_RootStoreCategoryProperties_Access_Array;
   subtype RootStoreCategoryProperties_Access_Array_Access_Array is org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References.RootStoreCategoryProperties_Access_Array_Access_Array;
   function "=" (Left, Right : RootStoreCategoryProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References."=";
   subtype RootStoreCategoryProperties_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References.RootStoreCategoryProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RootStoreCategoryProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References."=";
   function Java_Box (Value : RootStoreCategoryProperties_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References.Java_Box;
   function Java_Unbox_RootStoreCategoryProperties_Access_Array_Access_Array (Value : access Java_Object'Class) return RootStoreCategoryProperties_Access_Array_Access_Array_Access renames org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package_References.Java_Unbox_RootStoreCategoryProperties_Access_Array_Access_Array;

   type RootStoreCategoryProperties is new Java_Object and RootCategoryPropertiesInterface and CategoryPropertiesInterface with record
      logUtil : LogUtil_Access;
      pathData : AbPathData_Access;
      fileAbPath : AbPath_Access;
      abPath : AbPath_Access;
      category : Unbounded_String;
      isRealRoot_Field : Boolean;
      webAppAbPath : AbPath_Access;
      transformInfoInterface : TransformInfoInterface_Access;
   end record;

   procedure Initialize (This : in out RootStoreCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return RootStoreCategoryProperties_Access;
   procedure Initialize (This : in out RootStoreCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryAbPath_Param : access AbPath_Package.AbPath'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryAbPath_Param : access AbPath_Package.AbPath'Class) return RootStoreCategoryProperties_Access;
   procedure Initialize (This : in out RootStoreCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class) return RootStoreCategoryProperties_Access;
   procedure Initialize (This : in out RootStoreCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return RootStoreCategoryProperties_Access;
   procedure initPath (This : in out RootStoreCategoryProperties);
   function isRealRoot (This : in out RootStoreCategoryProperties) return Boolean;
   function isRoot (This : in out RootStoreCategoryProperties) return Boolean;
   function getKey (This : in out RootStoreCategoryProperties) return Java_Object_Access;
   procedure setPath (This : in out RootStoreCategoryProperties; path_Param : access AbPath_Package.AbPath'Class);
   procedure setRootFilePath (This : in out RootStoreCategoryProperties; value_Param : access AbPath_Package.AbPath'Class);
   function getRootFilePath (This : in out RootStoreCategoryProperties) return AbPath_Access;
   function getValue (This : in out RootStoreCategoryProperties) return Unbounded_String;
   function getWebAppPath (This : in out RootStoreCategoryProperties) return AbPath_Access;
   function getPath (This : in out RootStoreCategoryProperties; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) return AbPath_Access;
   procedure getPath (This : in out RootStoreCategoryProperties; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class);
   function getFileName (This : in out RootStoreCategoryProperties) return Unbounded_String;
   procedure setValue (This : in out RootStoreCategoryProperties; value : Unbounded_String);
   function isValid (This : in out RootStoreCategoryProperties) return Boolean;
   function toHashMap (This : in out RootStoreCategoryProperties) return HashMap_Access;
   function toVector (This : in out RootStoreCategoryProperties) return BasicArrayList_Access;
   function toValidationInfoDoc (This : in out RootStoreCategoryProperties) return Document_Access;
   function toValidationInfoNode (This : in out RootStoreCategoryProperties; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out RootStoreCategoryProperties; document_Param : access Document_Package.Document'Class);
   function validationInfo (This : in out RootStoreCategoryProperties) return Unbounded_String;
   procedure log (This : in out RootStoreCategoryProperties);

end org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package;


