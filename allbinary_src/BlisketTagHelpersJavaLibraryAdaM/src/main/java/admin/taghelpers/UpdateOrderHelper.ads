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
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.address.BillingAddressData_Package; use org.allbinary.business.user.address.BillingAddressData_Package;
with org.allbinary.business.user.address.ShippingAddressData_Package; use org.allbinary.business.user.address.ShippingAddressData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentData_Package; use org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
with org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.UpdateOrderHelper_Package is

   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package BillingAddressData_Package renames Standard.org.allbinary.business.user.address.BillingAddressData_Package;
   package ShippingAddressData_Package renames Standard.org.allbinary.business.user.address.ShippingAddressData_Package;
   package OrderData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
   package OrderHistoryData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
   package PaymentData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
   package ShippingMethodData_Package renames Standard.org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
   package OrderHistoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type UpdateOrderHelper is tagged;
   type UpdateOrderHelper_Access is access all UpdateOrderHelper'Class;
   type UpdateOrderHelper_Access_Array is array (Natural range <>) of UpdateOrderHelper_Access;
   type UpdateOrderHelper_Access_Array_Access is access all UpdateOrderHelper_Access_Array;

   type UpdateOrderHelper is new TagHelper with record
      logUtil : LogUtil_Access;
      request : HttpServletRequest_Access;
      entryId : Unbounded_String;
      orderId : Unbounded_String;
      userName : Unbounded_String;
      storeName : Unbounded_String;
      shipDate : Unbounded_String;
      orderDate : Unbounded_String;
      transDate : Unbounded_String;
      cancelDate : Unbounded_String;
      status : Unbounded_String;
      paymentMethod : Unbounded_String;
      name : Unbounded_String;
      type_Id : Unbounded_String;
      expiration : Unbounded_String;
      number : Unbounded_String;
      encryption : Unbounded_String;
      billingName : Unbounded_String;
      billingStreet : Unbounded_String;
      billingCity : Unbounded_String;
      billingState : Unbounded_String;
      billingCode : Unbounded_String;
      billingCountry : Unbounded_String;
      shippingName : Unbounded_String;
      shippingStreet : Unbounded_String;
      shippingCity : Unbounded_String;
      shippingState : Unbounded_String;
      shippingCode : Unbounded_String;
      shippingCountry : Unbounded_String;
      shippingMethodName : Unbounded_String;
      subTotal : Unbounded_String;
      shippingCost : Unbounded_String;
      tax : Unbounded_String;
      total : Unbounded_String;
      special : Unbounded_String;
      userComment : Unbounded_String;
      userCancelComment : Unbounded_String;
      storeComment : Unbounded_String;
      storeCancelComment : Unbounded_String;
   end record;

   procedure Initialize (This : in out UpdateOrderHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return UpdateOrderHelper_Access;
   procedure getFormData (This : in out UpdateOrderHelper);
   function update (This : in out UpdateOrderHelper) return Unbounded_String;

end admin.taghelpers.UpdateOrderHelper_Package;


