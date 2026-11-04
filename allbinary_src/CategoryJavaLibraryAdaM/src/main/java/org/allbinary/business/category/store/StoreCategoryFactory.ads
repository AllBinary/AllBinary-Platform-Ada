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

limited with org.allbinary.business.category.store.StoreCategoryFactory_Package;
package org.allbinary.business.category.store.StoreCategoryFactory_Package_References is
   type StoreCategoryFactory_Access is access all org.allbinary.business.category.store.StoreCategoryFactory_Package.StoreCategoryFactory'Class;
   type StoreCategoryFactory_Access_Array is array (Natural range <>) of StoreCategoryFactory_Access;
   type StoreCategoryFactory_Access_Array_Access is access all StoreCategoryFactory_Access_Array;
   type StoreCategoryFactory_Access_Array_Access_Array is array (Natural range <>) of StoreCategoryFactory_Access_Array_Access;
   type StoreCategoryFactory_Access_Array_Access_Array_Access is access all StoreCategoryFactory_Access_Array_Access_Array;
end org.allbinary.business.category.store.StoreCategoryFactory_Package_References;

with org.allbinary.business.category.store.StoreCategoryFactory_Package_References;
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
limited with org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.business.category.store.StoreCategoryFactory_Package is

   package CategoryAbstractFactory_Package renames Standard.org.allbinary.business.category.CategoryAbstractFactory_Package;
   package CategoryFactoryInterface_Package renames Standard.org.allbinary.business.category.CategoryFactoryInterface_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
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


   subtype StoreCategoryFactory_Access is org.allbinary.business.category.store.StoreCategoryFactory_Package_References.StoreCategoryFactory_Access;
   function "=" (Left, Right : StoreCategoryFactory_Access) return Boolean renames org.allbinary.business.category.store.StoreCategoryFactory_Package_References."=";
   subtype StoreCategoryFactory_Access_Array is org.allbinary.business.category.store.StoreCategoryFactory_Package_References.StoreCategoryFactory_Access_Array;
   function "=" (Left, Right : StoreCategoryFactory_Access_Array) return Boolean renames org.allbinary.business.category.store.StoreCategoryFactory_Package_References."=";
   subtype StoreCategoryFactory_Access_Array_Access is org.allbinary.business.category.store.StoreCategoryFactory_Package_References.StoreCategoryFactory_Access_Array_Access;
   function "=" (Left, Right : StoreCategoryFactory_Access_Array_Access) return Boolean renames org.allbinary.business.category.store.StoreCategoryFactory_Package_References."=";
   subtype StoreCategoryFactory_Access_Array_Access_Array is org.allbinary.business.category.store.StoreCategoryFactory_Package_References.StoreCategoryFactory_Access_Array_Access_Array;
   function "=" (Left, Right : StoreCategoryFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.store.StoreCategoryFactory_Package_References."=";
   subtype StoreCategoryFactory_Access_Array_Access_Array_Access is org.allbinary.business.category.store.StoreCategoryFactory_Package_References.StoreCategoryFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreCategoryFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.store.StoreCategoryFactory_Package_References."=";

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


