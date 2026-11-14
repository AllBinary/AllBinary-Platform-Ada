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
limited with org.allbinary.data.tree.category.CategoryLoader_Package;
package org.allbinary.data.tree.category.CategoryLoader_Package_References is
   type CategoryLoader_Access is access all org.allbinary.data.tree.category.CategoryLoader_Package.CategoryLoader'Class;
   type CategoryLoader_Access_Array is array (Natural range <>) of CategoryLoader_Access;
   type CategoryLoader_Access_Array_Access is access all CategoryLoader_Access_Array;
   type CategoryLoader_Access_Array_Access_Array is array (Natural range <>) of CategoryLoader_Access_Array_Access;
   type CategoryLoader_Access_Array_Access_Array_Access is access all CategoryLoader_Access_Array_Access_Array;
   type CategoryLoader_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryLoader_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryLoader_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryLoader_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryLoader_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryLoader_Access_Array_Access is (if Value /= null and then Value.all in CategoryLoader_Access_Array_Object'Class then CategoryLoader_Access_Array_Object'Class (Value.all).Value else null);
   type CategoryLoader_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryLoader_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryLoader_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryLoader_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryLoader_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryLoader_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CategoryLoader_Access_Array_Access_Array_Object'Class then CategoryLoader_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tree.category.CategoryLoader_Package_References;

with org.allbinary.data.tree.category.CategoryLoader_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.business.category.CategoryFactoryInterface_Package_References;
limited with org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.NodeList_Package;
with org.w3c.dom.NodeList_Package_References;
with org.allbinary.data.tree.category.CategoryModifierTree_Package; use org.allbinary.data.tree.category.CategoryModifierTree_Package;
with org.allbinary.data.tree.category.CategoryLoaderInterface_Package; use org.allbinary.data.tree.category.CategoryLoaderInterface_Package;

package org.allbinary.data.tree.category.CategoryLoader_Package is

   package CategoryFactoryInterface_Package renames Standard.org.allbinary.business.category.CategoryFactoryInterface_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   package Reference_Types is
   subtype CategoryFactoryInterface_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access;
   use type CategoryFactoryInterface_Access;
   subtype CategoryFactoryInterface_Access_Array is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array;
   use type CategoryFactoryInterface_Access_Array;
   subtype CategoryFactoryInterface_Access_Array_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access;
   use type CategoryFactoryInterface_Access_Array_Access;
   subtype CategoryFactoryInterface_Access_Array_Access_Array is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access_Array;
   use type CategoryFactoryInterface_Access_Array_Access_Array;
   subtype CategoryFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access_Array_Access;
   use type CategoryFactoryInterface_Access_Array_Access_Array_Access;
   subtype CategoryInterface_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access;
   use type CategoryInterface_Access;
   subtype CategoryInterface_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array;
   use type CategoryInterface_Access_Array;
   subtype CategoryInterface_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access;
   use type CategoryInterface_Access_Array_Access;
   subtype CategoryInterface_Access_Array_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array;
   use type CategoryInterface_Access_Array_Access_Array;
   subtype CategoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array_Access;
   use type CategoryInterface_Access_Array_Access_Array_Access;
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
   subtype NodeList_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access;
   use type NodeList_Access;
   subtype NodeList_Access_Array is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array;
   use type NodeList_Access_Array;
   subtype NodeList_Access_Array_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access;
   use type NodeList_Access_Array_Access;
   subtype NodeList_Access_Array_Access_Array is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access_Array;
   use type NodeList_Access_Array_Access_Array;
   subtype NodeList_Access_Array_Access_Array_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access_Array_Access;
   use type NodeList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CategoryLoader_Access is org.allbinary.data.tree.category.CategoryLoader_Package_References.CategoryLoader_Access;
   function "=" (Left, Right : CategoryLoader_Access) return Boolean renames org.allbinary.data.tree.category.CategoryLoader_Package_References."=";
   subtype CategoryLoader_Access_Array is org.allbinary.data.tree.category.CategoryLoader_Package_References.CategoryLoader_Access_Array;
   function "=" (Left, Right : CategoryLoader_Access_Array) return Boolean renames org.allbinary.data.tree.category.CategoryLoader_Package_References."=";
   subtype CategoryLoader_Access_Array_Access is org.allbinary.data.tree.category.CategoryLoader_Package_References.CategoryLoader_Access_Array_Access;
   function "=" (Left, Right : CategoryLoader_Access_Array_Access) return Boolean renames org.allbinary.data.tree.category.CategoryLoader_Package_References."=";
   function Java_Box (Value : CategoryLoader_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.category.CategoryLoader_Package_References.Java_Box;
   function Java_Unbox_CategoryLoader_Access_Array (Value : access Java_Object'Class) return CategoryLoader_Access_Array_Access renames org.allbinary.data.tree.category.CategoryLoader_Package_References.Java_Unbox_CategoryLoader_Access_Array;
   subtype CategoryLoader_Access_Array_Access_Array is org.allbinary.data.tree.category.CategoryLoader_Package_References.CategoryLoader_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryLoader_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.category.CategoryLoader_Package_References."=";
   subtype CategoryLoader_Access_Array_Access_Array_Access is org.allbinary.data.tree.category.CategoryLoader_Package_References.CategoryLoader_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryLoader_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.category.CategoryLoader_Package_References."=";
   function Java_Box (Value : CategoryLoader_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.category.CategoryLoader_Package_References.Java_Box;
   function Java_Unbox_CategoryLoader_Access_Array_Access_Array (Value : access Java_Object'Class) return CategoryLoader_Access_Array_Access_Array_Access renames org.allbinary.data.tree.category.CategoryLoader_Package_References.Java_Unbox_CategoryLoader_Access_Array_Access_Array;

   type CategoryLoader is new CategoryModifierTree and CategoryLoaderInterface with record
      CategoryLoader_Field_logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out CategoryLoader'Class; categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class);
   function Create (categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) return CategoryLoader_Access;
   function getDoc (This : in out CategoryLoader; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return Document_Access;
   procedure getDoc (This : in out CategoryLoader; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   function get (This : in out CategoryLoader; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return CategoryInterface_Access;
   procedure get (This : in out CategoryLoader; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   function get (This : in out CategoryLoader; document_Param : access Document_Package.Document'Class) return CategoryInterface_Access;
   procedure get (This : in out CategoryLoader; document_Param : access Document_Package.Document'Class);
   function getAll (This : in out CategoryLoader; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return CategoryInterface_Access;
   procedure getAll (This : in out CategoryLoader; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   function getAll (This : in out CategoryLoader; document_Param : access Document_Package.Document'Class) return CategoryInterface_Access;
   procedure getAll (This : in out CategoryLoader; document_Param : access Document_Package.Document'Class);
   function getAll (This : in out CategoryLoader; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryNodeList_Param : access NodeList_Package.NodeList'Class) return CategoryInterface_Access;
   procedure getAll (This : in out CategoryLoader; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryNodeList_Param : access NodeList_Package.NodeList'Class);
   function addProperties (This : in out CategoryLoader; loadedCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryNodeList_Param : access NodeList_Package.NodeList'Class) return CategoryInterface_Access;
   procedure addProperties (This : in out CategoryLoader; loadedCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryNodeList_Param : access NodeList_Package.NodeList'Class);

end org.allbinary.data.tree.category.CategoryLoader_Package;


