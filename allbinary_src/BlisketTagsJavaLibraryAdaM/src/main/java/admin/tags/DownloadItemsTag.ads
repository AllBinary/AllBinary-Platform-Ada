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
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
--  with javax.servlet.jsp.tagext.Tag_Package; use javax.servlet.jsp.tagext.Tag_Package;
with admin.taghelpers.DownloadItemsHelperFactory_Package; use admin.taghelpers.DownloadItemsHelperFactory_Package;
with admin.taghelpers.DownloadItemsRequestHelperFactory_Package; use admin.taghelpers.DownloadItemsRequestHelperFactory_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.DownloadItemsTag_Package is

   package DownloadItemsHelperFactory_Package renames Standard.admin.taghelpers.DownloadItemsHelperFactory_Package;
   package DownloadItemsRequestHelperFactory_Package renames Standard.admin.taghelpers.DownloadItemsRequestHelperFactory_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;

   type DownloadItemsTag is tagged;
   type DownloadItemsTag_Access is access all DownloadItemsTag'Class;
   type DownloadItemsTag_Access_Array is array (Natural range <>) of DownloadItemsTag_Access;
   type DownloadItemsTag_Access_Array_Access is access all DownloadItemsTag_Access_Array;

   type DownloadItemsTag is new TableTag with null record;

   procedure Initialize (This : in out DownloadItemsTag'Class);
   function Create return DownloadItemsTag_Access;
   function doStartTag (This : in out DownloadItemsTag) return Integer;
   procedure doStartTag (This : in out DownloadItemsTag);

end admin.tags.DownloadItemsTag_Package;


