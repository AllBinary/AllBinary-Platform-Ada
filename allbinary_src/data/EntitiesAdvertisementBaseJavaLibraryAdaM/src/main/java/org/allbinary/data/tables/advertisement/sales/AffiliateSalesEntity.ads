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
with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.business.user.group.GroupData_Package; use org.allbinary.business.user.group.GroupData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package; use org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package;

package org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package is

   package DynamicObjectData_Package renames org.allbinary.business.DynamicObjectData_Package;
   package StoreFrontData_Package renames org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames org.allbinary.business.init.db.UserDbInitInfo_Package;
   package GroupData_Package renames org.allbinary.business.user.group.GroupData_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;

   type AffiliateSalesEntity is tagged;
   type AffiliateSalesEntity_Access is access all AffiliateSalesEntity'Class;
   type AffiliateSalesEntity_Access_Array is array (Natural range <>) of AffiliateSalesEntity_Access;
   type AffiliateSalesEntity_Access_Array_Access is access all AffiliateSalesEntity_Access_Array;

   type AffiliateSalesEntity is new AbSqlBean and AffiliateSalesEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out AffiliateSalesEntity'Class);
   function Create return AffiliateSalesEntity_Access;
   procedure delete (This : in out AffiliateSalesEntity; value : Unbounded_String);
   function createTableStatement (This : in out AffiliateSalesEntity) return Unbounded_String;
   procedure createTableStatement (This : in out AffiliateSalesEntity);
   function createTable (This : in out AffiliateSalesEntity) return Unbounded_String;
   procedure createTable (This : in out AffiliateSalesEntity);
   procedure update (This : in out AffiliateSalesEntity; updatedValues : HashMap_Access);
   function dropTable (This : in out AffiliateSalesEntity) return Unbounded_String;
   procedure dropTable (This : in out AffiliateSalesEntity);

end org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package;


