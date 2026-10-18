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
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.context.AbContext_Package; use org.allbinary.business.context.AbContext_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.search.SearchParams_Package; use org.allbinary.logic.control.search.SearchParams_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with admin.taghelpers.TagHelperInterface_Package; use admin.taghelpers.TagHelperInterface_Package;

package admin.taghelpers.StaticPagesRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package AbContext_Package renames Standard.org.allbinary.business.context.AbContext_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SearchParams_Package renames Standard.org.allbinary.logic.control.search.SearchParams_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type StaticPagesRequestHelper is tagged;
   type StaticPagesRequestHelper_Access is access all StaticPagesRequestHelper'Class;
   type StaticPagesRequestHelper_Access_Array is array (Natural range <>) of StaticPagesRequestHelper_Access;
   type StaticPagesRequestHelper_Access_Array_Access is access all StaticPagesRequestHelper_Access_Array;
   type StaticPagesRequestHelper_Access_Array_Access_Array is array (Natural range <>) of StaticPagesRequestHelper_Access_Array_Access;
   type StaticPagesRequestHelper_Access_Array_Access_Array_Access is access all StaticPagesRequestHelper_Access_Array_Access_Array;

   type StaticPagesRequestHelper is new AbContext and TagHelperInterface with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      request : HttpServletRequest_Access;
      storeName : Unbounded_String;
      searchParams : SearchParams_Access;
      xslFile : Unbounded_String;
   end record;

   procedure Initialize (This : in out StaticPagesRequestHelper'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return StaticPagesRequestHelper_Access;
   procedure getFormData (This : in out StaticPagesRequestHelper);
   procedure email (This : in out StaticPagesRequestHelper);
   function generateStaticPages (This : in out StaticPagesRequestHelper) return Unbounded_String;
   function makePublic (This : in out StaticPagesRequestHelper) return Unbounded_String;

end admin.taghelpers.StaticPagesRequestHelper_Package;


