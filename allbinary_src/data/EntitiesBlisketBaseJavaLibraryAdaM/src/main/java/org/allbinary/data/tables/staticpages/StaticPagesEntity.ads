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
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.init.db.StaticPagesDbInitInfo_Package; use org.allbinary.business.init.db.StaticPagesDbInitInfo_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.control.search.SearchData_Package; use org.allbinary.logic.control.search.SearchData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.data.tables.staticpages.StaticPagesEntityInterface_Package; use org.allbinary.data.tables.staticpages.StaticPagesEntityInterface_Package;

package org.allbinary.data.tables.staticpages.StaticPagesEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StaticPagesDbInitInfo_Package renames Standard.org.allbinary.business.init.db.StaticPagesDbInitInfo_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package SearchData_Package renames Standard.org.allbinary.logic.control.search.SearchData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type StaticPagesEntity is tagged;
   type StaticPagesEntity_Access is access all StaticPagesEntity'Class;
   type StaticPagesEntity_Access_Array is array (Natural range <>) of StaticPagesEntity_Access;
   type StaticPagesEntity_Access_Array_Access is access all StaticPagesEntity_Access_Array;

   type StaticPagesEntity is new AbSqlBean and StaticPagesEntityInterface with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      TABLENAME : Unbounded_String;
   end record;

   procedure Initialize (This : in out StaticPagesEntity'Class);
   function Create return StaticPagesEntity_Access;
   procedure insert (This : in out StaticPagesEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getFile (This : in out StaticPagesEntity; store : Unbounded_String; keywords : Unbounded_String) return Unbounded_String;
   procedure getFile (This : in out StaticPagesEntity; store : Unbounded_String; keywords : Unbounded_String);
   procedure delete (This : in out StaticPagesEntity; keywords : Unbounded_String);
   function dropTable (This : in out StaticPagesEntity) return Unbounded_String;
   procedure update (This : in out StaticPagesEntity; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function createTableStatement (This : in out StaticPagesEntity) return Unbounded_String;
   function createTable (This : in out StaticPagesEntity) return Unbounded_String;

end org.allbinary.data.tables.staticpages.StaticPagesEntity_Package;


