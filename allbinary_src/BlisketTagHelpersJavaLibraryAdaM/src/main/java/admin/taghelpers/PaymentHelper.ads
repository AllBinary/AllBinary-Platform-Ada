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
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.installer.Portion_Package; use org.allbinary.business.installer.Portion_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package; use org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package; use org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;
with org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package; use org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package;
with org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package; use org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlTableUtil_Package; use org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with admin.taghelpers.Table_Package; use admin.taghelpers.Table_Package;

package admin.taghelpers.PaymentHelper_Package is

   package Portion_Package renames Standard.org.allbinary.business.installer.Portion_Package;
   package PaymentFactory_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package;
   package PaymentInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;
   package PaymentEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package;
   package PaymentEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlTableUtil_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type PaymentHelper is tagged;
   type PaymentHelper_Access is access all PaymentHelper'Class;
   type PaymentHelper_Access_Array is array (Natural range <>) of PaymentHelper_Access;
   type PaymentHelper_Access_Array_Access is access all PaymentHelper_Access_Array;

   type PaymentHelper is new Table with record
      logUtil : LogUtil_Access;
      weblisketSession : WeblisketSession_Access;
      request : HttpServletRequest_Access;
      value : Unbounded_String;
      portion : Portion_Access;
   end record;

   procedure Initialize (This : in out PaymentHelper'Class; hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class);
   function Create (hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return PaymentHelper_Access;
   procedure getFormData (This : in out PaymentHelper);
   function insert (This : in out PaymentHelper) return Unbounded_String;
   function select_Id (This : in out PaymentHelper) return Unbounded_String;
   function delete (This : in out PaymentHelper) return Unbounded_String;
   function drop (This : in out PaymentHelper) return Unbounded_String;
   function create (This : in out PaymentHelper) return Unbounded_String;
   function restore (This : in out PaymentHelper) return Unbounded_String;
   function backup (This : in out PaymentHelper) return Unbounded_String;
   function update (This : in out PaymentHelper) return Unbounded_String;

end admin.taghelpers.PaymentHelper_Package;


