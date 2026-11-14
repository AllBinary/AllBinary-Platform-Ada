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

with AllBinary_Java;
limited with taghelpers.transform.info.TransformInfoHelperFactory_Package;
package taghelpers.transform.info.TransformInfoHelperFactory_Package_References is
   type TransformInfoHelperFactory_Access is access all taghelpers.transform.info.TransformInfoHelperFactory_Package.TransformInfoHelperFactory'Class;
   type TransformInfoHelperFactory_Access_Array is array (Natural range <>) of TransformInfoHelperFactory_Access;
   type TransformInfoHelperFactory_Access_Array_Access is access all TransformInfoHelperFactory_Access_Array;
   type TransformInfoHelperFactory_Access_Array_Access_Array is array (Natural range <>) of TransformInfoHelperFactory_Access_Array_Access;
   type TransformInfoHelperFactory_Access_Array_Access_Array_Access is access all TransformInfoHelperFactory_Access_Array_Access_Array;
   type TransformInfoHelperFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoHelperFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoHelperFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoHelperFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoHelperFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoHelperFactory_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoHelperFactory_Access_Array_Object'Class then TransformInfoHelperFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoHelperFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoHelperFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoHelperFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoHelperFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoHelperFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoHelperFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoHelperFactory_Access_Array_Access_Array_Object'Class then TransformInfoHelperFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end taghelpers.transform.info.TransformInfoHelperFactory_Package_References;

with taghelpers.transform.info.TransformInfoHelperFactory_Package_References;
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

package taghelpers.transform.info.TransformInfoHelperFactory_Package is

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


   subtype TransformInfoHelperFactory_Access is taghelpers.transform.info.TransformInfoHelperFactory_Package_References.TransformInfoHelperFactory_Access;
   function "=" (Left, Right : TransformInfoHelperFactory_Access) return Boolean renames taghelpers.transform.info.TransformInfoHelperFactory_Package_References."=";
   subtype TransformInfoHelperFactory_Access_Array is taghelpers.transform.info.TransformInfoHelperFactory_Package_References.TransformInfoHelperFactory_Access_Array;
   function "=" (Left, Right : TransformInfoHelperFactory_Access_Array) return Boolean renames taghelpers.transform.info.TransformInfoHelperFactory_Package_References."=";
   subtype TransformInfoHelperFactory_Access_Array_Access is taghelpers.transform.info.TransformInfoHelperFactory_Package_References.TransformInfoHelperFactory_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHelperFactory_Access_Array_Access) return Boolean renames taghelpers.transform.info.TransformInfoHelperFactory_Package_References."=";
   function Java_Box (Value : TransformInfoHelperFactory_Access_Array_Access) return Java_Object_Access renames taghelpers.transform.info.TransformInfoHelperFactory_Package_References.Java_Box;
   function Java_Unbox_TransformInfoHelperFactory_Access_Array (Value : access Java_Object'Class) return TransformInfoHelperFactory_Access_Array_Access renames taghelpers.transform.info.TransformInfoHelperFactory_Package_References.Java_Unbox_TransformInfoHelperFactory_Access_Array;
   subtype TransformInfoHelperFactory_Access_Array_Access_Array is taghelpers.transform.info.TransformInfoHelperFactory_Package_References.TransformInfoHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoHelperFactory_Access_Array_Access_Array) return Boolean renames taghelpers.transform.info.TransformInfoHelperFactory_Package_References."=";
   subtype TransformInfoHelperFactory_Access_Array_Access_Array_Access is taghelpers.transform.info.TransformInfoHelperFactory_Package_References.TransformInfoHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHelperFactory_Access_Array_Access_Array_Access) return Boolean renames taghelpers.transform.info.TransformInfoHelperFactory_Package_References."=";
   function Java_Box (Value : TransformInfoHelperFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames taghelpers.transform.info.TransformInfoHelperFactory_Package_References.Java_Box;
   function Java_Unbox_TransformInfoHelperFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoHelperFactory_Access_Array_Access_Array_Access renames taghelpers.transform.info.TransformInfoHelperFactory_Package_References.Java_Unbox_TransformInfoHelperFactory_Access_Array_Access_Array;

   type TransformInfoHelperFactory is new TagHelperFactory with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out TransformInfoHelperFactory'Class);
   function Create return TransformInfoHelperFactory_Access;
   function getInstance (This : in out TransformInfoHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out TransformInfoHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end taghelpers.transform.info.TransformInfoHelperFactory_Package;


