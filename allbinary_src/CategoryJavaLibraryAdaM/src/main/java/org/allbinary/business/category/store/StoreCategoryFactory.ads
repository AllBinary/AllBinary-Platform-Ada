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
with org.allbinary.business.category.Category_Package; use org.allbinary.business.category.Category_Package;
with org.allbinary.business.category.CategoryAbstractFactory_Package; use org.allbinary.business.category.CategoryAbstractFactory_Package;
with org.allbinary.business.category.CategoryFactoryInterface_Package; use org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryUtil_Package; use org.allbinary.business.category.CategoryUtil_Package;
with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
with org.allbinary.business.category.properties.root.store.RootStoreCategoryPropertiesFactory_Package; use org.allbinary.business.category.properties.root.store.RootStoreCategoryPropertiesFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.business.category.store.StoreCategoryFactory_Package is

   package Category_Package renames Standard.org.allbinary.business.category.Category_Package;
   package CategoryAbstractFactory_Package renames Standard.org.allbinary.business.category.CategoryAbstractFactory_Package;
   package CategoryFactoryInterface_Package renames Standard.org.allbinary.business.category.CategoryFactoryInterface_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package CategoryUtil_Package renames Standard.org.allbinary.business.category.CategoryUtil_Package;
   package CategoryPropertiesFactoryInterface_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
   package RootStoreCategoryPropertiesFactory_Package renames Standard.org.allbinary.business.category.properties.root.store.RootStoreCategoryPropertiesFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type StoreCategoryFactory is tagged;
   type StoreCategoryFactory_Access is access all StoreCategoryFactory'Class;
   type StoreCategoryFactory_Access_Array is array (Natural range <>) of StoreCategoryFactory_Access;
   type StoreCategoryFactory_Access_Array_Access is access all StoreCategoryFactory_Access_Array;

   type StoreCategoryFactory is new CategoryAbstractFactory and CategoryFactoryInterface with record
      logUtil : LogUtil_Access;
      transformInfoInterface : TransformInfoInterface_Access;
   end record;

   procedure Initialize (This : in out StoreCategoryFactory'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return StoreCategoryFactory_Access;
   function getRootInstance (This : in out StoreCategoryFactory) return CategoryInterface_Access;
   procedure getRootInstance (This : in out StoreCategoryFactory);
   function getRootInstance (This : in out StoreCategoryFactory; categoryPath : AbPath_Access) return CategoryInterface_Access;
   procedure getRootInstance (This : in out StoreCategoryFactory; categoryPath : AbPath_Access);
   function getRootInstanceFromNode (This : in out StoreCategoryFactory; node : Node_Access) return CategoryInterface_Access;
   procedure getRootInstanceFromNode (This : in out StoreCategoryFactory; node : Node_Access);

end org.allbinary.business.category.store.StoreCategoryFactory_Package;


