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
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with taghelpers.ViewHelper_Package; use taghelpers.ViewHelper_Package;

package taghelpers.ValidationViewHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type ValidationViewHelper is tagged;
   type ValidationViewHelper_Access is access all ValidationViewHelper'Class;
   type ValidationViewHelper_Access_Array is array (Natural range <>) of ValidationViewHelper_Access;
   type ValidationViewHelper_Access_Array_Access is access all ValidationViewHelper_Access_Array;

   type ValidationViewHelper is new ViewHelper and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
      viewInterface : ValidationComponentInterface_Access;
   end record;

   procedure Initialize (This : in out ValidationViewHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return ValidationViewHelper_Access;
   function isValid (This : in out ValidationViewHelper) return Boolean;
   function validationInfo (This : in out ValidationViewHelper) return Unbounded_String;
   function toValidationInfoDoc (This : in out ValidationViewHelper) return Document_Access;
   function toValidationInfoNode (This : in out ValidationViewHelper; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out ValidationViewHelper; document_Param : access Document_Package.Document'Class);

end taghelpers.ValidationViewHelper_Package;


