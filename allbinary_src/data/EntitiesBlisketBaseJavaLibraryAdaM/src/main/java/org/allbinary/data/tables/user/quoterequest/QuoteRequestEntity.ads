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

limited with org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package;
package org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References is
   type QuoteRequestEntity_Access is access all org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package.QuoteRequestEntity'Class;
   type QuoteRequestEntity_Access_Array is array (Natural range <>) of QuoteRequestEntity_Access;
   type QuoteRequestEntity_Access_Array_Access is access all QuoteRequestEntity_Access_Array;
   type QuoteRequestEntity_Access_Array_Access_Array is array (Natural range <>) of QuoteRequestEntity_Access_Array_Access;
   type QuoteRequestEntity_Access_Array_Access_Array_Access is access all QuoteRequestEntity_Access_Array_Access_Array;
end org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References;

with org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References;
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
limited with org.allbinary.business.user.quoterequest.QuoteRequest_Package;
with org.allbinary.business.user.quoterequest.QuoteRequest_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityInterface_Package; use org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityInterface_Package;

package org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package QuoteRequest_Package renames Standard.org.allbinary.business.user.quoterequest.QuoteRequest_Package;
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
   subtype QuoteRequest_Access is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access;
   use type QuoteRequest_Access;
   subtype QuoteRequest_Access_Array is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array;
   use type QuoteRequest_Access_Array;
   subtype QuoteRequest_Access_Array_Access is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array_Access;
   use type QuoteRequest_Access_Array_Access;
   subtype QuoteRequest_Access_Array_Access_Array is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array_Access_Array;
   use type QuoteRequest_Access_Array_Access_Array;
   subtype QuoteRequest_Access_Array_Access_Array_Access is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array_Access_Array_Access;
   use type QuoteRequest_Access_Array_Access_Array_Access;
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


   subtype QuoteRequestEntity_Access is org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References.QuoteRequestEntity_Access;
   function "=" (Left, Right : QuoteRequestEntity_Access) return Boolean renames org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References."=";
   subtype QuoteRequestEntity_Access_Array is org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References.QuoteRequestEntity_Access_Array;
   function "=" (Left, Right : QuoteRequestEntity_Access_Array) return Boolean renames org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References."=";
   subtype QuoteRequestEntity_Access_Array_Access is org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References.QuoteRequestEntity_Access_Array_Access;
   function "=" (Left, Right : QuoteRequestEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References."=";
   subtype QuoteRequestEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References.QuoteRequestEntity_Access_Array_Access_Array;
   function "=" (Left, Right : QuoteRequestEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References."=";
   subtype QuoteRequestEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References.QuoteRequestEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : QuoteRequestEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References."=";

   type QuoteRequestEntity is new AbSqlBean and QuoteRequestEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out QuoteRequestEntity'Class);
   function Create return QuoteRequestEntity_Access;
   procedure insert (This : in out QuoteRequestEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function get (This : in out QuoteRequestEntity; userName : Unbounded_String; id : Integer) return QuoteRequest_Access;
   procedure get (This : in out QuoteRequestEntity; userName : Unbounded_String; id : Integer);
   function getIds (This : in out QuoteRequestEntity; userName : Unbounded_String) return BasicArrayList_Access;
   procedure getIds (This : in out QuoteRequestEntity; userName : Unbounded_String);
   procedure deleteWhere (This : in out QuoteRequestEntity; key : Unbounded_String; value : Unbounded_String);
   function createTableStatement (This : in out QuoteRequestEntity) return Unbounded_String;
   function createTable (This : in out QuoteRequestEntity) return Unbounded_String;
   function dropTable (This : in out QuoteRequestEntity) return Unbounded_String;
   procedure update (This : in out QuoteRequestEntity; userName : Unbounded_String; updatedValues_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package;


