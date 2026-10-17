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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with admin.taghelpers.StoreFrontHelperFactory_Package; use admin.taghelpers.StoreFrontHelperFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with tags.CustomTagSupport_Package; use tags.CustomTagSupport_Package;

package admin.tags.StoreFrontTag_Package is

   package StoreFrontHelperFactory_Package renames Standard.admin.taghelpers.StoreFrontHelperFactory_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package CustomTagSupport_Package renames Standard.tags.CustomTagSupport_Package;

   type StoreFrontTag is tagged;
   type StoreFrontTag_Access is access all StoreFrontTag'Class;
   type StoreFrontTag_Access_Array is array (Natural range <>) of StoreFrontTag_Access;
   type StoreFrontTag_Access_Array_Access is access all StoreFrontTag_Access_Array;

   type StoreFrontTag is new CustomTagSupport with record
      logUtil : LogUtil_Access;
      command : Unbounded_String;
      storeName : Unbounded_String;
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out StoreFrontTag'Class);
   function Create return StoreFrontTag_Access;
   procedure setCommand (This : in out StoreFrontTag; command : Unbounded_String);
   procedure setStoreName (This : in out StoreFrontTag; value : Unbounded_String);
   function getCurrentLocation (This : in out StoreFrontTag) return Unbounded_String;
   procedure getCurrentLocation (This : in out StoreFrontTag);
   function getCurrentHomeLocation (This : in out StoreFrontTag) return Unbounded_String;
   procedure getCurrentHomeLocation (This : in out StoreFrontTag);
   function doStartTag (This : in out StoreFrontTag) return Integer;
   procedure doStartTag (This : in out StoreFrontTag);

end admin.tags.StoreFrontTag_Package;


