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

limited with admin.taghelpers.StaticPagesRequestHelper_Package;
package admin.taghelpers.StaticPagesRequestHelper_Package_References is
   type StaticPagesRequestHelper_Access is access all admin.taghelpers.StaticPagesRequestHelper_Package.StaticPagesRequestHelper'Class;
   type StaticPagesRequestHelper_Access_Array is array (Natural range <>) of StaticPagesRequestHelper_Access;
   type StaticPagesRequestHelper_Access_Array_Access is access all StaticPagesRequestHelper_Access_Array;
   type StaticPagesRequestHelper_Access_Array_Access_Array is array (Natural range <>) of StaticPagesRequestHelper_Access_Array_Access;
   type StaticPagesRequestHelper_Access_Array_Access_Array_Access is access all StaticPagesRequestHelper_Access_Array_Access_Array;
end admin.taghelpers.StaticPagesRequestHelper_Package_References;

with admin.taghelpers.StaticPagesRequestHelper_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.control.search.SearchParams_Package;
with org.allbinary.logic.control.search.SearchParams_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with admin.taghelpers.TagHelperInterface_Package; use admin.taghelpers.TagHelperInterface_Package;

package admin.taghelpers.StaticPagesRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package AbContext_Package renames Standard.org.allbinary.business.context.AbContext_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SearchParams_Package renames Standard.org.allbinary.logic.control.search.SearchParams_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype SearchParams_Access is org.allbinary.logic.control.search.SearchParams_Package_References.SearchParams_Access;
   use type SearchParams_Access;
   subtype SearchParams_Access_Array is org.allbinary.logic.control.search.SearchParams_Package_References.SearchParams_Access_Array;
   use type SearchParams_Access_Array;
   subtype SearchParams_Access_Array_Access is org.allbinary.logic.control.search.SearchParams_Package_References.SearchParams_Access_Array_Access;
   use type SearchParams_Access_Array_Access;
   subtype SearchParams_Access_Array_Access_Array is org.allbinary.logic.control.search.SearchParams_Package_References.SearchParams_Access_Array_Access_Array;
   use type SearchParams_Access_Array_Access_Array;
   subtype SearchParams_Access_Array_Access_Array_Access is org.allbinary.logic.control.search.SearchParams_Package_References.SearchParams_Access_Array_Access_Array_Access;
   use type SearchParams_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StaticPagesRequestHelper_Access is admin.taghelpers.StaticPagesRequestHelper_Package_References.StaticPagesRequestHelper_Access;
   function "=" (Left, Right : StaticPagesRequestHelper_Access) return Boolean renames admin.taghelpers.StaticPagesRequestHelper_Package_References."=";
   subtype StaticPagesRequestHelper_Access_Array is admin.taghelpers.StaticPagesRequestHelper_Package_References.StaticPagesRequestHelper_Access_Array;
   function "=" (Left, Right : StaticPagesRequestHelper_Access_Array) return Boolean renames admin.taghelpers.StaticPagesRequestHelper_Package_References."=";
   subtype StaticPagesRequestHelper_Access_Array_Access is admin.taghelpers.StaticPagesRequestHelper_Package_References.StaticPagesRequestHelper_Access_Array_Access;
   function "=" (Left, Right : StaticPagesRequestHelper_Access_Array_Access) return Boolean renames admin.taghelpers.StaticPagesRequestHelper_Package_References."=";
   subtype StaticPagesRequestHelper_Access_Array_Access_Array is admin.taghelpers.StaticPagesRequestHelper_Package_References.StaticPagesRequestHelper_Access_Array_Access_Array;
   function "=" (Left, Right : StaticPagesRequestHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.StaticPagesRequestHelper_Package_References."=";
   subtype StaticPagesRequestHelper_Access_Array_Access_Array_Access is admin.taghelpers.StaticPagesRequestHelper_Package_References.StaticPagesRequestHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StaticPagesRequestHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.StaticPagesRequestHelper_Package_References."=";

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


