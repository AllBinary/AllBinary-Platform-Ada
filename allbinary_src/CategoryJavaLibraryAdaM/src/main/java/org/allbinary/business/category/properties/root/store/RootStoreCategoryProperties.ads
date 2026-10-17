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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;
with org.allbinary.business.category.CategoryUtil_Package; use org.allbinary.business.category.CategoryUtil_Package;
with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package; use org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CategoryData_Package renames Standard.org.allbinary.business.category.CategoryData_Package;
   package CategoryUtil_Package renames Standard.org.allbinary.business.category.CategoryUtil_Package;
   package CategoryHierarchyInterface_Package renames Standard.org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
   package CategoryPropertiesInterface_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
   package RootCategoryPropertiesInterface_Package renames Standard.org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type RootStoreCategoryProperties is tagged;
   type RootStoreCategoryProperties_Access is access all RootStoreCategoryProperties'Class;
   type RootStoreCategoryProperties_Access_Array is array (Natural range <>) of RootStoreCategoryProperties_Access;
   type RootStoreCategoryProperties_Access_Array_Access is access all RootStoreCategoryProperties_Access_Array;

   type RootStoreCategoryProperties is new RootCategoryPropertiesInterface and CategoryPropertiesInterface with record
      logUtil : LogUtil_Access;
      pathData : AbPathData_Access;
      fileAbPath : AbPath_Access;
      abPath : AbPath_Access;
      category : Unbounded_String;
      isRealRoot : Boolean;
      webAppAbPath : AbPath_Access;
      transformInfoInterface : TransformInfoInterface_Access;
   end record;

   procedure Initialize (This : in out RootStoreCategoryProperties'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return RootStoreCategoryProperties_Access;
   procedure initPath (This : in out RootStoreCategoryProperties);
   function isRealRoot (This : in out RootStoreCategoryProperties) return Boolean;
   function isRoot (This : in out RootStoreCategoryProperties) return Boolean;
   function getKey (This : in out RootStoreCategoryProperties) return Java_Object_Access;
   procedure setPath (This : in out RootStoreCategoryProperties; path : AbPath_Access);
   procedure setRootFilePath (This : in out RootStoreCategoryProperties; value : AbPath_Access);
   function getRootFilePath (This : in out RootStoreCategoryProperties) return AbPath_Access;
   function getValue (This : in out RootStoreCategoryProperties) return Unbounded_String;
   function getWebAppPath (This : in out RootStoreCategoryProperties) return AbPath_Access;
   function getPath (This : in out RootStoreCategoryProperties; categoryHierarchyInterface : CategoryHierarchyInterface_Access) return AbPath_Access;
   procedure getPath (This : in out RootStoreCategoryProperties; categoryHierarchyInterface : CategoryHierarchyInterface_Access);
   function getFileName (This : in out RootStoreCategoryProperties) return Unbounded_String;
   procedure setValue (This : in out RootStoreCategoryProperties; value : Unbounded_String);
   function isValid (This : in out RootStoreCategoryProperties) return Boolean;
   function toHashMap (This : in out RootStoreCategoryProperties) return HashMap_Access;
   function toVector (This : in out RootStoreCategoryProperties) return BasicArrayList_Access;
   function toValidationInfoDoc (This : in out RootStoreCategoryProperties) return Document_Access;
   function toValidationInfoNode (This : in out RootStoreCategoryProperties; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out RootStoreCategoryProperties; document : Document_Access);
   function validationInfo (This : in out RootStoreCategoryProperties) return Unbounded_String;
   procedure log (This : in out RootStoreCategoryProperties);

end org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package;


