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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.data.tables.category.CategoryEntityFactory_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type CategoryEntityFactory is tagged;
   type CategoryEntityFactory_Access is access all CategoryEntityFactory'Class;
   type CategoryEntityFactory_Access_Array is array (Natural range <>) of CategoryEntityFactory_Access;
   type CategoryEntityFactory_Access_Array_Access is access all CategoryEntityFactory_Access_Array;

   type CategoryEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : CategoryEntityFactory_Access;

   procedure Initialize (This : in out CategoryEntityFactory'Class);
   function Create return CategoryEntityFactory_Access;
   function getInstance return CategoryEntityFactory_Access;
   procedure getInstance;
   function getCategoryEntityInstance (This : in out CategoryEntityFactory) return CategoryEntity_Access;
   procedure getCategoryEntityInstance (This : in out CategoryEntityFactory);

end org.allbinary.data.tables.category.CategoryEntityFactory_Package;


