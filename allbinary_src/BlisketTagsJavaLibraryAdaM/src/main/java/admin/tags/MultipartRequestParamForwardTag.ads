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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
--  with javax.servlet.jsp.tagext.Tag_Package; use javax.servlet.jsp.tagext.Tag_Package;
with admin.taghelpers.MultipartRequestParamForwardHelper_Package; use admin.taghelpers.MultipartRequestParamForwardHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with tags.CustomTagSupport_Package; use tags.CustomTagSupport_Package;
with tags.HelperTag_Package; use tags.HelperTag_Package;
with admin.tags.ParentInventoryTagHelper_Package; use admin.tags.ParentInventoryTagHelper_Package;
with admin.tags.AbTagData_Package; use admin.tags.AbTagData_Package;

package admin.tags.MultipartRequestParamForwardTag_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package MultipartRequestParamForwardHelper_Package renames Standard.admin.taghelpers.MultipartRequestParamForwardHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package CustomTagSupport_Package renames Standard.tags.CustomTagSupport_Package;
   package HelperTag_Package renames Standard.tags.HelperTag_Package;

   type MultipartRequestParamForwardTag is tagged;
   type MultipartRequestParamForwardTag_Access is access all MultipartRequestParamForwardTag'Class;
   type MultipartRequestParamForwardTag_Access_Array is array (Natural range <>) of MultipartRequestParamForwardTag_Access;
   type MultipartRequestParamForwardTag_Access_Array_Access is access all MultipartRequestParamForwardTag_Access_Array;

   type MultipartRequestParamForwardTag is new CustomTagSupport with record
      page : Unbounded_String;
      command : Unbounded_String;
      paramVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out MultipartRequestParamForwardTag'Class);
   function Create return MultipartRequestParamForwardTag_Access;
   procedure setPage (This : in out MultipartRequestParamForwardTag; page : Unbounded_String);
   procedure setCommand (This : in out MultipartRequestParamForwardTag; command : Unbounded_String);
   procedure setParamVector (This : in out MultipartRequestParamForwardTag; paramVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function doStartTag (This : in out MultipartRequestParamForwardTag) return Integer;

end admin.tags.MultipartRequestParamForwardTag_Package;


