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
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package; use org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package;
with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package; use org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlTableUtil_Package; use org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with admin.taghelpers.BasicTable_Package; use admin.taghelpers.BasicTable_Package;

package admin.taghelpers.PaymentGatewayHelper_Package is

   package Portion_Package renames org.allbinary.business.installer.Portion_Package;
   package PaymentGatewayInterface_Package renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
   package PaymentGatewayInterfaceFactory_Package renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package;
   package BasicPaymentTypeUtil_Package renames org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package;
   package PaymentGatewayEntityFactory_Package renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package;
   package WeblisketSession_Package renames org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlTableUtil_Package renames org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;

   type PaymentGatewayHelper is tagged;
   type PaymentGatewayHelper_Access is access all PaymentGatewayHelper'Class;
   type PaymentGatewayHelper_Access_Array is array (Natural range <>) of PaymentGatewayHelper_Access;
   type PaymentGatewayHelper_Access_Array_Access is access all PaymentGatewayHelper_Access_Array;

   type PaymentGatewayHelper is new BasicTable with record
      logUtil : LogUtil_Access;
      weblisketSession : WeblisketSession_Access;
      httpServletRequest : HttpServletRequest_Access;
      portion : Portion_Access;
   end record;

   procedure Initialize (This : in out PaymentGatewayHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return PaymentGatewayHelper_Access;
   function insert (This : in out PaymentGatewayHelper) return Unbounded_String;
   procedure insert (This : in out PaymentGatewayHelper);
   function update (This : in out PaymentGatewayHelper) return Unbounded_String;
   procedure update (This : in out PaymentGatewayHelper);
   function delete (This : in out PaymentGatewayHelper) return Unbounded_String;
   procedure delete (This : in out PaymentGatewayHelper);
   function drop (This : in out PaymentGatewayHelper) return Unbounded_String;
   procedure drop (This : in out PaymentGatewayHelper);
   function create (This : in out PaymentGatewayHelper) return Unbounded_String;
   procedure create (This : in out PaymentGatewayHelper);
   function restore (This : in out PaymentGatewayHelper) return Unbounded_String;
   procedure restore (This : in out PaymentGatewayHelper);
   function backup (This : in out PaymentGatewayHelper) return Unbounded_String;
   procedure backup (This : in out PaymentGatewayHelper);

end admin.taghelpers.PaymentGatewayHelper_Package;


