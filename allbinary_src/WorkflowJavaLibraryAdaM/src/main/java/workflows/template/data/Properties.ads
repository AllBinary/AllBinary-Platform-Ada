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
limited with workflows.template.data.Properties_Package;
package workflows.template.data.Properties_Package_References is
   type Properties_Access is access all workflows.template.data.Properties_Package.Properties'Class;
   type Properties_Access_Array is array (Natural range <>) of Properties_Access;
   type Properties_Access_Array_Access is access all Properties_Access_Array;
   type Properties_Access_Array_Access_Array is array (Natural range <>) of Properties_Access_Array_Access;
   type Properties_Access_Array_Access_Array_Access is access all Properties_Access_Array_Access_Array;
   type Properties_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Properties_Access_Array_Access;
   end record;
   function Java_Box (Value : Properties_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Properties_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Properties_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Properties_Access_Array_Access is (if Value /= null and then Value.all in Properties_Access_Array_Object'Class then Properties_Access_Array_Object'Class (Value.all).Value else null);
   type Properties_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Properties_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Properties_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Properties_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Properties_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Properties_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Properties_Access_Array_Access_Array_Object'Class then Properties_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end workflows.template.data.Properties_Package_References;

with workflows.template.data.Properties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.tagext.TagSupport_Package; use javax.servlet.jsp.tagext.TagSupport_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package workflows.template.data.Properties_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Properties_Access is workflows.template.data.Properties_Package_References.Properties_Access;
   function "=" (Left, Right : Properties_Access) return Boolean renames workflows.template.data.Properties_Package_References."=";
   subtype Properties_Access_Array is workflows.template.data.Properties_Package_References.Properties_Access_Array;
   function "=" (Left, Right : Properties_Access_Array) return Boolean renames workflows.template.data.Properties_Package_References."=";
   subtype Properties_Access_Array_Access is workflows.template.data.Properties_Package_References.Properties_Access_Array_Access;
   function "=" (Left, Right : Properties_Access_Array_Access) return Boolean renames workflows.template.data.Properties_Package_References."=";
   function Java_Box (Value : Properties_Access_Array_Access) return Java_Object_Access renames workflows.template.data.Properties_Package_References.Java_Box;
   function Java_Unbox_Properties_Access_Array (Value : access Java_Object'Class) return Properties_Access_Array_Access renames workflows.template.data.Properties_Package_References.Java_Unbox_Properties_Access_Array;
   subtype Properties_Access_Array_Access_Array is workflows.template.data.Properties_Package_References.Properties_Access_Array_Access_Array;
   function "=" (Left, Right : Properties_Access_Array_Access_Array) return Boolean renames workflows.template.data.Properties_Package_References."=";
   subtype Properties_Access_Array_Access_Array_Access is workflows.template.data.Properties_Package_References.Properties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Properties_Access_Array_Access_Array_Access) return Boolean renames workflows.template.data.Properties_Package_References."=";
   function Java_Box (Value : Properties_Access_Array_Access_Array_Access) return Java_Object_Access renames workflows.template.data.Properties_Package_References.Java_Box;
   function Java_Unbox_Properties_Access_Array_Access_Array (Value : access Java_Object'Class) return Properties_Access_Array_Access_Array_Access renames workflows.template.data.Properties_Package_References.Java_Unbox_Properties_Access_Array_Access_Array;

   type Properties is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out Properties'Class);
   function Create return Properties_Access;
   function getPropertiesHashMap (This : in out Properties) return HashMap_Access;
   function doEndTag (This : in out Properties) return Integer;

end workflows.template.data.Properties_Package;


