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
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;

package org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package is

   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type StoreEmailInfo is tagged;
   type StoreEmailInfo_Access is access all StoreEmailInfo'Class;
   type StoreEmailInfo_Access_Array is array (Natural range <>) of StoreEmailInfo_Access;
   type StoreEmailInfo_Access_Array_Access is access all StoreEmailInfo_Access_Array;
   type StoreEmailInfo_Access_Array_Access_Array is array (Natural range <>) of StoreEmailInfo_Access_Array_Access;
   type StoreEmailInfo_Access_Array_Access_Array_Access is access all StoreEmailInfo_Access_Array_Access_Array;

   type StoreEmailInfo is new BasicEmailInfo with record
      logUtil : LogUtil_Access;
      storeFrontInterface : StoreFrontInterface_Access;
   end record;

   procedure Initialize (This : in out StoreEmailInfo'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; subject : Unbounded_String; textBody : Unbounded_String);
   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; subject : Unbounded_String; textBody : Unbounded_String) return StoreEmailInfo_Access;
   procedure init (This : in out StoreEmailInfo);

end org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package;


