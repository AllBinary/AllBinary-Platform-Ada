--  Generated Code Do Not Modify

limited with javax.microedition.khronos.egl.EGLConfig_Package;
package javax.microedition.khronos.egl.EGLConfig_Package_References is
   type EGLConfig_Access is access all javax.microedition.khronos.egl.EGLConfig_Package.EGLConfig'Class;
   type EGLConfig_Access_Array is array (Natural range <>) of EGLConfig_Access;
   type EGLConfig_Access_Array_Access is access all EGLConfig_Access_Array;
   type EGLConfig_Access_Array_Access_Array is array (Natural range <>) of EGLConfig_Access_Array_Access;
   type EGLConfig_Access_Array_Access_Array_Access is access all EGLConfig_Access_Array_Access_Array;
end javax.microedition.khronos.egl.EGLConfig_Package_References;

with javax.microedition.khronos.egl.EGLConfig_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package javax.microedition.khronos.egl.EGLConfig_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype EGLConfig_Access is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access;
   function "=" (Left, Right : EGLConfig_Access) return Boolean renames javax.microedition.khronos.egl.EGLConfig_Package_References."=";
   subtype EGLConfig_Access_Array is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access_Array;
   function "=" (Left, Right : EGLConfig_Access_Array) return Boolean renames javax.microedition.khronos.egl.EGLConfig_Package_References."=";
   subtype EGLConfig_Access_Array_Access is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access_Array_Access;
   function "=" (Left, Right : EGLConfig_Access_Array_Access) return Boolean renames javax.microedition.khronos.egl.EGLConfig_Package_References."=";
   subtype EGLConfig_Access_Array_Access_Array is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access_Array_Access_Array;
   function "=" (Left, Right : EGLConfig_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.egl.EGLConfig_Package_References."=";
   subtype EGLConfig_Access_Array_Access_Array_Access is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EGLConfig_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.egl.EGLConfig_Package_References."=";

   type EGLConfig is new Java_Object with null record;

   procedure Initialize (This : in out EGLConfig'Class);
   function Create return EGLConfig_Access;

end javax.microedition.khronos.egl.EGLConfig_Package;


