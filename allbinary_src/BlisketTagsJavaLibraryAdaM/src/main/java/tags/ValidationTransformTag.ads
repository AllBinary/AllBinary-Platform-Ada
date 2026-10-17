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
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with taghelpers.ValidatedViewHelperFactory_Package; use taghelpers.ValidatedViewHelperFactory_Package;
with tags.TransformTag_Package; use tags.TransformTag_Package;

package tags.ValidationTransformTag_Package is

   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package ValidatedViewHelperFactory_Package renames Standard.taghelpers.ValidatedViewHelperFactory_Package;

   type ValidationTransformTag is tagged;
   type ValidationTransformTag_Access is access all ValidationTransformTag'Class;
   type ValidationTransformTag_Access_Array is array (Natural range <>) of ValidationTransformTag_Access;
   type ValidationTransformTag_Access_Array_Access is access all ValidationTransformTag_Access_Array;

   type ValidationTransformTag is new TransformTag with record
      logUtil : LogUtil_Access;
      xslFile : Unbounded_String;
      logic : Boolean;
   end record;

   procedure Initialize (This : in out ValidationTransformTag'Class);
   function Create return ValidationTransformTag_Access;
   procedure setXsl (This : in out ValidationTransformTag; value : Unbounded_String);
   procedure setLogic (This : in out ValidationTransformTag; logic : Boolean);
   function isValid (This : in out ValidationTransformTag) return Boolean;
   procedure isValid (This : in out ValidationTransformTag);
   function validationInfo (This : in out ValidationTransformTag) return Unbounded_String;
   procedure validationInfo (This : in out ValidationTransformTag);
   function doStartTag (This : in out ValidationTransformTag) return Integer;
   procedure doStartTag (This : in out ValidationTransformTag);
   function doEndTag (This : in out ValidationTransformTag) return Integer;
   procedure doEndTag (This : in out ValidationTransformTag);

end tags.ValidationTransformTag_Package;


