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

with AllBinary_Java;
limited with org.allbinary.business.user.commerce.money.payment.Payment_Package;
package org.allbinary.business.user.commerce.money.payment.Payment_Package_References is
   type Payment_Access is access all org.allbinary.business.user.commerce.money.payment.Payment_Package.Payment'Class;
   type Payment_Access_Array is array (Natural range <>) of Payment_Access;
   type Payment_Access_Array_Access is access all Payment_Access_Array;
   type Payment_Access_Array_Access_Array is array (Natural range <>) of Payment_Access_Array_Access;
   type Payment_Access_Array_Access_Array_Access is access all Payment_Access_Array_Access_Array;
   type Payment_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Payment_Access_Array_Access;
   end record;
   function Java_Box (Value : Payment_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Payment_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Payment_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Payment_Access_Array_Access is (if Value /= null and then Value.all in Payment_Access_Array_Object'Class then Payment_Access_Array_Object'Class (Value.all).Value else null);
   type Payment_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Payment_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Payment_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Payment_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Payment_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Payment_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Payment_Access_Array_Access_Array_Object'Class then Payment_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.Payment_Package_References;

with org.allbinary.business.user.commerce.money.payment.Payment_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.ServletRequest_Package; use javax.servlet.ServletRequest_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package; use org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;

package org.allbinary.business.user.commerce.money.payment.Payment_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Payment_Access is org.allbinary.business.user.commerce.money.payment.Payment_Package_References.Payment_Access;
   function "=" (Left, Right : Payment_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.Payment_Package_References."=";
   subtype Payment_Access_Array is org.allbinary.business.user.commerce.money.payment.Payment_Package_References.Payment_Access_Array;
   function "=" (Left, Right : Payment_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.Payment_Package_References."=";
   subtype Payment_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.Payment_Package_References.Payment_Access_Array_Access;
   function "=" (Left, Right : Payment_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.Payment_Package_References."=";
   function Java_Box (Value : Payment_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.Payment_Package_References.Java_Box;
   function Java_Unbox_Payment_Access_Array (Value : access Java_Object'Class) return Payment_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.Payment_Package_References.Java_Unbox_Payment_Access_Array;
   subtype Payment_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.Payment_Package_References.Payment_Access_Array_Access_Array;
   function "=" (Left, Right : Payment_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.Payment_Package_References."=";
   subtype Payment_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.Payment_Package_References.Payment_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Payment_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.Payment_Package_References."=";
   function Java_Box (Value : Payment_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.Payment_Package_References.Java_Box;
   function Java_Unbox_Payment_Access_Array_Access_Array (Value : access Java_Object'Class) return Payment_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.Payment_Package_References.Java_Unbox_Payment_Access_Array_Access_Array;

   type Payment is new Java_Object and PaymentInterface and DomNodeInterface with record
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
      isDefault_Field : Boolean;
   end record;

   procedure Initialize (This : in out Payment'Class; payment_Var_Param : access HashMap_Package.HashMap'Class);
   function Create (payment_Var_Param : access HashMap_Package.HashMap'Class) return Payment_Access;
   procedure Initialize (This : in out Payment'Class; request_Param : access ServletRequest_Package.ServletRequest'Class);
   function Create (request_Param : access ServletRequest_Package.ServletRequest'Class) return Payment_Access;
   procedure Initialize (This : in out Payment'Class);
   function Create return Payment_Access;
   function isValid (This : in out Payment) return Boolean;
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
   function getName (This : in out Payment) return Unbounded_String;
   function getType (This : in out Payment) return Unbounded_String;
   function getExpiration (This : in out Payment) return Unbounded_String;
   function getEncryption (This : in out Payment) return Unbounded_String;
   function getNumber (This : in out Payment) return Unbounded_String;
   function getTenderType (This : in out Payment) return Unbounded_String;
   function getTransactionType (This : in out Payment) return Unbounded_String;
   function getAba (This : in out Payment) return Unbounded_String;
   function getAccount (This : in out Payment) return Unbounded_String;
   function getAccountType (This : in out Payment) return Unbounded_String;
   function getAuthorizationCode (This : in out Payment) return Unbounded_String;
   function getCheckNumber (This : in out Payment) return Unbounded_String;
   function getCheckType (This : in out Payment) return Unbounded_String;
   function getDriversLicense (This : in out Payment) return Unbounded_String;
   function getMagneticInkCheckReader (This : in out Payment) return Unbounded_String;
   function getLastFour (This : in out Payment) return Unbounded_String;
   function isDefault (This : in out Payment) return Boolean;
   function toHashMap (This : in out Payment) return HashMap_Access;
   function toXmlNode (This : in out Payment; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out Payment; document_Param : access Document_Package.Document'Class);
   function toXmlDoc (This : in out Payment) return Document_Access;
   function view (This : in out Payment) return Unbounded_String;
   function toValidationInfoDoc (This : in out Payment) return Document_Access;
   function toValidationInfoNode (This : in out Payment; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out Payment; document_Param : access Document_Package.Document'Class);
   function validationInfo (This : in out Payment) return Unbounded_String;

end org.allbinary.business.user.commerce.money.payment.Payment_Package;


