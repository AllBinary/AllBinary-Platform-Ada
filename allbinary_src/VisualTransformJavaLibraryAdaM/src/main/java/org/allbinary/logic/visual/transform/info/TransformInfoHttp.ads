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

limited with org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;
package org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References is
   type TransformInfoHttp_Access is access all org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package.TransformInfoHttp'Class;
   type TransformInfoHttp_Access_Array is array (Natural range <>) of TransformInfoHttp_Access;
   type TransformInfoHttp_Access_Array_Access is access all TransformInfoHttp_Access_Array;
   type TransformInfoHttp_Access_Array_Access_Array is array (Natural range <>) of TransformInfoHttp_Access_Array_Access;
   type TransformInfoHttp_Access_Array_Access_Array_Access is access all TransformInfoHttp_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References;
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
limited with org.allbinary.business.context.AbContext_Package;
with org.allbinary.business.context.AbContext_Package_References;
limited with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
with org.allbinary.logic.visual.transform.info.TransformInfo_Package; use org.allbinary.logic.visual.transform.info.TransformInfo_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package AbContext_Package renames Standard.org.allbinary.business.context.AbContext_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Reference_Types is
   subtype AbContext_Access is org.allbinary.business.context.AbContext_Package_References.AbContext_Access;
   use type AbContext_Access;
   subtype AbContext_Access_Array is org.allbinary.business.context.AbContext_Package_References.AbContext_Access_Array;
   use type AbContext_Access_Array;
   subtype AbContext_Access_Array_Access is org.allbinary.business.context.AbContext_Package_References.AbContext_Access_Array_Access;
   use type AbContext_Access_Array_Access;
   subtype AbContext_Access_Array_Access_Array is org.allbinary.business.context.AbContext_Package_References.AbContext_Access_Array_Access_Array;
   use type AbContext_Access_Array_Access_Array;
   subtype AbContext_Access_Array_Access_Array_Access is org.allbinary.business.context.AbContext_Package_References.AbContext_Access_Array_Access_Array_Access;
   use type AbContext_Access_Array_Access_Array_Access;
   subtype WeblisketSessionInterface_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access;
   use type WeblisketSessionInterface_Access;
   subtype WeblisketSessionInterface_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array;
   use type WeblisketSessionInterface_Access_Array;
   subtype WeblisketSessionInterface_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access;
   use type WeblisketSessionInterface_Access_Array_Access;
   subtype WeblisketSessionInterface_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access_Array;
   use type WeblisketSessionInterface_Access_Array_Access_Array;
   subtype WeblisketSessionInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access_Array_Access;
   use type WeblisketSessionInterface_Access_Array_Access_Array_Access;
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
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoHttp_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References.TransformInfoHttp_Access;
   function "=" (Left, Right : TransformInfoHttp_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References."=";
   subtype TransformInfoHttp_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References.TransformInfoHttp_Access_Array;
   function "=" (Left, Right : TransformInfoHttp_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References."=";
   subtype TransformInfoHttp_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References.TransformInfoHttp_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttp_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References."=";
   subtype TransformInfoHttp_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References.TransformInfoHttp_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoHttp_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References."=";
   subtype TransformInfoHttp_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References.TransformInfoHttp_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttp_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References."=";

   type TransformInfoHttp is new TransformInfo and TransformInfoHttpInterface with record
      TransformInfoHttp_Field_logUtil : LogUtil_Access;
      abContext : AbContext_Access;
   end record;

   procedure Initialize (This : in out TransformInfoHttp'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class; crud : Boolean);
   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class; crud : Boolean) return TransformInfoHttp_Access;
   procedure Initialize (This : in out TransformInfoHttp'Class; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoHttp_Access;
   procedure Initialize (This : in out TransformInfoHttp'Class; databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoHttp_Access;
   procedure Initialize (This : in out TransformInfoHttp'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoHttp_Access;
   procedure Initialize (This : in out TransformInfoHttp'Class; parentViewOfThisTransformInfoInterface_Param : access TransformInfoHttp_Package.TransformInfoHttp'Class);
   function Create (parentViewOfThisTransformInfoInterface_Param : access TransformInfoHttp_Package.TransformInfoHttp'Class) return TransformInfoHttp_Access;
   procedure set (This : in out TransformInfoHttp; hashMap_Param : access HashMap_Package.HashMap'Class);
   function getWeblisketSession (This : in out TransformInfoHttp) return WeblisketSessionInterface_Access;
   function getPageContext (This : in out TransformInfoHttp) return PageContext_Access;
   function getPropertiesHashMap (This : in out TransformInfoHttp) return HashMap_Access;
   function getTemplateFilePath (This : in out TransformInfoHttp) return AbPath_Access;
   function getObjectConfigFilePath (This : in out TransformInfoHttp) return AbPath_Access;
   function getDataFilePath (This : in out TransformInfoHttp) return AbPath_Access;

end org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;


