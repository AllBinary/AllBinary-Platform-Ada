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

limited with taghelpers.transform.info.TransformInfoHelper_Package;
package taghelpers.transform.info.TransformInfoHelper_Package_References is
   type TransformInfoHelper_Access is access all taghelpers.transform.info.TransformInfoHelper_Package.TransformInfoHelper'Class;
   type TransformInfoHelper_Access_Array is array (Natural range <>) of TransformInfoHelper_Access;
   type TransformInfoHelper_Access_Array_Access is access all TransformInfoHelper_Access_Array;
   type TransformInfoHelper_Access_Array_Access_Array is array (Natural range <>) of TransformInfoHelper_Access_Array_Access;
   type TransformInfoHelper_Access_Array_Access_Array_Access is access all TransformInfoHelper_Access_Array_Access_Array;
end taghelpers.transform.info.TransformInfoHelper_Package_References;

with taghelpers.transform.info.TransformInfoHelper_Package_References;
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
with admin.taghelpers.BasicTable_Package; use admin.taghelpers.BasicTable_Package;
limited with org.allbinary.business.installer.Portion_Package;
with org.allbinary.business.installer.Portion_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package taghelpers.transform.info.TransformInfoHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicTable_Package renames Standard.admin.taghelpers.BasicTable_Package;
   package Portion_Package renames Standard.org.allbinary.business.installer.Portion_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype Portion_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access;
   use type Portion_Access;
   subtype Portion_Access_Array is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array;
   use type Portion_Access_Array;
   subtype Portion_Access_Array_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access;
   use type Portion_Access_Array_Access;
   subtype Portion_Access_Array_Access_Array is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access_Array;
   use type Portion_Access_Array_Access_Array;
   subtype Portion_Access_Array_Access_Array_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access_Array_Access;
   use type Portion_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoHelper_Access is taghelpers.transform.info.TransformInfoHelper_Package_References.TransformInfoHelper_Access;
   function "=" (Left, Right : TransformInfoHelper_Access) return Boolean renames taghelpers.transform.info.TransformInfoHelper_Package_References."=";
   subtype TransformInfoHelper_Access_Array is taghelpers.transform.info.TransformInfoHelper_Package_References.TransformInfoHelper_Access_Array;
   function "=" (Left, Right : TransformInfoHelper_Access_Array) return Boolean renames taghelpers.transform.info.TransformInfoHelper_Package_References."=";
   subtype TransformInfoHelper_Access_Array_Access is taghelpers.transform.info.TransformInfoHelper_Package_References.TransformInfoHelper_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHelper_Access_Array_Access) return Boolean renames taghelpers.transform.info.TransformInfoHelper_Package_References."=";
   subtype TransformInfoHelper_Access_Array_Access_Array is taghelpers.transform.info.TransformInfoHelper_Package_References.TransformInfoHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoHelper_Access_Array_Access_Array) return Boolean renames taghelpers.transform.info.TransformInfoHelper_Package_References."=";
   subtype TransformInfoHelper_Access_Array_Access_Array_Access is taghelpers.transform.info.TransformInfoHelper_Package_References.TransformInfoHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHelper_Access_Array_Access_Array_Access) return Boolean renames taghelpers.transform.info.TransformInfoHelper_Package_References."=";

   type TransformInfoHelper is new BasicTable with record
      logUtil : LogUtil_Access;
      portion : Portion_Access;
   end record;

   procedure Initialize (This : in out TransformInfoHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoHelper_Access;
   function drop (This : in out TransformInfoHelper) return Unbounded_String;
   function create (This : in out TransformInfoHelper) return Unbounded_String;
   function restore (This : in out TransformInfoHelper) return Unbounded_String;
   function backup (This : in out TransformInfoHelper) return Unbounded_String;

end taghelpers.transform.info.TransformInfoHelper_Package;


