--  Generated Code Do Not Modify

limited with org.allbinary.graphics.opengles.OpenGLProcessor_Package;
package org.allbinary.graphics.opengles.OpenGLProcessor_Package_References is
   type OpenGLProcessor_Access is access all org.allbinary.graphics.opengles.OpenGLProcessor_Package.OpenGLProcessor'Class;
   type OpenGLProcessor_Access_Array is array (Natural range <>) of OpenGLProcessor_Access;
   type OpenGLProcessor_Access_Array_Access is access all OpenGLProcessor_Access_Array;
   type OpenGLProcessor_Access_Array_Access_Array is array (Natural range <>) of OpenGLProcessor_Access_Array_Access;
   type OpenGLProcessor_Access_Array_Access_Array_Access is access all OpenGLProcessor_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.OpenGLProcessor_Package_References;

with org.allbinary.graphics.opengles.OpenGLProcessor_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.graphics.opengles.OpenGLProcessor_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLProcessor_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access;
   function "=" (Left, Right : OpenGLProcessor_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLProcessor_Package_References."=";
   subtype OpenGLProcessor_Access_Array is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array;
   function "=" (Left, Right : OpenGLProcessor_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLProcessor_Package_References."=";
   subtype OpenGLProcessor_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access;
   function "=" (Left, Right : OpenGLProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLProcessor_Package_References."=";
   subtype OpenGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLProcessor_Package_References."=";
   subtype OpenGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLProcessor_Package_References."=";

   type OpenGLProcessor is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out OpenGLProcessor'Class);
   function Create return OpenGLProcessor_Access;
   procedure process (This : in out OpenGLProcessor; gl_Param : access GL10_Package.GL10'Class);

end org.allbinary.graphics.opengles.OpenGLProcessor_Package;


