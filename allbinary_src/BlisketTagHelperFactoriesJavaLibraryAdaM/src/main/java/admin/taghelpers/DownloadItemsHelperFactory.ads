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
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with admin.taghelpers.TagHelperFactory_Package; use admin.taghelpers.TagHelperFactory_Package;

package admin.taghelpers.DownloadItemsHelperFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type DownloadItemsHelperFactory is tagged;
   type DownloadItemsHelperFactory_Access is access all DownloadItemsHelperFactory'Class;
   type DownloadItemsHelperFactory_Access_Array is array (Natural range <>) of DownloadItemsHelperFactory_Access;
   type DownloadItemsHelperFactory_Access_Array_Access is access all DownloadItemsHelperFactory_Access_Array;

   type DownloadItemsHelperFactory is new TagHelperFactory with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out DownloadItemsHelperFactory'Class);
   function Create return DownloadItemsHelperFactory_Access;
   function getInstance (This : in out DownloadItemsHelperFactory; hashMap : HashMap_Access; pageContext : PageContext_Access) return Java_Object_Access;
   procedure getInstance (This : in out DownloadItemsHelperFactory; hashMap : HashMap_Access; pageContext : PageContext_Access);

end admin.taghelpers.DownloadItemsHelperFactory_Package;


