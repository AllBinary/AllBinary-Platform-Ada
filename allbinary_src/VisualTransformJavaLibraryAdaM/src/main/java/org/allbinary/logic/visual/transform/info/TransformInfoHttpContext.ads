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

limited with org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package;
package org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package_References is
   type TransformInfoHttpContext_Access is access all org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package.TransformInfoHttpContext'Class;
   type TransformInfoHttpContext_Access_Array is array (Natural range <>) of TransformInfoHttpContext_Access;
   type TransformInfoHttpContext_Access_Array_Access is access all TransformInfoHttpContext_Access_Array;
   type TransformInfoHttpContext_Access_Array_Access_Array is array (Natural range <>) of TransformInfoHttpContext_Access_Array_Access;
   type TransformInfoHttpContext_Access_Array_Access_Array_Access is access all TransformInfoHttpContext_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
with org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
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


   subtype TransformInfoHttpContext_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package_References.TransformInfoHttpContext_Access;
   function "=" (Left, Right : TransformInfoHttpContext_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package_References."=";
   subtype TransformInfoHttpContext_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package_References.TransformInfoHttpContext_Access_Array;
   function "=" (Left, Right : TransformInfoHttpContext_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package_References."=";
   subtype TransformInfoHttpContext_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package_References.TransformInfoHttpContext_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttpContext_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package_References."=";
   subtype TransformInfoHttpContext_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package_References.TransformInfoHttpContext_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoHttpContext_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package_References."=";
   subtype TransformInfoHttpContext_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package_References.TransformInfoHttpContext_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttpContext_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package_References."=";

   type TransformInfoHttpContext is new TransformInfoHttp with record
      TransformInfoHttpContext_Field_logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out TransformInfoHttpContext'Class; databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoHttpContext_Access;
   procedure Initialize (This : in out TransformInfoHttpContext'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoHttpContext_Access;
   function getPath (This : in out TransformInfoHttpContext) return Unbounded_String;
   function getTemplateFilePath (This : in out TransformInfoHttpContext) return AbPath_Access;
   function getObjectConfigFilePath (This : in out TransformInfoHttpContext) return AbPath_Access;
   function getDataFilePath (This : in out TransformInfoHttpContext) return AbPath_Access;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package;


