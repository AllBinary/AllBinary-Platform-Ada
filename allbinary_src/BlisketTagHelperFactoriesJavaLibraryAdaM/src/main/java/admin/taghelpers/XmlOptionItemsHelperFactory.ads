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

limited with admin.taghelpers.XmlOptionItemsHelperFactory_Package;
package admin.taghelpers.XmlOptionItemsHelperFactory_Package_References is
   type XmlOptionItemsHelperFactory_Access is access all admin.taghelpers.XmlOptionItemsHelperFactory_Package.XmlOptionItemsHelperFactory'Class;
   type XmlOptionItemsHelperFactory_Access_Array is array (Natural range <>) of XmlOptionItemsHelperFactory_Access;
   type XmlOptionItemsHelperFactory_Access_Array_Access is access all XmlOptionItemsHelperFactory_Access_Array;
   type XmlOptionItemsHelperFactory_Access_Array_Access_Array is array (Natural range <>) of XmlOptionItemsHelperFactory_Access_Array_Access;
   type XmlOptionItemsHelperFactory_Access_Array_Access_Array_Access is access all XmlOptionItemsHelperFactory_Access_Array_Access_Array;
end admin.taghelpers.XmlOptionItemsHelperFactory_Package_References;

with admin.taghelpers.XmlOptionItemsHelperFactory_Package_References;
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
with admin.taghelpers.TagHelperFactory_Package; use admin.taghelpers.TagHelperFactory_Package;

package admin.taghelpers.XmlOptionItemsHelperFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype XmlOptionItemsHelperFactory_Access is admin.taghelpers.XmlOptionItemsHelperFactory_Package_References.XmlOptionItemsHelperFactory_Access;
   function "=" (Left, Right : XmlOptionItemsHelperFactory_Access) return Boolean renames admin.taghelpers.XmlOptionItemsHelperFactory_Package_References."=";
   subtype XmlOptionItemsHelperFactory_Access_Array is admin.taghelpers.XmlOptionItemsHelperFactory_Package_References.XmlOptionItemsHelperFactory_Access_Array;
   function "=" (Left, Right : XmlOptionItemsHelperFactory_Access_Array) return Boolean renames admin.taghelpers.XmlOptionItemsHelperFactory_Package_References."=";
   subtype XmlOptionItemsHelperFactory_Access_Array_Access is admin.taghelpers.XmlOptionItemsHelperFactory_Package_References.XmlOptionItemsHelperFactory_Access_Array_Access;
   function "=" (Left, Right : XmlOptionItemsHelperFactory_Access_Array_Access) return Boolean renames admin.taghelpers.XmlOptionItemsHelperFactory_Package_References."=";
   subtype XmlOptionItemsHelperFactory_Access_Array_Access_Array is admin.taghelpers.XmlOptionItemsHelperFactory_Package_References.XmlOptionItemsHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : XmlOptionItemsHelperFactory_Access_Array_Access_Array) return Boolean renames admin.taghelpers.XmlOptionItemsHelperFactory_Package_References."=";
   subtype XmlOptionItemsHelperFactory_Access_Array_Access_Array_Access is admin.taghelpers.XmlOptionItemsHelperFactory_Package_References.XmlOptionItemsHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : XmlOptionItemsHelperFactory_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.XmlOptionItemsHelperFactory_Package_References."=";

   type XmlOptionItemsHelperFactory is new TagHelperFactory with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out XmlOptionItemsHelperFactory'Class);
   function Create return XmlOptionItemsHelperFactory_Access;
   function getInstance (This : in out XmlOptionItemsHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out XmlOptionItemsHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end admin.taghelpers.XmlOptionItemsHelperFactory_Package;


