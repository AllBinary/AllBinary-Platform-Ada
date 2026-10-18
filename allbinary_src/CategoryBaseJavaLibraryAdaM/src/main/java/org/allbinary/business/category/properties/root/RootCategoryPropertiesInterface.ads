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
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;

package org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package is

   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;

   type RootCategoryPropertiesInterface is interface;
   type RootCategoryPropertiesInterface_Access is access all RootCategoryPropertiesInterface'Class;
   type RootCategoryPropertiesInterface_Access_Array is array (Natural range <>) of RootCategoryPropertiesInterface_Access;
   type RootCategoryPropertiesInterface_Access_Array_Access is access all RootCategoryPropertiesInterface_Access_Array;
   type RootCategoryPropertiesInterface_Access_Array_Access_Array is array (Natural range <>) of RootCategoryPropertiesInterface_Access_Array_Access;
   type RootCategoryPropertiesInterface_Access_Array_Access_Array_Access is access all RootCategoryPropertiesInterface_Access_Array_Access_Array;
   procedure setRootFilePath (This : in out RootCategoryPropertiesInterface; value_Param : access AbPath_Package.AbPath'Class) is abstract;
   function getRootFilePath (This : in out RootCategoryPropertiesInterface) return AbPath_Access is abstract;

end org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package;


