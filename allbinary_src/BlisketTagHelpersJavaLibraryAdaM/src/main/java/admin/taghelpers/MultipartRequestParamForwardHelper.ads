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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.communication.http.request.RequestMapInterface_Package; use org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with tags.HelperTag_Package; use tags.HelperTag_Package;

package admin.taghelpers.MultipartRequestParamForwardHelper_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package RequestMapInterface_Package renames Standard.org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package HelperTag_Package renames Standard.tags.HelperTag_Package;

   type MultipartRequestParamForwardHelper is tagged;
   type MultipartRequestParamForwardHelper_Access is access all MultipartRequestParamForwardHelper'Class;
   type MultipartRequestParamForwardHelper_Access_Array is array (Natural range <>) of MultipartRequestParamForwardHelper_Access;
   type MultipartRequestParamForwardHelper_Access_Array_Access is access all MultipartRequestParamForwardHelper_Access_Array;
   type MultipartRequestParamForwardHelper_Access_Array_Access_Array is array (Natural range <>) of MultipartRequestParamForwardHelper_Access_Array_Access;
   type MultipartRequestParamForwardHelper_Access_Array_Access_Array_Access is access all MultipartRequestParamForwardHelper_Access_Array_Access_Array;

   type MultipartRequestParamForwardHelper is new Java_Object with record
      logUtil : LogUtil_Access;
      pageContext : PageContext_Access;
      requestMapInterface : RequestMapInterface_Access;
      page : Unbounded_String;
      command : Unbounded_String;
      paramVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out MultipartRequestParamForwardHelper'Class; parentHelperTag_Param : access HelperTag_Package.HelperTag'Class; page : Unbounded_String; command : Unbounded_String; paramVector_Param : access BasicArrayList_Package.BasicArrayList'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (parentHelperTag_Param : access HelperTag_Package.HelperTag'Class; page : Unbounded_String; command : Unbounded_String; paramVector_Param : access BasicArrayList_Package.BasicArrayList'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return MultipartRequestParamForwardHelper_Access;
   procedure forward (This : in out MultipartRequestParamForwardHelper);
   function getParams (This : in out MultipartRequestParamForwardHelper) return Unbounded_String;
   function shouldForward (This : in out MultipartRequestParamForwardHelper) return Boolean;

end admin.taghelpers.MultipartRequestParamForwardHelper_Package;


