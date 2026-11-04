--  Generated Code Do Not Modify

limited with java.lang.annotation.Annotation_Package;
package java.lang.annotation.Annotation_Package_References is
   type Annotation_Access is access all java.lang.annotation.Annotation_Package.Annotation'Class;
   type Annotation_Access_Array is array (Natural range <>) of Annotation_Access;
   type Annotation_Access_Array_Access is access all Annotation_Access_Array;
   type Annotation_Access_Array_Access_Array is array (Natural range <>) of Annotation_Access_Array_Access;
   type Annotation_Access_Array_Access_Array_Access is access all Annotation_Access_Array_Access_Array;
end java.lang.annotation.Annotation_Package_References;

with java.lang.annotation.Annotation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package java.lang.annotation.Annotation_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type Annotation is interface;
   subtype Annotation_Access is java.lang.annotation.Annotation_Package_References.Annotation_Access;
   function "=" (Left, Right : Annotation_Access) return Boolean renames java.lang.annotation.Annotation_Package_References."=";
   subtype Annotation_Access_Array is java.lang.annotation.Annotation_Package_References.Annotation_Access_Array;
   function "=" (Left, Right : Annotation_Access_Array) return Boolean renames java.lang.annotation.Annotation_Package_References."=";
   subtype Annotation_Access_Array_Access is java.lang.annotation.Annotation_Package_References.Annotation_Access_Array_Access;
   function "=" (Left, Right : Annotation_Access_Array_Access) return Boolean renames java.lang.annotation.Annotation_Package_References."=";
   subtype Annotation_Access_Array_Access_Array is java.lang.annotation.Annotation_Package_References.Annotation_Access_Array_Access_Array;
   function "=" (Left, Right : Annotation_Access_Array_Access_Array) return Boolean renames java.lang.annotation.Annotation_Package_References."=";
   subtype Annotation_Access_Array_Access_Array_Access is java.lang.annotation.Annotation_Package_References.Annotation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Annotation_Access_Array_Access_Array_Access) return Boolean renames java.lang.annotation.Annotation_Package_References."=";
   function Java_Object_Access_From_Annotation (Value : Annotation_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function annotationType (This : in out Annotation) return Ada.Tags.Tag is abstract;

end java.lang.annotation.Annotation_Package;


