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
--  with javax.servlet.ServletRequest_Package; use javax.servlet.ServletRequest_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.crypt.SuperCrypt_Package; use org.allbinary.logic.control.crypt.SuperCrypt_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package; use org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;

package org.allbinary.business.user.commerce.money.payment.Payment_Package is

   package EntryData_Package renames org.allbinary.business.entry_Id.EntryData_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package SuperCrypt_Package renames org.allbinary.logic.control.crypt.SuperCrypt_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type Payment is tagged;
   type Payment_Access is access all Payment'Class;
   type Payment_Access_Array is array (Natural range <>) of Payment_Access;
   type Payment_Access_Array_Access is access all Payment_Access_Array;

   type Payment is new PaymentInterface and DomNodeInterface with record
      name : Unbounded_String;
      expiration : Unbounded_String;
      encryption : Unbounded_String;
      number : Unbounded_String;
      id : Unbounded_String;
      type_Id : Unbounded_String;
      tenderType : Unbounded_String;
      transactionType : Unbounded_String;
      aba : Unbounded_String;
      account : Unbounded_String;
      accountType : Unbounded_String;
      authorizationCode : Unbounded_String;
      checkNumber : Unbounded_String;
      checkType : Unbounded_String;
      driversLicense : Unbounded_String;
      magneticInkCheckReader : Unbounded_String;
      isDefault : Boolean;
   end record;

   procedure Initialize (This : in out Payment'Class; payment : HashMap_Access);
   function Create (payment : HashMap_Access) return Payment_Access;
   function isValid (This : in out Payment) return Boolean;
   procedure isValid (This : in out Payment);
   procedure setTenderType (This : in out Payment; value : Unbounded_String);
   procedure setTransactionType (This : in out Payment; value : Unbounded_String);
   procedure setAuthorizationCode (This : in out Payment; value : Unbounded_String);
   procedure setCheckType (This : in out Payment; value : Unbounded_String);
   procedure setCheckNumber (This : in out Payment; value : Unbounded_String);
   procedure setDriversLicense (This : in out Payment; value : Unbounded_String);
   procedure setMagneticInkCheckReader (This : in out Payment; value : Unbounded_String);
   procedure setAba (This : in out Payment; value : Unbounded_String);
   procedure setAccountType (This : in out Payment; value : Unbounded_String);
   procedure setName (This : in out Payment; value : Unbounded_String);
   procedure setType (This : in out Payment; value : Unbounded_String);
   procedure setExpiration (This : in out Payment; value : Unbounded_String);
   procedure setNumber (This : in out Payment; value : Unbounded_String);
   function getId (This : in out Payment) return Unbounded_String;
   procedure getId (This : in out Payment);
   function getName (This : in out Payment) return Unbounded_String;
   procedure getName (This : in out Payment);
   function getType (This : in out Payment) return Unbounded_String;
   procedure getType (This : in out Payment);
   function getExpiration (This : in out Payment) return Unbounded_String;
   procedure getExpiration (This : in out Payment);
   function getEncryption (This : in out Payment) return Unbounded_String;
   procedure getEncryption (This : in out Payment);
   function getNumber (This : in out Payment) return Unbounded_String;
   procedure getNumber (This : in out Payment);
   function getTenderType (This : in out Payment) return Unbounded_String;
   procedure getTenderType (This : in out Payment);
   function getTransactionType (This : in out Payment) return Unbounded_String;
   procedure getTransactionType (This : in out Payment);
   function getAba (This : in out Payment) return Unbounded_String;
   procedure getAba (This : in out Payment);
   function getAccount (This : in out Payment) return Unbounded_String;
   procedure getAccount (This : in out Payment);
   function getAccountType (This : in out Payment) return Unbounded_String;
   procedure getAccountType (This : in out Payment);
   function getAuthorizationCode (This : in out Payment) return Unbounded_String;
   procedure getAuthorizationCode (This : in out Payment);
   function getCheckNumber (This : in out Payment) return Unbounded_String;
   procedure getCheckNumber (This : in out Payment);
   function getCheckType (This : in out Payment) return Unbounded_String;
   procedure getCheckType (This : in out Payment);
   function getDriversLicense (This : in out Payment) return Unbounded_String;
   procedure getDriversLicense (This : in out Payment);
   function getMagneticInkCheckReader (This : in out Payment) return Unbounded_String;
   procedure getMagneticInkCheckReader (This : in out Payment);
   function getLastFour (This : in out Payment) return Unbounded_String;
   procedure getLastFour (This : in out Payment);
   function isDefault (This : in out Payment) return Boolean;
   procedure isDefault (This : in out Payment);
   function toHashMap (This : in out Payment) return HashMap_Access;
   procedure toHashMap (This : in out Payment);
   function toXmlNode (This : in out Payment; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out Payment; document : Document_Access);
   function toXmlDoc (This : in out Payment) return Document_Access;
   procedure toXmlDoc (This : in out Payment);
   function view (This : in out Payment) return Unbounded_String;
   procedure view (This : in out Payment);
   function toValidationInfoDoc (This : in out Payment) return Document_Access;
   procedure toValidationInfoDoc (This : in out Payment);
   function toValidationInfoNode (This : in out Payment; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out Payment; document : Document_Access);
   function validationInfo (This : in out Payment) return Unbounded_String;
   procedure validationInfo (This : in out Payment);

end org.allbinary.business.user.commerce.money.payment.Payment_Package;


