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
limited with tags.PropertiesTag_Package;
package tags.PropertiesTag_Package_References is
   type PropertiesTag_Access is access all tags.PropertiesTag_Package.PropertiesTag'Class;
   type PropertiesTag_Access_Array is array (Natural range <>) of PropertiesTag_Access;
   type PropertiesTag_Access_Array_Access is access all PropertiesTag_Access_Array;
   type PropertiesTag_Access_Array_Access_Array is array (Natural range <>) of PropertiesTag_Access_Array_Access;
   type PropertiesTag_Access_Array_Access_Array_Access is access all PropertiesTag_Access_Array_Access_Array;
   type PropertiesTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PropertiesTag_Access_Array_Access;
   end record;
   function Java_Box (Value : PropertiesTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PropertiesTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PropertiesTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PropertiesTag_Access_Array_Access is (if Value /= null and then Value.all in PropertiesTag_Access_Array_Object'Class then PropertiesTag_Access_Array_Object'Class (Value.all).Value else null);
   type PropertiesTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PropertiesTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PropertiesTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PropertiesTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PropertiesTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PropertiesTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PropertiesTag_Access_Array_Access_Array_Object'Class then PropertiesTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end tags.PropertiesTag_Package_References;

with tags.PropertiesTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.CommandTag_Package; use tags.CommandTag_Package;

package tags.PropertiesTag_Package is

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


   subtype PropertiesTag_Access is tags.PropertiesTag_Package_References.PropertiesTag_Access;
   function "=" (Left, Right : PropertiesTag_Access) return Boolean renames tags.PropertiesTag_Package_References."=";
   subtype PropertiesTag_Access_Array is tags.PropertiesTag_Package_References.PropertiesTag_Access_Array;
   function "=" (Left, Right : PropertiesTag_Access_Array) return Boolean renames tags.PropertiesTag_Package_References."=";
   subtype PropertiesTag_Access_Array_Access is tags.PropertiesTag_Package_References.PropertiesTag_Access_Array_Access;
   function "=" (Left, Right : PropertiesTag_Access_Array_Access) return Boolean renames tags.PropertiesTag_Package_References."=";
   function Java_Box (Value : PropertiesTag_Access_Array_Access) return Java_Object_Access renames tags.PropertiesTag_Package_References.Java_Box;
   function Java_Unbox_PropertiesTag_Access_Array (Value : access Java_Object'Class) return PropertiesTag_Access_Array_Access renames tags.PropertiesTag_Package_References.Java_Unbox_PropertiesTag_Access_Array;
   subtype PropertiesTag_Access_Array_Access_Array is tags.PropertiesTag_Package_References.PropertiesTag_Access_Array_Access_Array;
   function "=" (Left, Right : PropertiesTag_Access_Array_Access_Array) return Boolean renames tags.PropertiesTag_Package_References."=";
   subtype PropertiesTag_Access_Array_Access_Array_Access is tags.PropertiesTag_Package_References.PropertiesTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PropertiesTag_Access_Array_Access_Array_Access) return Boolean renames tags.PropertiesTag_Package_References."=";
   function Java_Box (Value : PropertiesTag_Access_Array_Access_Array_Access) return Java_Object_Access renames tags.PropertiesTag_Package_References.Java_Box;
   function Java_Unbox_PropertiesTag_Access_Array_Access_Array (Value : access Java_Object'Class) return PropertiesTag_Access_Array_Access_Array_Access renames tags.PropertiesTag_Package_References.Java_Unbox_PropertiesTag_Access_Array_Access_Array;

   type PropertiesTag is new CommandTag with record
      logUtil : LogUtil_Access;
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out PropertiesTag'Class);
   function Create return PropertiesTag_Access;
   function getPropertiesHashMap (This : in out PropertiesTag) return HashMap_Access;
   function doEndTag (This : in out PropertiesTag) return Integer;

end tags.PropertiesTag_Package;


