--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package;
package org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References is
   type EnableFacesShaderOpenGLProcessor_Access is access all org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package.EnableFacesShaderOpenGLProcessor'Class;
   type EnableFacesShaderOpenGLProcessor_Access_Array is array (Natural range <>) of EnableFacesShaderOpenGLProcessor_Access;
   type EnableFacesShaderOpenGLProcessor_Access_Array_Access is access all EnableFacesShaderOpenGLProcessor_Access_Array;
   type EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array is array (Natural range <>) of EnableFacesShaderOpenGLProcessor_Access_Array_Access;
   type EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array_Access is access all EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array;
   type EnableFacesShaderOpenGLProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EnableFacesShaderOpenGLProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : EnableFacesShaderOpenGLProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EnableFacesShaderOpenGLProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EnableFacesShaderOpenGLProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EnableFacesShaderOpenGLProcessor_Access_Array_Access is (if Value /= null and then Value.all in EnableFacesShaderOpenGLProcessor_Access_Array_Object'Class then EnableFacesShaderOpenGLProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array_Object'Class then EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References;

with org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
with org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor_Package; use org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor_Package;

package org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package ObjectThreedOpenGLProcessor_Package renames Standard.org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor_Package;
   package Reference_Types is
   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   use type GL10_Access;
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   use type GL10_Access_Array;
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   use type GL10_Access_Array_Access;
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   use type GL10_Access_Array_Access_Array;
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   use type GL10_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype EnableFacesShaderOpenGLProcessor_Access is org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References.EnableFacesShaderOpenGLProcessor_Access;
   function "=" (Left, Right : EnableFacesShaderOpenGLProcessor_Access) return Boolean renames org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References."=";
   subtype EnableFacesShaderOpenGLProcessor_Access_Array is org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References.EnableFacesShaderOpenGLProcessor_Access_Array;
   function "=" (Left, Right : EnableFacesShaderOpenGLProcessor_Access_Array) return Boolean renames org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References."=";
   subtype EnableFacesShaderOpenGLProcessor_Access_Array_Access is org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References.EnableFacesShaderOpenGLProcessor_Access_Array_Access;
   function "=" (Left, Right : EnableFacesShaderOpenGLProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References."=";
   function Java_Box (Value : EnableFacesShaderOpenGLProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References.Java_Box;
   function Java_Unbox_EnableFacesShaderOpenGLProcessor_Access_Array (Value : access Java_Object'Class) return EnableFacesShaderOpenGLProcessor_Access_Array_Access renames org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References.Java_Unbox_EnableFacesShaderOpenGLProcessor_Access_Array;
   subtype EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References.EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References."=";
   subtype EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References.EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References."=";
   function Java_Box (Value : EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References.Java_Box;
   function Java_Unbox_EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package_References.Java_Unbox_EnableFacesShaderOpenGLProcessor_Access_Array_Access_Array;

   type EnableFacesShaderOpenGLProcessor is new ObjectThreedOpenGLProcessor with null record;
   instance : EnableFacesShaderOpenGLProcessor_Access;

   procedure Initialize (This : in out EnableFacesShaderOpenGLProcessor'Class);
   function Create return EnableFacesShaderOpenGLProcessor_Access;
   function getInstance return EnableFacesShaderOpenGLProcessor_Access;
   procedure process (This : in out EnableFacesShaderOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class; anyType_Param : access Java_Object'Class);

end org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package;


