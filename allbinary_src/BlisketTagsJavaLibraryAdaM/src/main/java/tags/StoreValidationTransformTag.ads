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
limited with tags.StoreValidationTransformTag_Package;
package tags.StoreValidationTransformTag_Package_References is
   type StoreValidationTransformTag_Access is access all tags.StoreValidationTransformTag_Package.StoreValidationTransformTag'Class;
   type StoreValidationTransformTag_Access_Array is array (Natural range <>) of StoreValidationTransformTag_Access;
   type StoreValidationTransformTag_Access_Array_Access is access all StoreValidationTransformTag_Access_Array;
   type StoreValidationTransformTag_Access_Array_Access_Array is array (Natural range <>) of StoreValidationTransformTag_Access_Array_Access;
   type StoreValidationTransformTag_Access_Array_Access_Array_Access is access all StoreValidationTransformTag_Access_Array_Access_Array;
   type StoreValidationTransformTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreValidationTransformTag_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreValidationTransformTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreValidationTransformTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreValidationTransformTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreValidationTransformTag_Access_Array_Access is (if Value /= null and then Value.all in StoreValidationTransformTag_Access_Array_Object'Class then StoreValidationTransformTag_Access_Array_Object'Class (Value.all).Value else null);
   type StoreValidationTransformTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreValidationTransformTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreValidationTransformTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreValidationTransformTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreValidationTransformTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreValidationTransformTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreValidationTransformTag_Access_Array_Access_Array_Object'Class then StoreValidationTransformTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end tags.StoreValidationTransformTag_Package_References;

with tags.StoreValidationTransformTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.ValidationTransformTag_Package; use tags.ValidationTransformTag_Package;

package tags.StoreValidationTransformTag_Package is

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


   subtype StoreValidationTransformTag_Access is tags.StoreValidationTransformTag_Package_References.StoreValidationTransformTag_Access;
   function "=" (Left, Right : StoreValidationTransformTag_Access) return Boolean renames tags.StoreValidationTransformTag_Package_References."=";
   subtype StoreValidationTransformTag_Access_Array is tags.StoreValidationTransformTag_Package_References.StoreValidationTransformTag_Access_Array;
   function "=" (Left, Right : StoreValidationTransformTag_Access_Array) return Boolean renames tags.StoreValidationTransformTag_Package_References."=";
   subtype StoreValidationTransformTag_Access_Array_Access is tags.StoreValidationTransformTag_Package_References.StoreValidationTransformTag_Access_Array_Access;
   function "=" (Left, Right : StoreValidationTransformTag_Access_Array_Access) return Boolean renames tags.StoreValidationTransformTag_Package_References."=";
   function Java_Box (Value : StoreValidationTransformTag_Access_Array_Access) return Java_Object_Access renames tags.StoreValidationTransformTag_Package_References.Java_Box;
   function Java_Unbox_StoreValidationTransformTag_Access_Array (Value : access Java_Object'Class) return StoreValidationTransformTag_Access_Array_Access renames tags.StoreValidationTransformTag_Package_References.Java_Unbox_StoreValidationTransformTag_Access_Array;
   subtype StoreValidationTransformTag_Access_Array_Access_Array is tags.StoreValidationTransformTag_Package_References.StoreValidationTransformTag_Access_Array_Access_Array;
   function "=" (Left, Right : StoreValidationTransformTag_Access_Array_Access_Array) return Boolean renames tags.StoreValidationTransformTag_Package_References."=";
   subtype StoreValidationTransformTag_Access_Array_Access_Array_Access is tags.StoreValidationTransformTag_Package_References.StoreValidationTransformTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreValidationTransformTag_Access_Array_Access_Array_Access) return Boolean renames tags.StoreValidationTransformTag_Package_References."=";
   function Java_Box (Value : StoreValidationTransformTag_Access_Array_Access_Array_Access) return Java_Object_Access renames tags.StoreValidationTransformTag_Package_References.Java_Box;
   function Java_Unbox_StoreValidationTransformTag_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreValidationTransformTag_Access_Array_Access_Array_Access renames tags.StoreValidationTransformTag_Package_References.Java_Unbox_StoreValidationTransformTag_Access_Array_Access_Array;

   type StoreValidationTransformTag is new ValidationTransformTag with record
      StoreValidationTransformTag_Field_logUtil : LogUtil_Access;
      StoreValidationTransformTag_Field_storeName : Unbounded_String;
   end record;

   procedure Initialize (This : in out StoreValidationTransformTag'Class);
   function Create return StoreValidationTransformTag_Access;
   procedure setStoreName (This : in out StoreValidationTransformTag; value : Unbounded_String);
   function doStartTag (This : in out StoreValidationTransformTag) return Integer;

end tags.StoreValidationTransformTag_Package;


