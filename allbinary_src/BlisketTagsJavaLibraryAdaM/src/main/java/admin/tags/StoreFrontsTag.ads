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
--  with javax.servlet.jsp.tagext.TagSupport_Package; use javax.servlet.jsp.tagext.TagSupport_Package;
with admin.taghelpers.StoreFrontsHelperFactory_Package; use admin.taghelpers.StoreFrontsHelperFactory_Package;
with admin.taghelpers.StoreFrontsRequestHelperFactory_Package; use admin.taghelpers.StoreFrontsRequestHelperFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.StoreFrontsTag_Package is

   package StoreFrontsHelperFactory_Package renames admin.taghelpers.StoreFrontsHelperFactory_Package;
   package StoreFrontsRequestHelperFactory_Package renames admin.taghelpers.StoreFrontsRequestHelperFactory_Package;
   package StoreFrontData_Package renames org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package AbResponseHandler_Package renames org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package LicensingException_Package renames org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type StoreFrontsTag is tagged;
   type StoreFrontsTag_Access is access all StoreFrontsTag'Class;
   type StoreFrontsTag_Access_Array is array (Natural range <>) of StoreFrontsTag_Access;
   type StoreFrontsTag_Access_Array_Access is access all StoreFrontsTag_Access_Array;

   type StoreFrontsTag is new TableTag with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out StoreFrontsTag'Class);
   function Create return StoreFrontsTag_Access;
   function generateSelect (This : in out StoreFrontsTag) return Unbounded_String;
   procedure generateSelect (This : in out StoreFrontsTag);
   function install (This : in out StoreFrontsTag) return Unbounded_String;
   procedure install (This : in out StoreFrontsTag);
   function sendStoreCreatedEmails (This : in out StoreFrontsTag) return Unbounded_String;
   procedure sendStoreCreatedEmails (This : in out StoreFrontsTag);
   function doStartTag (This : in out StoreFrontsTag) return Integer;
   procedure doStartTag (This : in out StoreFrontsTag);

end admin.tags.StoreFrontsTag_Package;


