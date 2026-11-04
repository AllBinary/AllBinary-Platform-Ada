--  Generated Code Do Not Modify

limited with org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package;
package org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References is
   type ShaderOpenGLProcessor_Access is access all org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package.ShaderOpenGLProcessor'Class;
   type ShaderOpenGLProcessor_Access_Array is array (Natural range <>) of ShaderOpenGLProcessor_Access;
   type ShaderOpenGLProcessor_Access_Array_Access is access all ShaderOpenGLProcessor_Access_Array;
   type ShaderOpenGLProcessor_Access_Array_Access_Array is array (Natural range <>) of ShaderOpenGLProcessor_Access_Array_Access;
   type ShaderOpenGLProcessor_Access_Array_Access_Array_Access is access all ShaderOpenGLProcessor_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References;

with org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References;
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
with org.allbinary.graphics.opengles.OpenGLProcessor_Package; use org.allbinary.graphics.opengles.OpenGLProcessor_Package;

package org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package OpenGLProcessor_Package renames Standard.org.allbinary.graphics.opengles.OpenGLProcessor_Package;
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


   subtype ShaderOpenGLProcessor_Access is org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References.ShaderOpenGLProcessor_Access;
   function "=" (Left, Right : ShaderOpenGLProcessor_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References."=";
   subtype ShaderOpenGLProcessor_Access_Array is org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References.ShaderOpenGLProcessor_Access_Array;
   function "=" (Left, Right : ShaderOpenGLProcessor_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References."=";
   subtype ShaderOpenGLProcessor_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References.ShaderOpenGLProcessor_Access_Array_Access;
   function "=" (Left, Right : ShaderOpenGLProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References."=";
   subtype ShaderOpenGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References.ShaderOpenGLProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : ShaderOpenGLProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References."=";
   subtype ShaderOpenGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References.ShaderOpenGLProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShaderOpenGLProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package_References."=";

   type ShaderOpenGLProcessor is new OpenGLProcessor with null record;

   procedure Initialize (This : in out ShaderOpenGLProcessor'Class);
   function Create return ShaderOpenGLProcessor_Access;
   procedure process0 (This : in out ShaderOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class);
   procedure process1 (This : in out ShaderOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class);
   procedure process (This : in out ShaderOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class);
   procedure process2 (This : in out ShaderOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class);
   procedure process3 (This : in out ShaderOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class);

end org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package;


