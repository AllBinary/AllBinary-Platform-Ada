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
with admin.taghelpers.StaticPagesHelperFactory_Package; use admin.taghelpers.StaticPagesHelperFactory_Package;
with admin.taghelpers.StaticPagesRequestHelperFactory_Package; use admin.taghelpers.StaticPagesRequestHelperFactory_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.search.SearchData_Package; use org.allbinary.logic.control.search.SearchData_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.StaticPagesTag_Package is

   package StaticPagesHelperFactory_Package renames Standard.admin.taghelpers.StaticPagesHelperFactory_Package;
   package StaticPagesRequestHelperFactory_Package renames Standard.admin.taghelpers.StaticPagesRequestHelperFactory_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SearchData_Package renames Standard.org.allbinary.logic.control.search.SearchData_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package TransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoData_Package;

   type StaticPagesTag is tagged;
   type StaticPagesTag_Access is access all StaticPagesTag'Class;
   type StaticPagesTag_Access_Array is array (Natural range <>) of StaticPagesTag_Access;
   type StaticPagesTag_Access_Array_Access is access all StaticPagesTag_Access_Array;

   type StaticPagesTag is new TableTag with record
      logUtil : LogUtil_Access;
      xslFile : Unbounded_String;
   end record;

   procedure Initialize (This : in out StaticPagesTag'Class);
   function Create return StaticPagesTag_Access;
   procedure setXsl (This : in out StaticPagesTag; value : Unbounded_String);
   function generateStaticPages (This : in out StaticPagesTag) return Unbounded_String;
   procedure generateStaticPages (This : in out StaticPagesTag);
   function makePublic (This : in out StaticPagesTag) return Unbounded_String;
   procedure makePublic (This : in out StaticPagesTag);
   function doStartTag (This : in out StaticPagesTag) return Integer;
   procedure doStartTag (This : in out StaticPagesTag);

end admin.tags.StaticPagesTag_Package;


