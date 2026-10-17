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
with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;
with org.allbinary.business.category.CategoryFactoryInterface_Package; use org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.properties.CategoryProperties_Package; use org.allbinary.business.category.properties.CategoryProperties_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.data.tree.category.CategoryModifierTree_Package; use org.allbinary.data.tree.category.CategoryModifierTree_Package;
with org.allbinary.data.tree.category.CategoryLoaderInterface_Package; use org.allbinary.data.tree.category.CategoryLoaderInterface_Package;

package org.allbinary.data.tree.category.CategoryLoader_Package is

   package CategoryData_Package renames org.allbinary.business.category.CategoryData_Package;
   package CategoryFactoryInterface_Package renames org.allbinary.business.category.CategoryFactoryInterface_Package;
   package CategoryInterface_Package renames org.allbinary.business.category.CategoryInterface_Package;
   package CategoryProperties_Package renames org.allbinary.business.category.properties.CategoryProperties_Package;
   package CategoryPropertiesInterface_Package renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
   package DomSearchHelper_Package renames org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CryptFileReader_Package renames org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package NodeList_Package renames org.w3c.dom.NodeList_Package;

   type CategoryLoader is tagged;
   type CategoryLoader_Access is access all CategoryLoader'Class;
   type CategoryLoader_Access_Array is array (Natural range <>) of CategoryLoader_Access;
   type CategoryLoader_Access_Array_Access is access all CategoryLoader_Access_Array;

   type CategoryLoader is new CategoryModifierTree and CategoryLoaderInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out CategoryLoader'Class; categoryFactoryInterface : CategoryFactoryInterface_Access);
   function Create (categoryFactoryInterface : CategoryFactoryInterface_Access) return CategoryLoader_Access;
   function getDoc (This : in out CategoryLoader; categoryInterface : CategoryInterface_Access) return Document_Access;
   procedure getDoc (This : in out CategoryLoader; categoryInterface : CategoryInterface_Access);
   function get (This : in out CategoryLoader; categoryInterface : CategoryInterface_Access) return CategoryInterface_Access;
   procedure get (This : in out CategoryLoader; categoryInterface : CategoryInterface_Access);
   function get (This : in out CategoryLoader; document : Document_Access) return CategoryInterface_Access;
   procedure get (This : in out CategoryLoader; document : Document_Access);
   function getAll (This : in out CategoryLoader; categoryInterface : CategoryInterface_Access) return CategoryInterface_Access;
   procedure getAll (This : in out CategoryLoader; categoryInterface : CategoryInterface_Access);
   function getAll (This : in out CategoryLoader; document : Document_Access) return CategoryInterface_Access;
   procedure getAll (This : in out CategoryLoader; document : Document_Access);
   function getAll (This : in out CategoryLoader; parentCategoryInterface : CategoryInterface_Access; categoryNodeList : NodeList_Access) return CategoryInterface_Access;
   procedure getAll (This : in out CategoryLoader; parentCategoryInterface : CategoryInterface_Access; categoryNodeList : NodeList_Access);
   function addProperties (This : in out CategoryLoader; loadedCategoryInterface : CategoryInterface_Access; categoryNodeList : NodeList_Access) return CategoryInterface_Access;
   procedure addProperties (This : in out CategoryLoader; loadedCategoryInterface : CategoryInterface_Access; categoryNodeList : NodeList_Access);

end org.allbinary.data.tree.category.CategoryLoader_Package;


