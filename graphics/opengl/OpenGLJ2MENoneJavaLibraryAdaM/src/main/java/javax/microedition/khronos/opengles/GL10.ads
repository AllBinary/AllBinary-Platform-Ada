--  Generated Code Do Not Modify

limited with javax.microedition.khronos.opengles.GL10_Package;
package javax.microedition.khronos.opengles.GL10_Package_References is
   type GL10_Access is access all javax.microedition.khronos.opengles.GL10_Package.GL10'Class;
   type GL10_Access_Array is array (Natural range <>) of GL10_Access;
   type GL10_Access_Array_Access is access all GL10_Access_Array;
   type GL10_Access_Array_Access_Array is array (Natural range <>) of GL10_Access_Array_Access;
   type GL10_Access_Array_Access_Array_Access is access all GL10_Access_Array_Access_Array;
end javax.microedition.khronos.opengles.GL10_Package_References;

with javax.microedition.khronos.opengles.GL10_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;

package javax.microedition.khronos.opengles.GL10_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type GL10 is interface and GL;
   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   function "=" (Left, Right : GL10_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   function "=" (Left, Right : GL10_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   function "=" (Left, Right : GL10_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   function Java_Object_Access_From_GL10 (Value : GL10_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end javax.microedition.khronos.opengles.GL10_Package;


