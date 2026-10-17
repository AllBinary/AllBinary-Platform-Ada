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
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with tags.TransformTag_Package; use tags.TransformTag_Package;

package tags.XmlValidationTransformTag_Package is

   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type XmlValidationTransformTag is tagged;
   type XmlValidationTransformTag_Access is access all XmlValidationTransformTag'Class;
   type XmlValidationTransformTag_Access_Array is array (Natural range <>) of XmlValidationTransformTag_Access;
   type XmlValidationTransformTag_Access_Array_Access is access all XmlValidationTransformTag_Access_Array;

   type XmlValidationTransformTag is new TransformTag with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out XmlValidationTransformTag'Class);
   function Create return XmlValidationTransformTag_Access;
   function isValid (This : in out XmlValidationTransformTag) return Boolean;
   procedure isValid (This : in out XmlValidationTransformTag);
   function doStartTag (This : in out XmlValidationTransformTag) return Integer;
   procedure doStartTag (This : in out XmlValidationTransformTag);

end tags.XmlValidationTransformTag_Package;


