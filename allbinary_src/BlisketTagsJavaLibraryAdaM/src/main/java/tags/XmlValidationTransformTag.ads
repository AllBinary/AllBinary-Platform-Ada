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

limited with tags.XmlValidationTransformTag_Package;
package tags.XmlValidationTransformTag_Package_References is
   type XmlValidationTransformTag_Access is access all tags.XmlValidationTransformTag_Package.XmlValidationTransformTag'Class;
   type XmlValidationTransformTag_Access_Array is array (Natural range <>) of XmlValidationTransformTag_Access;
   type XmlValidationTransformTag_Access_Array_Access is access all XmlValidationTransformTag_Access_Array;
   type XmlValidationTransformTag_Access_Array_Access_Array is array (Natural range <>) of XmlValidationTransformTag_Access_Array_Access;
   type XmlValidationTransformTag_Access_Array_Access_Array_Access is access all XmlValidationTransformTag_Access_Array_Access_Array;
end tags.XmlValidationTransformTag_Package_References;

with tags.XmlValidationTransformTag_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.TransformTag_Package; use tags.TransformTag_Package;

package tags.XmlValidationTransformTag_Package is

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


   subtype XmlValidationTransformTag_Access is tags.XmlValidationTransformTag_Package_References.XmlValidationTransformTag_Access;
   function "=" (Left, Right : XmlValidationTransformTag_Access) return Boolean renames tags.XmlValidationTransformTag_Package_References."=";
   subtype XmlValidationTransformTag_Access_Array is tags.XmlValidationTransformTag_Package_References.XmlValidationTransformTag_Access_Array;
   function "=" (Left, Right : XmlValidationTransformTag_Access_Array) return Boolean renames tags.XmlValidationTransformTag_Package_References."=";
   subtype XmlValidationTransformTag_Access_Array_Access is tags.XmlValidationTransformTag_Package_References.XmlValidationTransformTag_Access_Array_Access;
   function "=" (Left, Right : XmlValidationTransformTag_Access_Array_Access) return Boolean renames tags.XmlValidationTransformTag_Package_References."=";
   subtype XmlValidationTransformTag_Access_Array_Access_Array is tags.XmlValidationTransformTag_Package_References.XmlValidationTransformTag_Access_Array_Access_Array;
   function "=" (Left, Right : XmlValidationTransformTag_Access_Array_Access_Array) return Boolean renames tags.XmlValidationTransformTag_Package_References."=";
   subtype XmlValidationTransformTag_Access_Array_Access_Array_Access is tags.XmlValidationTransformTag_Package_References.XmlValidationTransformTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : XmlValidationTransformTag_Access_Array_Access_Array_Access) return Boolean renames tags.XmlValidationTransformTag_Package_References."=";

   type XmlValidationTransformTag is new TransformTag with record
      XmlValidationTransformTag_Field_logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out XmlValidationTransformTag'Class);
   function Create return XmlValidationTransformTag_Access;
   function isValid (This : in out XmlValidationTransformTag) return Boolean;
   function doStartTag (This : in out XmlValidationTransformTag) return Integer;

end tags.XmlValidationTransformTag_Package;


