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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.init.InitSql_Package; use org.allbinary.business.init.InitSql_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.business.context.modules.storefronts.BasicStoreFront_Package; use org.allbinary.business.context.modules.storefronts.BasicStoreFront_Package;
with org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package; use org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package;

package org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package InitSql_Package renames Standard.org.allbinary.business.init.InitSql_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type BasicStoreFrontsEntity is tagged;
   type BasicStoreFrontsEntity_Access is access all BasicStoreFrontsEntity'Class;
   type BasicStoreFrontsEntity_Access_Array is array (Natural range <>) of BasicStoreFrontsEntity_Access;
   type BasicStoreFrontsEntity_Access_Array_Access is access all BasicStoreFrontsEntity_Access_Array;

   type BasicStoreFrontsEntity is new InitSql with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out BasicStoreFrontsEntity'Class);
   function Create return BasicStoreFrontsEntity_Access;
   function getStoreFrontInterface (This : in out BasicStoreFrontsEntity; name : Unbounded_String) return BasicStoreFrontInterface_Access;
   procedure getStoreFrontInterface (This : in out BasicStoreFrontsEntity; name : Unbounded_String);

end org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package;


