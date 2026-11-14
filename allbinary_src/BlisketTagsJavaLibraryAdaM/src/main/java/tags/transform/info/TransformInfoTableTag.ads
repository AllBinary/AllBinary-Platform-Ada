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
limited with tags.transform.info.TransformInfoTableTag_Package;
package tags.transform.info.TransformInfoTableTag_Package_References is
   type TransformInfoTableTag_Access is access all tags.transform.info.TransformInfoTableTag_Package.TransformInfoTableTag'Class;
   type TransformInfoTableTag_Access_Array is array (Natural range <>) of TransformInfoTableTag_Access;
   type TransformInfoTableTag_Access_Array_Access is access all TransformInfoTableTag_Access_Array;
   type TransformInfoTableTag_Access_Array_Access_Array is array (Natural range <>) of TransformInfoTableTag_Access_Array_Access;
   type TransformInfoTableTag_Access_Array_Access_Array_Access is access all TransformInfoTableTag_Access_Array_Access_Array;
   type TransformInfoTableTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoTableTag_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoTableTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoTableTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoTableTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoTableTag_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoTableTag_Access_Array_Object'Class then TransformInfoTableTag_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoTableTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoTableTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoTableTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoTableTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoTableTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoTableTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoTableTag_Access_Array_Access_Array_Object'Class then TransformInfoTableTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end tags.transform.info.TransformInfoTableTag_Package_References;

with tags.transform.info.TransformInfoTableTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package tags.transform.info.TransformInfoTableTag_Package is

   package TableTag_Package renames Standard.admin.tags.TableTag_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoTableTag_Access is tags.transform.info.TransformInfoTableTag_Package_References.TransformInfoTableTag_Access;
   function "=" (Left, Right : TransformInfoTableTag_Access) return Boolean renames tags.transform.info.TransformInfoTableTag_Package_References."=";
   subtype TransformInfoTableTag_Access_Array is tags.transform.info.TransformInfoTableTag_Package_References.TransformInfoTableTag_Access_Array;
   function "=" (Left, Right : TransformInfoTableTag_Access_Array) return Boolean renames tags.transform.info.TransformInfoTableTag_Package_References."=";
   subtype TransformInfoTableTag_Access_Array_Access is tags.transform.info.TransformInfoTableTag_Package_References.TransformInfoTableTag_Access_Array_Access;
   function "=" (Left, Right : TransformInfoTableTag_Access_Array_Access) return Boolean renames tags.transform.info.TransformInfoTableTag_Package_References."=";
   function Java_Box (Value : TransformInfoTableTag_Access_Array_Access) return Java_Object_Access renames tags.transform.info.TransformInfoTableTag_Package_References.Java_Box;
   function Java_Unbox_TransformInfoTableTag_Access_Array (Value : access Java_Object'Class) return TransformInfoTableTag_Access_Array_Access renames tags.transform.info.TransformInfoTableTag_Package_References.Java_Unbox_TransformInfoTableTag_Access_Array;
   subtype TransformInfoTableTag_Access_Array_Access_Array is tags.transform.info.TransformInfoTableTag_Package_References.TransformInfoTableTag_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoTableTag_Access_Array_Access_Array) return Boolean renames tags.transform.info.TransformInfoTableTag_Package_References."=";
   subtype TransformInfoTableTag_Access_Array_Access_Array_Access is tags.transform.info.TransformInfoTableTag_Package_References.TransformInfoTableTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoTableTag_Access_Array_Access_Array_Access) return Boolean renames tags.transform.info.TransformInfoTableTag_Package_References."=";
   function Java_Box (Value : TransformInfoTableTag_Access_Array_Access_Array_Access) return Java_Object_Access renames tags.transform.info.TransformInfoTableTag_Package_References.Java_Box;
   function Java_Unbox_TransformInfoTableTag_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoTableTag_Access_Array_Access_Array_Access renames tags.transform.info.TransformInfoTableTag_Package_References.Java_Unbox_TransformInfoTableTag_Access_Array_Access_Array;

   type TransformInfoTableTag is new TableTag with null record;

   procedure Initialize (This : in out TransformInfoTableTag'Class);
   function Create return TransformInfoTableTag_Access;

end tags.transform.info.TransformInfoTableTag_Package;


