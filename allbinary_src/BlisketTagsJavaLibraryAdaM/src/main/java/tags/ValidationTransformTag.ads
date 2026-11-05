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

limited with tags.ValidationTransformTag_Package;
package tags.ValidationTransformTag_Package_References is
   type ValidationTransformTag_Access is access all tags.ValidationTransformTag_Package.ValidationTransformTag'Class;
   type ValidationTransformTag_Access_Array is array (Natural range <>) of ValidationTransformTag_Access;
   type ValidationTransformTag_Access_Array_Access is access all ValidationTransformTag_Access_Array;
   type ValidationTransformTag_Access_Array_Access_Array is array (Natural range <>) of ValidationTransformTag_Access_Array_Access;
   type ValidationTransformTag_Access_Array_Access_Array_Access is access all ValidationTransformTag_Access_Array_Access_Array;
end tags.ValidationTransformTag_Package_References;

with tags.ValidationTransformTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.TransformTag_Package; use tags.TransformTag_Package;

package tags.ValidationTransformTag_Package is

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


   subtype ValidationTransformTag_Access is tags.ValidationTransformTag_Package_References.ValidationTransformTag_Access;
   function "=" (Left, Right : ValidationTransformTag_Access) return Boolean renames tags.ValidationTransformTag_Package_References."=";
   subtype ValidationTransformTag_Access_Array is tags.ValidationTransformTag_Package_References.ValidationTransformTag_Access_Array;
   function "=" (Left, Right : ValidationTransformTag_Access_Array) return Boolean renames tags.ValidationTransformTag_Package_References."=";
   subtype ValidationTransformTag_Access_Array_Access is tags.ValidationTransformTag_Package_References.ValidationTransformTag_Access_Array_Access;
   function "=" (Left, Right : ValidationTransformTag_Access_Array_Access) return Boolean renames tags.ValidationTransformTag_Package_References."=";
   subtype ValidationTransformTag_Access_Array_Access_Array is tags.ValidationTransformTag_Package_References.ValidationTransformTag_Access_Array_Access_Array;
   function "=" (Left, Right : ValidationTransformTag_Access_Array_Access_Array) return Boolean renames tags.ValidationTransformTag_Package_References."=";
   subtype ValidationTransformTag_Access_Array_Access_Array_Access is tags.ValidationTransformTag_Package_References.ValidationTransformTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ValidationTransformTag_Access_Array_Access_Array_Access) return Boolean renames tags.ValidationTransformTag_Package_References."=";

   type ValidationTransformTag is new TransformTag with record
      ValidationTransformTag_Field_logUtil : LogUtil_Access;
      xslFile : Unbounded_String;
      logic : Boolean;
   end record;

   procedure Initialize (This : in out ValidationTransformTag'Class);
   function Create return ValidationTransformTag_Access;
   procedure setXsl (This : in out ValidationTransformTag; value : Unbounded_String);
   procedure setLogic (This : in out ValidationTransformTag; logic : Boolean);
   function isValid (This : in out ValidationTransformTag) return Boolean;
   function validationInfo (This : in out ValidationTransformTag) return Unbounded_String;
   function doStartTag (This : in out ValidationTransformTag) return Integer;
   function doEndTag (This : in out ValidationTransformTag) return Integer;

end tags.ValidationTransformTag_Package;


