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

limited with taghelpers.ValidatedViewHelperFactory_Package;
package taghelpers.ValidatedViewHelperFactory_Package_References is
   type ValidatedViewHelperFactory_Access is access all taghelpers.ValidatedViewHelperFactory_Package.ValidatedViewHelperFactory'Class;
   type ValidatedViewHelperFactory_Access_Array is array (Natural range <>) of ValidatedViewHelperFactory_Access;
   type ValidatedViewHelperFactory_Access_Array_Access is access all ValidatedViewHelperFactory_Access_Array;
   type ValidatedViewHelperFactory_Access_Array_Access_Array is array (Natural range <>) of ValidatedViewHelperFactory_Access_Array_Access;
   type ValidatedViewHelperFactory_Access_Array_Access_Array_Access is access all ValidatedViewHelperFactory_Access_Array_Access_Array;
end taghelpers.ValidatedViewHelperFactory_Package_References;

with taghelpers.ValidatedViewHelperFactory_Package_References;
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
with admin.taghelpers.TagHelperFactory_Package; use admin.taghelpers.TagHelperFactory_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package taghelpers.ValidatedViewHelperFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package TagHelperFactory_Package renames Standard.admin.taghelpers.TagHelperFactory_Package;
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


   subtype ValidatedViewHelperFactory_Access is taghelpers.ValidatedViewHelperFactory_Package_References.ValidatedViewHelperFactory_Access;
   function "=" (Left, Right : ValidatedViewHelperFactory_Access) return Boolean renames taghelpers.ValidatedViewHelperFactory_Package_References."=";
   subtype ValidatedViewHelperFactory_Access_Array is taghelpers.ValidatedViewHelperFactory_Package_References.ValidatedViewHelperFactory_Access_Array;
   function "=" (Left, Right : ValidatedViewHelperFactory_Access_Array) return Boolean renames taghelpers.ValidatedViewHelperFactory_Package_References."=";
   subtype ValidatedViewHelperFactory_Access_Array_Access is taghelpers.ValidatedViewHelperFactory_Package_References.ValidatedViewHelperFactory_Access_Array_Access;
   function "=" (Left, Right : ValidatedViewHelperFactory_Access_Array_Access) return Boolean renames taghelpers.ValidatedViewHelperFactory_Package_References."=";
   subtype ValidatedViewHelperFactory_Access_Array_Access_Array is taghelpers.ValidatedViewHelperFactory_Package_References.ValidatedViewHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ValidatedViewHelperFactory_Access_Array_Access_Array) return Boolean renames taghelpers.ValidatedViewHelperFactory_Package_References."=";
   subtype ValidatedViewHelperFactory_Access_Array_Access_Array_Access is taghelpers.ValidatedViewHelperFactory_Package_References.ValidatedViewHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ValidatedViewHelperFactory_Access_Array_Access_Array_Access) return Boolean renames taghelpers.ValidatedViewHelperFactory_Package_References."=";

   type ValidatedViewHelperFactory is new TagHelperFactory with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out ValidatedViewHelperFactory'Class);
   function Create return ValidatedViewHelperFactory_Access;
   function getInstance (This : in out ValidatedViewHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out ValidatedViewHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end taghelpers.ValidatedViewHelperFactory_Package;


