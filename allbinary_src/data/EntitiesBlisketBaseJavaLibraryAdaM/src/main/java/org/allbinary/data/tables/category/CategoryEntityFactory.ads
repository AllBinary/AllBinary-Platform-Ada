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

limited with org.allbinary.data.tables.category.CategoryEntityFactory_Package;
package org.allbinary.data.tables.category.CategoryEntityFactory_Package_References is
   type CategoryEntityFactory_Access is access all org.allbinary.data.tables.category.CategoryEntityFactory_Package.CategoryEntityFactory'Class;
   type CategoryEntityFactory_Access_Array is array (Natural range <>) of CategoryEntityFactory_Access;
   type CategoryEntityFactory_Access_Array_Access is access all CategoryEntityFactory_Access_Array;
   type CategoryEntityFactory_Access_Array_Access_Array is array (Natural range <>) of CategoryEntityFactory_Access_Array_Access;
   type CategoryEntityFactory_Access_Array_Access_Array_Access is access all CategoryEntityFactory_Access_Array_Access_Array;
end org.allbinary.data.tables.category.CategoryEntityFactory_Package_References;

with org.allbinary.data.tables.category.CategoryEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.data.tables.category.CategoryEntity_Package;
with org.allbinary.data.tables.category.CategoryEntity_Package_References;

package org.allbinary.data.tables.category.CategoryEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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
   subtype CategoryEntity_Access is org.allbinary.data.tables.category.CategoryEntity_Package_References.CategoryEntity_Access;
   use type CategoryEntity_Access;
   subtype CategoryEntity_Access_Array is org.allbinary.data.tables.category.CategoryEntity_Package_References.CategoryEntity_Access_Array;
   use type CategoryEntity_Access_Array;
   subtype CategoryEntity_Access_Array_Access is org.allbinary.data.tables.category.CategoryEntity_Package_References.CategoryEntity_Access_Array_Access;
   use type CategoryEntity_Access_Array_Access;
   subtype CategoryEntity_Access_Array_Access_Array is org.allbinary.data.tables.category.CategoryEntity_Package_References.CategoryEntity_Access_Array_Access_Array;
   use type CategoryEntity_Access_Array_Access_Array;
   subtype CategoryEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.category.CategoryEntity_Package_References.CategoryEntity_Access_Array_Access_Array_Access;
   use type CategoryEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CategoryEntityFactory_Access is org.allbinary.data.tables.category.CategoryEntityFactory_Package_References.CategoryEntityFactory_Access;
   function "=" (Left, Right : CategoryEntityFactory_Access) return Boolean renames org.allbinary.data.tables.category.CategoryEntityFactory_Package_References."=";
   subtype CategoryEntityFactory_Access_Array is org.allbinary.data.tables.category.CategoryEntityFactory_Package_References.CategoryEntityFactory_Access_Array;
   function "=" (Left, Right : CategoryEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.category.CategoryEntityFactory_Package_References."=";
   subtype CategoryEntityFactory_Access_Array_Access is org.allbinary.data.tables.category.CategoryEntityFactory_Package_References.CategoryEntityFactory_Access_Array_Access;
   function "=" (Left, Right : CategoryEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.category.CategoryEntityFactory_Package_References."=";
   subtype CategoryEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.category.CategoryEntityFactory_Package_References.CategoryEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.category.CategoryEntityFactory_Package_References."=";
   subtype CategoryEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.category.CategoryEntityFactory_Package_References.CategoryEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.category.CategoryEntityFactory_Package_References."=";

   type CategoryEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : CategoryEntityFactory_Access;

   procedure Initialize (This : in out CategoryEntityFactory'Class);
   function Create return CategoryEntityFactory_Access;
   function getInstance return CategoryEntityFactory_Access;
   function getCategoryEntityInstance (This : in out CategoryEntityFactory) return CategoryEntity_Access;

end org.allbinary.data.tables.category.CategoryEntityFactory_Package;


