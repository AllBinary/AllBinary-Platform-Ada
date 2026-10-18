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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.category.CategoryFactoryInterface_Package; use org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.data.tree.category.CategoryModifierTree_Package; use org.allbinary.data.tree.category.CategoryModifierTree_Package;
with org.allbinary.data.tree.category.CategoryLoaderInterface_Package; use org.allbinary.data.tree.category.CategoryLoaderInterface_Package;

package org.allbinary.data.tree.category.CategoryLoader_Package is

   package CategoryFactoryInterface_Package renames Standard.org.allbinary.business.category.CategoryFactoryInterface_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type CategoryLoader is tagged;
   type CategoryLoader_Access is access all CategoryLoader'Class;
   type CategoryLoader_Access_Array is array (Natural range <>) of CategoryLoader_Access;
   type CategoryLoader_Access_Array_Access is access all CategoryLoader_Access_Array;
   type CategoryLoader_Access_Array_Access_Array is array (Natural range <>) of CategoryLoader_Access_Array_Access;
   type CategoryLoader_Access_Array_Access_Array_Access is access all CategoryLoader_Access_Array_Access_Array;

   type CategoryLoader is new CategoryModifierTree and CategoryLoaderInterface with record
      logUtil : LogUtil_Access;
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


