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
limited with taghelpers.transform.info.TransformInfoRequestHelper_Package;
package taghelpers.transform.info.TransformInfoRequestHelper_Package_References is
   type TransformInfoRequestHelper_Access is access all taghelpers.transform.info.TransformInfoRequestHelper_Package.TransformInfoRequestHelper'Class;
   type TransformInfoRequestHelper_Access_Array is array (Natural range <>) of TransformInfoRequestHelper_Access;
   type TransformInfoRequestHelper_Access_Array_Access is access all TransformInfoRequestHelper_Access_Array;
   type TransformInfoRequestHelper_Access_Array_Access_Array is array (Natural range <>) of TransformInfoRequestHelper_Access_Array_Access;
   type TransformInfoRequestHelper_Access_Array_Access_Array_Access is access all TransformInfoRequestHelper_Access_Array_Access_Array;
   type TransformInfoRequestHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoRequestHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoRequestHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoRequestHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoRequestHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoRequestHelper_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoRequestHelper_Access_Array_Object'Class then TransformInfoRequestHelper_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoRequestHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoRequestHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoRequestHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoRequestHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoRequestHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoRequestHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoRequestHelper_Access_Array_Access_Array_Object'Class then TransformInfoRequestHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end taghelpers.transform.info.TransformInfoRequestHelper_Package_References;

with taghelpers.transform.info.TransformInfoRequestHelper_Package_References;
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
with admin.taghelpers.ModifyTable_Package; use admin.taghelpers.ModifyTable_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References;

package taghelpers.transform.info.TransformInfoRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package ModifyTable_Package renames Standard.admin.taghelpers.ModifyTable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
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
   subtype TransformInfoHttpInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.TransformInfoHttpInterface_Access;
   use type TransformInfoHttpInterface_Access;
   subtype TransformInfoHttpInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.TransformInfoHttpInterface_Access_Array;
   use type TransformInfoHttpInterface_Access_Array;
   subtype TransformInfoHttpInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.TransformInfoHttpInterface_Access_Array_Access;
   use type TransformInfoHttpInterface_Access_Array_Access;
   subtype TransformInfoHttpInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.TransformInfoHttpInterface_Access_Array_Access_Array;
   use type TransformInfoHttpInterface_Access_Array_Access_Array;
   subtype TransformInfoHttpInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.TransformInfoHttpInterface_Access_Array_Access_Array_Access;
   use type TransformInfoHttpInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoRequestHelper_Access is taghelpers.transform.info.TransformInfoRequestHelper_Package_References.TransformInfoRequestHelper_Access;
   function "=" (Left, Right : TransformInfoRequestHelper_Access) return Boolean renames taghelpers.transform.info.TransformInfoRequestHelper_Package_References."=";
   subtype TransformInfoRequestHelper_Access_Array is taghelpers.transform.info.TransformInfoRequestHelper_Package_References.TransformInfoRequestHelper_Access_Array;
   function "=" (Left, Right : TransformInfoRequestHelper_Access_Array) return Boolean renames taghelpers.transform.info.TransformInfoRequestHelper_Package_References."=";
   subtype TransformInfoRequestHelper_Access_Array_Access is taghelpers.transform.info.TransformInfoRequestHelper_Package_References.TransformInfoRequestHelper_Access_Array_Access;
   function "=" (Left, Right : TransformInfoRequestHelper_Access_Array_Access) return Boolean renames taghelpers.transform.info.TransformInfoRequestHelper_Package_References."=";
   function Java_Box (Value : TransformInfoRequestHelper_Access_Array_Access) return Java_Object_Access renames taghelpers.transform.info.TransformInfoRequestHelper_Package_References.Java_Box;
   function Java_Unbox_TransformInfoRequestHelper_Access_Array (Value : access Java_Object'Class) return TransformInfoRequestHelper_Access_Array_Access renames taghelpers.transform.info.TransformInfoRequestHelper_Package_References.Java_Unbox_TransformInfoRequestHelper_Access_Array;
   subtype TransformInfoRequestHelper_Access_Array_Access_Array is taghelpers.transform.info.TransformInfoRequestHelper_Package_References.TransformInfoRequestHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoRequestHelper_Access_Array_Access_Array) return Boolean renames taghelpers.transform.info.TransformInfoRequestHelper_Package_References."=";
   subtype TransformInfoRequestHelper_Access_Array_Access_Array_Access is taghelpers.transform.info.TransformInfoRequestHelper_Package_References.TransformInfoRequestHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoRequestHelper_Access_Array_Access_Array_Access) return Boolean renames taghelpers.transform.info.TransformInfoRequestHelper_Package_References."=";
   function Java_Box (Value : TransformInfoRequestHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames taghelpers.transform.info.TransformInfoRequestHelper_Package_References.Java_Box;
   function Java_Unbox_TransformInfoRequestHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoRequestHelper_Access_Array_Access_Array_Access renames taghelpers.transform.info.TransformInfoRequestHelper_Package_References.Java_Unbox_TransformInfoRequestHelper_Access_Array_Access_Array;

   type TransformInfoRequestHelper is new ModifyTable with record
      logUtil : LogUtil_Access;
      transformInfoInterface : TransformInfoHttpInterface_Access;
   end record;

   procedure Initialize (This : in out TransformInfoRequestHelper'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoRequestHelper_Access;
   function update (This : in out TransformInfoRequestHelper) return Unbounded_String;
   function insert (This : in out TransformInfoRequestHelper) return Unbounded_String;
   function delete (This : in out TransformInfoRequestHelper) return Unbounded_String;

end taghelpers.transform.info.TransformInfoRequestHelper_Package;


