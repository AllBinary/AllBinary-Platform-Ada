--  Generated Code Do Not Modify

with AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL_Package;
package javax.microedition.khronos.opengles.GL_Package_References is
   type GL_Access is access all javax.microedition.khronos.opengles.GL_Package.GL'Class;
   type GL_Access_Array is array (Natural range <>) of GL_Access;
   type GL_Access_Array_Access is access all GL_Access_Array;
   type GL_Access_Array_Access_Array is array (Natural range <>) of GL_Access_Array_Access;
   type GL_Access_Array_Access_Array_Access is access all GL_Access_Array_Access_Array;
   type GL_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GL_Access_Array_Access;
   end record;
   function Java_Box (Value : GL_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GL_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GL_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GL_Access_Array_Access is (if Value /= null and then Value.all in GL_Access_Array_Object'Class then GL_Access_Array_Object'Class (Value.all).Value else null);
   type GL_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GL_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GL_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GL_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GL_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GL_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GL_Access_Array_Access_Array_Object'Class then GL_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end javax.microedition.khronos.opengles.GL_Package_References;

with javax.microedition.khronos.opengles.GL_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package javax.microedition.khronos.opengles.GL_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type GL is interface;
   subtype GL_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access;
   function "=" (Left, Right : GL_Access) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array;
   function "=" (Left, Right : GL_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access;
   function "=" (Left, Right : GL_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   function Java_Box (Value : GL_Access_Array_Access) return Java_Object_Access renames javax.microedition.khronos.opengles.GL_Package_References.Java_Box;
   function Java_Unbox_GL_Access_Array (Value : access Java_Object'Class) return GL_Access_Array_Access renames javax.microedition.khronos.opengles.GL_Package_References.Java_Unbox_GL_Access_Array;
   subtype GL_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array;
   function "=" (Left, Right : GL_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GL_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   function Java_Box (Value : GL_Access_Array_Access_Array_Access) return Java_Object_Access renames javax.microedition.khronos.opengles.GL_Package_References.Java_Box;
   function Java_Unbox_GL_Access_Array_Access_Array (Value : access Java_Object'Class) return GL_Access_Array_Access_Array_Access renames javax.microedition.khronos.opengles.GL_Package_References.Java_Unbox_GL_Access_Array_Access_Array;
   function Java_Object_Access_From_GL (Value : GL_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end javax.microedition.khronos.opengles.GL_Package;


