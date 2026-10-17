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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.business.category.properties.CategoryProperties_Package; use org.allbinary.business.category.properties.CategoryProperties_Package;

package org.allbinary.business.category.properties.CategoryPropertiesFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type CategoryPropertiesFactory is tagged;
   type CategoryPropertiesFactory_Access is access all CategoryPropertiesFactory'Class;
   type CategoryPropertiesFactory_Access_Array is array (Natural range <>) of CategoryPropertiesFactory_Access;
   type CategoryPropertiesFactory_Access_Array_Access is access all CategoryPropertiesFactory_Access_Array;

   type CategoryPropertiesFactory is new CategoryPropertiesFactoryInterface with record
      logUtil : LogUtil_Access;
      categoryPropertiesInterface : CategoryPropertiesInterface_Access;
   end record;

   procedure Initialize (This : in out CategoryPropertiesFactory'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return CategoryPropertiesFactory_Access;
   function getInstance (This : in out CategoryPropertiesFactory) return CategoryPropertiesInterface_Access;

end org.allbinary.business.category.properties.CategoryPropertiesFactory_Package;


