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
with admin.taghelpers.PaymentProcessHelperFactory_Package; use admin.taghelpers.PaymentProcessHelperFactory_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package admin.tags.PaymentProcessTag_Package is

   package PaymentProcessHelperFactory_Package renames Standard.admin.taghelpers.PaymentProcessHelperFactory_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;

   type PaymentProcessTag is tagged;
   type PaymentProcessTag_Access is access all PaymentProcessTag'Class;
   type PaymentProcessTag_Access_Array is array (Natural range <>) of PaymentProcessTag_Access;
   type PaymentProcessTag_Access_Array_Access is access all PaymentProcessTag_Access_Array;

   type PaymentProcessTag is new StoreValidationTransformTag with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out PaymentProcessTag'Class);
   function Create return PaymentProcessTag_Access;
   function process (This : in out PaymentProcessTag) return Unbounded_String;
   function doStartTag (This : in out PaymentProcessTag) return Integer;

end admin.tags.PaymentProcessTag_Package;


