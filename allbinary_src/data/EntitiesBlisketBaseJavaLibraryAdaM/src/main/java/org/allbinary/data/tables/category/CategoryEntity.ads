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

limited with org.allbinary.data.tables.category.CategoryEntity_Package;
package org.allbinary.data.tables.category.CategoryEntity_Package_References is
   type CategoryEntity_Access is access all org.allbinary.data.tables.category.CategoryEntity_Package.CategoryEntity'Class;
   type CategoryEntity_Access_Array is array (Natural range <>) of CategoryEntity_Access;
   type CategoryEntity_Access_Array_Access is access all CategoryEntity_Access_Array;
   type CategoryEntity_Access_Array_Access_Array is array (Natural range <>) of CategoryEntity_Access_Array_Access;
   type CategoryEntity_Access_Array_Access_Array_Access is access all CategoryEntity_Access_Array_Access_Array;
end org.allbinary.data.tables.category.CategoryEntity_Package_References;

with org.allbinary.data.tables.category.CategoryEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.category.Category_Package;
with org.allbinary.business.category.Category_Package_References;
limited with org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.business.category.CategoryFactoryInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.category.CategoryEntityInterface_Package; use org.allbinary.data.tables.category.CategoryEntityInterface_Package;

package org.allbinary.data.tables.category.CategoryEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Category_Package renames Standard.org.allbinary.business.category.Category_Package;
   package CategoryFactoryInterface_Package renames Standard.org.allbinary.business.category.CategoryFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype Category_Access is org.allbinary.business.category.Category_Package_References.Category_Access;
   use type Category_Access;
   subtype Category_Access_Array is org.allbinary.business.category.Category_Package_References.Category_Access_Array;
   use type Category_Access_Array;
   subtype Category_Access_Array_Access is org.allbinary.business.category.Category_Package_References.Category_Access_Array_Access;
   use type Category_Access_Array_Access;
   subtype Category_Access_Array_Access_Array is org.allbinary.business.category.Category_Package_References.Category_Access_Array_Access_Array;
   use type Category_Access_Array_Access_Array;
   subtype Category_Access_Array_Access_Array_Access is org.allbinary.business.category.Category_Package_References.Category_Access_Array_Access_Array_Access;
   use type Category_Access_Array_Access_Array_Access;
   subtype CategoryFactoryInterface_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access;
   use type CategoryFactoryInterface_Access;
   subtype CategoryFactoryInterface_Access_Array is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array;
   use type CategoryFactoryInterface_Access_Array;
   subtype CategoryFactoryInterface_Access_Array_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access;
   use type CategoryFactoryInterface_Access_Array_Access;
   subtype CategoryFactoryInterface_Access_Array_Access_Array is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access_Array;
   use type CategoryFactoryInterface_Access_Array_Access_Array;
   subtype CategoryFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access_Array_Access;
   use type CategoryFactoryInterface_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype CategoryEntity_Access is org.allbinary.data.tables.category.CategoryEntity_Package_References.CategoryEntity_Access;
   function "=" (Left, Right : CategoryEntity_Access) return Boolean renames org.allbinary.data.tables.category.CategoryEntity_Package_References."=";
   subtype CategoryEntity_Access_Array is org.allbinary.data.tables.category.CategoryEntity_Package_References.CategoryEntity_Access_Array;
   function "=" (Left, Right : CategoryEntity_Access_Array) return Boolean renames org.allbinary.data.tables.category.CategoryEntity_Package_References."=";
   subtype CategoryEntity_Access_Array_Access is org.allbinary.data.tables.category.CategoryEntity_Package_References.CategoryEntity_Access_Array_Access;
   function "=" (Left, Right : CategoryEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.category.CategoryEntity_Package_References."=";
   subtype CategoryEntity_Access_Array_Access_Array is org.allbinary.data.tables.category.CategoryEntity_Package_References.CategoryEntity_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.category.CategoryEntity_Package_References."=";
   subtype CategoryEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.category.CategoryEntity_Package_References.CategoryEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.category.CategoryEntity_Package_References."=";

   type CategoryEntity is new AbSqlBean and CategoryEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out CategoryEntity'Class; categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class);
   function Create (categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) return CategoryEntity_Access;
   procedure Initialize (This : in out CategoryEntity'Class);
   function Create return CategoryEntity_Access;
   procedure insert (This : in out CategoryEntity; category_Param : access Category_Package.Category'Class);
   procedure delete (This : in out CategoryEntity; value : Unbounded_String);
   function createTableStatement (This : in out CategoryEntity) return Unbounded_String;
   function createTable (This : in out CategoryEntity) return Unbounded_String;
   procedure update (This : in out CategoryEntity; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function dropTable (This : in out CategoryEntity) return Unbounded_String;
   procedure insert (This : in out CategoryEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.data.tables.category.CategoryEntity_Package;


