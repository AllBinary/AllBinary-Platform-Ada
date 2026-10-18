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
--  with java.util.Set_Package; use java.util.Set_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.business.user.address.StreetAddress_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type StreetAddress is tagged;
   type StreetAddress_Access is access all StreetAddress'Class;
   type StreetAddress_Access_Array is array (Natural range <>) of StreetAddress_Access;
   type StreetAddress_Access_Array_Access is access all StreetAddress_Access_Array;
   type StreetAddress_Access_Array_Access_Array is array (Natural range <>) of StreetAddress_Access_Array_Access;
   type StreetAddress_Access_Array_Access_Array_Access is access all StreetAddress_Access_Array_Access_Array;

   type StreetAddress is new Java_Object with record
      logUtil : LogUtil_Access;
      id : Unbounded_String;
      name : Unbounded_String;
      street : Unbounded_String;
      city : Unbounded_String;
      state : Unbounded_String;
      code : Unbounded_String;
      country : Unbounded_String;
      isDefault_Field : Boolean;
   end record;

   procedure Initialize (This : in out StreetAddress'Class);
   function Create return StreetAddress_Access;
   procedure Initialize (This : in out StreetAddress'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return StreetAddress_Access;
   procedure Initialize (This : in out StreetAddress'Class; streetAddress_Var_Param : access StreetAddress_Package.StreetAddress'Class);
   function Create (streetAddress_Var_Param : access StreetAddress_Package.StreetAddress'Class) return StreetAddress_Access;
   procedure Initialize (This : in out StreetAddress'Class; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function Create (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return StreetAddress_Access;
   procedure Initialize (This : in out StreetAddress'Class; name : Unbounded_String; street : Unbounded_String; city : Unbounded_String; state : Unbounded_String; code : Unbounded_String; country : Unbounded_String);
   function Create (name : Unbounded_String; street : Unbounded_String; city : Unbounded_String; state : Unbounded_String; code : Unbounded_String; country : Unbounded_String) return StreetAddress_Access;
   procedure Initialize (This : in out StreetAddress'Class; address_Param : access HashMap_Package.HashMap'Class);
   function Create (address_Param : access HashMap_Package.HashMap'Class) return StreetAddress_Access;
   procedure log (This : in out StreetAddress);
   procedure setId (This : in out StreetAddress; id : Unbounded_String);
   procedure setName (This : in out StreetAddress; name : Unbounded_String);
   procedure setStreet (This : in out StreetAddress; value : Unbounded_String);
   procedure setCity (This : in out StreetAddress; value : Unbounded_String);
   procedure setState (This : in out StreetAddress; value : Unbounded_String);
   procedure setCode (This : in out StreetAddress; value : Unbounded_String);
   procedure setCountry (This : in out StreetAddress; value : Unbounded_String);
   function getName (This : in out StreetAddress) return Unbounded_String;
   function getStreet (This : in out StreetAddress) return Unbounded_String;
   function getCity (This : in out StreetAddress) return Unbounded_String;
   function getState (This : in out StreetAddress) return Unbounded_String;
   function getCode (This : in out StreetAddress) return Unbounded_String;
   function getCountry (This : in out StreetAddress) return Unbounded_String;
   function getId (This : in out StreetAddress) return Unbounded_String;
   function isDefault (This : in out StreetAddress) return Boolean;
   function isEmpty (This : in out StreetAddress) return Boolean;
   function isValid (This : in out StreetAddress) return Boolean;
   function validationInfo (This : in out StreetAddress) return Unbounded_String;
   function toValidationInfoDoc (This : in out StreetAddress) return Document_Access;
   function toValidationInfoNode (This : in out StreetAddress; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out StreetAddress; document_Param : access Document_Package.Document'Class);
   function toHashMap (This : in out StreetAddress) return HashMap_Access;
   function toXmlNode (This : in out StreetAddress; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out StreetAddress; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.user.address.StreetAddress_Package;


