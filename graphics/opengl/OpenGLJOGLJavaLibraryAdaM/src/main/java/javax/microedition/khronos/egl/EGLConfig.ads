--  Generated Code Do Not Modify

with AllBinary_Java;
limited with javax.microedition.khronos.egl.EGLConfig_Package;
package javax.microedition.khronos.egl.EGLConfig_Package_References is
   type EGLConfig_Access is access all javax.microedition.khronos.egl.EGLConfig_Package.EGLConfig'Class;
   type EGLConfig_Access_Array is array (Natural range <>) of EGLConfig_Access;
   type EGLConfig_Access_Array_Access is access all EGLConfig_Access_Array;
   type EGLConfig_Access_Array_Access_Array is array (Natural range <>) of EGLConfig_Access_Array_Access;
   type EGLConfig_Access_Array_Access_Array_Access is access all EGLConfig_Access_Array_Access_Array;
   type EGLConfig_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EGLConfig_Access_Array_Access;
   end record;
   function Java_Box (Value : EGLConfig_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EGLConfig_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EGLConfig_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EGLConfig_Access_Array_Access is (if Value /= null and then Value.all in EGLConfig_Access_Array_Object'Class then EGLConfig_Access_Array_Object'Class (Value.all).Value else null);
   type EGLConfig_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EGLConfig_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : EGLConfig_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EGLConfig_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EGLConfig_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EGLConfig_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in EGLConfig_Access_Array_Access_Array_Object'Class then EGLConfig_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
   function Java_Box (Value : EGLConfig_Access_Array_Access) return Java_Object_Access renames javax.microedition.khronos.egl.EGLConfig_Package_References.Java_Box;
   function Java_Unbox_EGLConfig_Access_Array (Value : access Java_Object'Class) return EGLConfig_Access_Array_Access renames javax.microedition.khronos.egl.EGLConfig_Package_References.Java_Unbox_EGLConfig_Access_Array;
   subtype EGLConfig_Access_Array_Access_Array is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access_Array_Access_Array;
   function "=" (Left, Right : EGLConfig_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.egl.EGLConfig_Package_References."=";
   subtype EGLConfig_Access_Array_Access_Array_Access is javax.microedition.khronos.egl.EGLConfig_Package_References.EGLConfig_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EGLConfig_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.egl.EGLConfig_Package_References."=";
   function Java_Box (Value : EGLConfig_Access_Array_Access_Array_Access) return Java_Object_Access renames javax.microedition.khronos.egl.EGLConfig_Package_References.Java_Box;
   function Java_Unbox_EGLConfig_Access_Array_Access_Array (Value : access Java_Object'Class) return EGLConfig_Access_Array_Access_Array_Access renames javax.microedition.khronos.egl.EGLConfig_Package_References.Java_Unbox_EGLConfig_Access_Array_Access_Array;

   type EGLConfig is new Java_Object with null record;

   procedure Initialize (This : in out EGLConfig'Class);
   function Create return EGLConfig_Access;

end javax.microedition.khronos.egl.EGLConfig_Package;


