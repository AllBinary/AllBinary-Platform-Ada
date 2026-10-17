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
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.business.quoterequest.QuoteRequestData_Package; use org.allbinary.business.quoterequest.QuoteRequestData_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.quoterequest.QuoteRequest_Package; use org.allbinary.business.user.quoterequest.QuoteRequest_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityInterface_Package; use org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityInterface_Package;

package org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package QuoteRequestData_Package renames Standard.org.allbinary.business.quoterequest.QuoteRequestData_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package QuoteRequest_Package renames Standard.org.allbinary.business.user.quoterequest.QuoteRequest_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type QuoteRequestEntity is tagged;
   type QuoteRequestEntity_Access is access all QuoteRequestEntity'Class;
   type QuoteRequestEntity_Access_Array is array (Natural range <>) of QuoteRequestEntity_Access;
   type QuoteRequestEntity_Access_Array_Access is access all QuoteRequestEntity_Access_Array;

   type QuoteRequestEntity is new AbSqlBean and QuoteRequestEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out QuoteRequestEntity'Class);
   function Create return QuoteRequestEntity_Access;
   procedure insert (This : in out QuoteRequestEntity; values_Param : access BasicArrayList'Class);
   function get (This : in out QuoteRequestEntity; userName : Unbounded_String; id : Integer) return QuoteRequest_Access;
   procedure get (This : in out QuoteRequestEntity; userName : Unbounded_String; id : Integer);
   function getIds (This : in out QuoteRequestEntity; userName : Unbounded_String) return BasicArrayList_Access;
   procedure getIds (This : in out QuoteRequestEntity; userName : Unbounded_String);
   procedure deleteWhere (This : in out QuoteRequestEntity; key : Unbounded_String; value : Unbounded_String);
   function createTableStatement (This : in out QuoteRequestEntity) return Unbounded_String;
   function createTable (This : in out QuoteRequestEntity) return Unbounded_String;
   function dropTable (This : in out QuoteRequestEntity) return Unbounded_String;
   procedure update (This : in out QuoteRequestEntity; userName : Unbounded_String; updatedValues_Param : access HashMap'Class);

end org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package;


