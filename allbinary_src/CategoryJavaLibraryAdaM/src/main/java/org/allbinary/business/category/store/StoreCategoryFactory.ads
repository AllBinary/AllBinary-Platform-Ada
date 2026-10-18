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
with org.allbinary.business.category.CategoryAbstractFactory_Package; use org.allbinary.business.category.CategoryAbstractFactory_Package;
with org.allbinary.business.category.CategoryFactoryInterface_Package; use org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.business.category.store.StoreCategoryFactory_Package is

   package CategoryAbstractFactory_Package renames Standard.org.allbinary.business.category.CategoryAbstractFactory_Package;
   package CategoryFactoryInterface_Package renames Standard.org.allbinary.business.category.CategoryFactoryInterface_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type StoreCategoryFactory is tagged;
   type StoreCategoryFactory_Access is access all StoreCategoryFactory'Class;
   type StoreCategoryFactory_Access_Array is array (Natural range <>) of StoreCategoryFactory_Access;
   type StoreCategoryFactory_Access_Array_Access is access all StoreCategoryFactory_Access_Array;
   type StoreCategoryFactory_Access_Array_Access_Array is array (Natural range <>) of StoreCategoryFactory_Access_Array_Access;
   type StoreCategoryFactory_Access_Array_Access_Array_Access is access all StoreCategoryFactory_Access_Array_Access_Array;

   type StoreCategoryFactory is new CategoryAbstractFactory and CategoryFactoryInterface with record
      logUtil : LogUtil_Access;
      transformInfoInterface : TransformInfoInterface_Access;
   end record;

   procedure Initialize (This : in out StoreCategoryFactory'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return StoreCategoryFactory_Access;
   function getRootInstance (This : in out StoreCategoryFactory) return CategoryInterface_Access;
   function getRootInstance (This : in out StoreCategoryFactory; categoryPath_Param : access AbPath_Package.AbPath'Class) return CategoryInterface_Access;
   procedure getRootInstance (This : in out StoreCategoryFactory; categoryPath_Param : access AbPath_Package.AbPath'Class);
   function getRootInstanceFromNode (This : in out StoreCategoryFactory; node_Param : access Node_Package.Node'Class) return CategoryInterface_Access;
   procedure getRootInstanceFromNode (This : in out StoreCategoryFactory; node_Param : access Node_Package.Node'Class);

end org.allbinary.business.category.store.StoreCategoryFactory_Package;


