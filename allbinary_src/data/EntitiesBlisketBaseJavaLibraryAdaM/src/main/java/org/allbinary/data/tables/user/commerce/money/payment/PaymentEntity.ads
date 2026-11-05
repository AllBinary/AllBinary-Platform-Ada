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

limited with org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package;
package org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References is
   type PaymentEntity_Access is access all org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package.PaymentEntity'Class;
   type PaymentEntity_Access_Array is array (Natural range <>) of PaymentEntity_Access;
   type PaymentEntity_Access_Array_Access is access all PaymentEntity_Access_Array;
   type PaymentEntity_Access_Array_Access_Array is array (Natural range <>) of PaymentEntity_Access_Array_Access;
   type PaymentEntity_Access_Array_Access_Array_Access is access all PaymentEntity_Access_Array_Access_Array;
end org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References;

with org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package; use org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package PaymentInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;
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
   subtype PaymentInterface_Access is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access;
   use type PaymentInterface_Access;
   subtype PaymentInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array;
   use type PaymentInterface_Access_Array;
   subtype PaymentInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array_Access;
   use type PaymentInterface_Access_Array_Access;
   subtype PaymentInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array_Access_Array;
   use type PaymentInterface_Access_Array_Access_Array;
   subtype PaymentInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array_Access_Array_Access;
   use type PaymentInterface_Access_Array_Access_Array_Access;
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


   subtype PaymentEntity_Access is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References.PaymentEntity_Access;
   function "=" (Left, Right : PaymentEntity_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References."=";
   subtype PaymentEntity_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References.PaymentEntity_Access_Array;
   function "=" (Left, Right : PaymentEntity_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References."=";
   subtype PaymentEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References.PaymentEntity_Access_Array_Access;
   function "=" (Left, Right : PaymentEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References."=";
   subtype PaymentEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References.PaymentEntity_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References."=";
   subtype PaymentEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References.PaymentEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package_References."=";

   type PaymentEntity is new AbSqlBean and PaymentEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out PaymentEntity'Class);
   function Create return PaymentEntity_Access;
   function getLastId (This : in out PaymentEntity; userName : Unbounded_String) return Unbounded_String;
   procedure getLastId (This : in out PaymentEntity; userName : Unbounded_String);
   procedure setDefault (This : in out PaymentEntity; userName : Unbounded_String; index : Integer);
   function get (This : in out PaymentEntity; userName : Unbounded_String) return BasicArrayList_Access;
   procedure get (This : in out PaymentEntity; userName : Unbounded_String);
   function getDefault (This : in out PaymentEntity; userName : Unbounded_String) return PaymentInterface_Access;
   procedure getDefault (This : in out PaymentEntity; userName : Unbounded_String);
   procedure remove (This : in out PaymentEntity; userName : Unbounded_String; index : Integer);
   procedure add (This : in out PaymentEntity; userName : Unbounded_String; paymentInterface_Param : access PaymentInterface_Package.PaymentInterface'Class);
   function createTableStatement (This : in out PaymentEntity) return Unbounded_String;
   function createTable (This : in out PaymentEntity) return Unbounded_String;
   function drop (This : in out PaymentEntity) return Unbounded_String;
   procedure insert (This : in out PaymentEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function dropTable (This : in out PaymentEntity) return Unbounded_String;

end org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package;


