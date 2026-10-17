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
--  with java.util.Set_Package; use java.util.Set_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.business.user.address.StreetAddress_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type StreetAddress is tagged;
   type StreetAddress_Access is access all StreetAddress'Class;
   type StreetAddress_Access_Array is array (Natural range <>) of StreetAddress_Access;
   type StreetAddress_Access_Array_Access is access all StreetAddress_Access_Array;

   type StreetAddress is new Java_Object with record
      logUtil : LogUtil_Access;
      id : Unbounded_String;
      name : Unbounded_String;
      street : Unbounded_String;
      city : Unbounded_String;
      state : Unbounded_String;
      code : Unbounded_String;
      country : Unbounded_String;
      isDefault : Boolean;
   end record;

   procedure Initialize (This : in out StreetAddress'Class);
   function Create return StreetAddress_Access;
   procedure log (This : in out StreetAddress);
   procedure setId (This : in out StreetAddress; id : Unbounded_String);
   procedure setName (This : in out StreetAddress; name : Unbounded_String);
   procedure setStreet (This : in out StreetAddress; value : Unbounded_String);
   procedure setCity (This : in out StreetAddress; value : Unbounded_String);
   procedure setState (This : in out StreetAddress; value : Unbounded_String);
   procedure setCode (This : in out StreetAddress; value : Unbounded_String);
   procedure setCountry (This : in out StreetAddress; value : Unbounded_String);
   function getName (This : in out StreetAddress) return Unbounded_String;
   procedure getName (This : in out StreetAddress);
   function getStreet (This : in out StreetAddress) return Unbounded_String;
   procedure getStreet (This : in out StreetAddress);
   function getCity (This : in out StreetAddress) return Unbounded_String;
   procedure getCity (This : in out StreetAddress);
   function getState (This : in out StreetAddress) return Unbounded_String;
   procedure getState (This : in out StreetAddress);
   function getCode (This : in out StreetAddress) return Unbounded_String;
   procedure getCode (This : in out StreetAddress);
   function getCountry (This : in out StreetAddress) return Unbounded_String;
   procedure getCountry (This : in out StreetAddress);
   function getId (This : in out StreetAddress) return Unbounded_String;
   procedure getId (This : in out StreetAddress);
   function isDefault (This : in out StreetAddress) return Boolean;
   procedure isDefault (This : in out StreetAddress);
   function isEmpty (This : in out StreetAddress) return Boolean;
   procedure isEmpty (This : in out StreetAddress);
   function isValid (This : in out StreetAddress) return Boolean;
   procedure isValid (This : in out StreetAddress);
   function validationInfo (This : in out StreetAddress) return Unbounded_String;
   procedure validationInfo (This : in out StreetAddress);
   function toValidationInfoDoc (This : in out StreetAddress) return Document_Access;
   procedure toValidationInfoDoc (This : in out StreetAddress);
   function toValidationInfoNode (This : in out StreetAddress; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out StreetAddress; document : Document_Access);
   function toHashMap (This : in out StreetAddress) return HashMap_Access;
   procedure toHashMap (This : in out StreetAddress);
   function toXmlNode (This : in out StreetAddress; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out StreetAddress; document : Document_Access);

end org.allbinary.business.user.address.StreetAddress_Package;


