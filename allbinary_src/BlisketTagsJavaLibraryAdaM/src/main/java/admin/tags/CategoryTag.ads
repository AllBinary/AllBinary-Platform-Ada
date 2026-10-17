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
with admin.taghelpers.CategoryHelperFactory_Package; use admin.taghelpers.CategoryHelperFactory_Package;
with admin.taghelpers.CategoryRequestHelperFactory_Package; use admin.taghelpers.CategoryRequestHelperFactory_Package;
with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.CategoryTag_Package is

   package CategoryHelperFactory_Package renames admin.taghelpers.CategoryHelperFactory_Package;
   package CategoryRequestHelperFactory_Package renames admin.taghelpers.CategoryRequestHelperFactory_Package;
   package CategoryData_Package renames org.allbinary.business.category.CategoryData_Package;
   package AbResponseHandler_Package renames org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package LicensingException_Package renames org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package TransformInfoData_Package renames org.allbinary.logic.visual.transform.info.TransformInfoData_Package;

   type CategoryTag is tagged;
   type CategoryTag_Access is access all CategoryTag'Class;
   type CategoryTag_Access_Array is array (Natural range <>) of CategoryTag_Access;
   type CategoryTag_Access_Array_Access is access all CategoryTag_Access_Array;

   type CategoryTag is new TableTag with record
      logUtil : LogUtil_Access;
      xsl : Unbounded_String;
   end record;

   procedure Initialize (This : in out CategoryTag'Class);
   function Create return CategoryTag_Access;
   procedure setXsl (This : in out CategoryTag; value : Unbounded_String);
   function viewCategory (This : in out CategoryTag) return Unbounded_String;
   procedure viewCategory (This : in out CategoryTag);
   function viewCategories (This : in out CategoryTag) return Unbounded_String;
   procedure viewCategories (This : in out CategoryTag);
   function doStartTag (This : in out CategoryTag) return Integer;
   procedure doStartTag (This : in out CategoryTag);

end admin.tags.CategoryTag_Package;


