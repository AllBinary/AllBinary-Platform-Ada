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
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentData_Package; use org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.crypt.SuperCrypt_Package; use org.allbinary.logic.control.crypt.SuperCrypt_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGateway_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package PaymentData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package SuperCrypt_Package renames Standard.org.allbinary.logic.control.crypt.SuperCrypt_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type PaymentGateway is tagged;
   type PaymentGateway_Access is access all PaymentGateway'Class;
   type PaymentGateway_Access_Array is array (Natural range <>) of PaymentGateway_Access;
   type PaymentGateway_Access_Array_Access is access all PaymentGateway_Access_Array;

   type PaymentGateway is new PaymentGatewayInterface with record
      storeName : Unbounded_String;
      name : Unbounded_String;
      enable : Unbounded_String;
      paymentMethod : Unbounded_String;
      mode : Unbounded_String;
      testProtocol : Unbounded_String;
      testServer : Unbounded_String;
      testPort : Unbounded_String;
      testPath : Unbounded_String;
      serverProtocol : Unbounded_String;
      server : Unbounded_String;
      serverPort : Unbounded_String;
      serverPath : Unbounded_String;
      timeout : Unbounded_String;
      userName : Unbounded_String;
      password : Unbounded_String;
      proxyProtocol : Unbounded_String;
      proxyServer : Unbounded_String;
      proxyPort : Unbounded_String;
      proxyPath : Unbounded_String;
      proxyUserName : Unbounded_String;
      proxyPassword : Unbounded_String;
      proxyTimeout : Unbounded_String;
      special1 : Unbounded_String;
      special2 : Unbounded_String;
      special3 : Unbounded_String;
      special4 : Unbounded_String;
      special5 : Unbounded_String;
      special6 : Unbounded_String;
      special7 : Unbounded_String;
      special8 : Unbounded_String;
      special9 : Unbounded_String;
      lastModified : Unbounded_String;
      timeEntered : Unbounded_String;
   end record;

   procedure Initialize (This : in out PaymentGateway'Class; hashMap : HashMap_Access);
   function Create (hashMap : HashMap_Access) return PaymentGateway_Access;
   procedure getFormData (This : in out PaymentGateway; hashMap : HashMap_Access);
   function getStoreName (This : in out PaymentGateway) return Unbounded_String;
   function getName (This : in out PaymentGateway) return Unbounded_String;
   function getEnable (This : in out PaymentGateway) return Unbounded_String;
   function getPaymentMethod (This : in out PaymentGateway) return Unbounded_String;
   function getMode (This : in out PaymentGateway) return Unbounded_String;
   function getTestProtocol (This : in out PaymentGateway) return Unbounded_String;
   function getTestServer (This : in out PaymentGateway) return Unbounded_String;
   function getTestPort (This : in out PaymentGateway) return Unbounded_String;
   function getTestPath (This : in out PaymentGateway) return Unbounded_String;
   function getServerProtocol (This : in out PaymentGateway) return Unbounded_String;
   function getServer (This : in out PaymentGateway) return Unbounded_String;
   function getServerPort (This : in out PaymentGateway) return Unbounded_String;
   function getServerPath (This : in out PaymentGateway) return Unbounded_String;
   function getUserName (This : in out PaymentGateway) return Unbounded_String;
   function getPassword (This : in out PaymentGateway) return Unbounded_String;
   function getProxyProtocol (This : in out PaymentGateway) return Unbounded_String;
   function getProxyServer (This : in out PaymentGateway) return Unbounded_String;
   function getProxyPath (This : in out PaymentGateway) return Unbounded_String;
   function getProxyPort (This : in out PaymentGateway) return Unbounded_String;
   function getProxyUserName (This : in out PaymentGateway) return Unbounded_String;
   function getProxyPassword (This : in out PaymentGateway) return Unbounded_String;
   function getTimeout (This : in out PaymentGateway) return Unbounded_String;
   function getProxyTimeout (This : in out PaymentGateway) return Unbounded_String;
   function getSpecial1 (This : in out PaymentGateway) return Unbounded_String;
   function getSpecial2 (This : in out PaymentGateway) return Unbounded_String;
   function getSpecial3 (This : in out PaymentGateway) return Unbounded_String;
   function getSpecial4 (This : in out PaymentGateway) return Unbounded_String;
   function getSpecial5 (This : in out PaymentGateway) return Unbounded_String;
   function getSpecial6 (This : in out PaymentGateway) return Unbounded_String;
   function getSpecial7 (This : in out PaymentGateway) return Unbounded_String;
   function getSpecial8 (This : in out PaymentGateway) return Unbounded_String;
   function getSpecial9 (This : in out PaymentGateway) return Unbounded_String;
   function getLastModified (This : in out PaymentGateway) return Unbounded_String;
   function getTimeEntered (This : in out PaymentGateway) return Unbounded_String;
   procedure setEnable (This : in out PaymentGateway; value : Unbounded_String);
   procedure setStoreName (This : in out PaymentGateway; value : Unbounded_String);
   procedure setName (This : in out PaymentGateway; value : Unbounded_String);
   procedure setPaymentMethod (This : in out PaymentGateway; value : Unbounded_String);
   procedure setMode (This : in out PaymentGateway; value : Unbounded_String);
   procedure setTestProtocol (This : in out PaymentGateway; value : Unbounded_String);
   procedure setTestServer (This : in out PaymentGateway; value : Unbounded_String);
   procedure setTestPort (This : in out PaymentGateway; value : Unbounded_String);
   procedure setTestPath (This : in out PaymentGateway; value : Unbounded_String);
   procedure setServerProtocol (This : in out PaymentGateway; value : Unbounded_String);
   procedure setServer (This : in out PaymentGateway; value : Unbounded_String);
   procedure setServerPort (This : in out PaymentGateway; value : Unbounded_String);
   procedure setServerPath (This : in out PaymentGateway; value : Unbounded_String);
   procedure setTimeout (This : in out PaymentGateway; value : Unbounded_String);
   procedure setUserName (This : in out PaymentGateway; value : Unbounded_String);
   procedure setPassword (This : in out PaymentGateway; value : Unbounded_String);
   procedure setProxyProtocol (This : in out PaymentGateway; value : Unbounded_String);
   procedure setProxyServer (This : in out PaymentGateway; value : Unbounded_String);
   procedure setProxyPort (This : in out PaymentGateway; value : Unbounded_String);
   procedure setProxyPath (This : in out PaymentGateway; value : Unbounded_String);
   procedure setProxyUserName (This : in out PaymentGateway; value : Unbounded_String);
   procedure setProxyPassword (This : in out PaymentGateway; value : Unbounded_String);
   procedure setProxyTimeout (This : in out PaymentGateway; value : Unbounded_String);
   procedure setSpecial1 (This : in out PaymentGateway; value : Unbounded_String);
   procedure setSpecial2 (This : in out PaymentGateway; value : Unbounded_String);
   procedure setSpecial3 (This : in out PaymentGateway; value : Unbounded_String);
   procedure setSpecial4 (This : in out PaymentGateway; value : Unbounded_String);
   procedure setSpecial5 (This : in out PaymentGateway; value : Unbounded_String);
   procedure setSpecial6 (This : in out PaymentGateway; value : Unbounded_String);
   procedure setSpecial7 (This : in out PaymentGateway; value : Unbounded_String);
   procedure setSpecial8 (This : in out PaymentGateway; value : Unbounded_String);
   procedure setSpecial9 (This : in out PaymentGateway; value : Unbounded_String);
   procedure setLastModified (This : in out PaymentGateway; value : Unbounded_String);
   procedure setTimeEntered (This : in out PaymentGateway; value : Unbounded_String);
   function toHashMap (This : in out PaymentGateway) return HashMap_Access;
   function toHashMap (This : in out PaymentGateway; isEncrypted : Boolean) return HashMap_Access;
   procedure toHashMap (This : in out PaymentGateway; isEncrypted : Boolean);
   function toVector (This : in out PaymentGateway) return BasicArrayList_Access;
   function toVector (This : in out PaymentGateway; isEncrypted : Boolean) return BasicArrayList_Access;
   procedure toVector (This : in out PaymentGateway; isEncrypted : Boolean);
   function getKey (This : in out PaymentGateway) return Java_Object_Access;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGateway_Package;


