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
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package; use org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package;
with org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package; use org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;
with org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package; use org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlTableUtil_Package; use org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with admin.taghelpers.BasicTable_Package; use admin.taghelpers.BasicTable_Package;

package admin.taghelpers.ShippingAddressHelper_Package is

   package Portion_Package renames org.allbinary.business.installer.Portion_Package;
   package UserData_Package renames org.allbinary.business.user.UserData_Package;
   package StreetAddress_Package renames org.allbinary.business.user.address.StreetAddress_Package;
   package BillingAddressesEntityFactory_Package renames org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package;
   package ShippingAddressesEntity_Package renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;
   package ShippingAddressesEntityFactory_Package renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package;
   package WeblisketSession_Package renames org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package WeblisketSessionData_Package renames org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlTableUtil_Package renames org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;

   type ShippingAddressHelper is tagged;
   type ShippingAddressHelper_Access is access all ShippingAddressHelper'Class;
   type ShippingAddressHelper_Access_Array is array (Natural range <>) of ShippingAddressHelper_Access;
   type ShippingAddressHelper_Access_Array_Access is access all ShippingAddressHelper_Access_Array;

   type ShippingAddressHelper is new BasicTable with record
      logUtil : LogUtil_Access;
      stringUtil : StringUtil_Access;
      weblisketSession : WeblisketSession_Access;
      request : HttpServletRequest_Access;
      userName : Unbounded_String;
      streetAddress : StreetAddress_Access;
      portion : Portion_Access;
   end record;

   procedure Initialize (This : in out ShippingAddressHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return ShippingAddressHelper_Access;
   procedure getAddressForm (This : in out ShippingAddressHelper);
   function drop (This : in out ShippingAddressHelper) return Unbounded_String;
   procedure drop (This : in out ShippingAddressHelper);
   function create (This : in out ShippingAddressHelper) return Unbounded_String;
   procedure create (This : in out ShippingAddressHelper);
   function restore (This : in out ShippingAddressHelper) return Unbounded_String;
   procedure restore (This : in out ShippingAddressHelper);
   function backup (This : in out ShippingAddressHelper) return Unbounded_String;
   procedure backup (This : in out ShippingAddressHelper);
   function insert (This : in out ShippingAddressHelper) return Unbounded_String;
   procedure insert (This : in out ShippingAddressHelper);
   function update (This : in out ShippingAddressHelper) return Unbounded_String;
   procedure update (This : in out ShippingAddressHelper);
   function setToBillingAddress (This : in out ShippingAddressHelper) return Unbounded_String;
   procedure setToBillingAddress (This : in out ShippingAddressHelper);
   function delete (This : in out ShippingAddressHelper) return Unbounded_String;
   procedure delete (This : in out ShippingAddressHelper);
   function set (This : in out ShippingAddressHelper) return Unbounded_String;
   procedure set (This : in out ShippingAddressHelper);

end admin.taghelpers.ShippingAddressHelper_Package;


