-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package;
package org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package_References is
   type OpenGLESDeviceImageTranslate_Access is access all org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package.OpenGLESDeviceImageTranslate'Class;
   type OpenGLESDeviceImageTranslate_Access_Array is array (Natural range <>) of OpenGLESDeviceImageTranslate_Access;
   type OpenGLESDeviceImageTranslate_Access_Array_Access is access all OpenGLESDeviceImageTranslate_Access_Array;
   type OpenGLESDeviceImageTranslate_Access_Array_Access_Array is array (Natural range <>) of OpenGLESDeviceImageTranslate_Access_Array_Access;
   type OpenGLESDeviceImageTranslate_Access_Array_Access_Array_Access is access all OpenGLESDeviceImageTranslate_Access_Array_Access_Array;
end org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package_References;

with org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package_References;
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
with org.allbinary.image.opengles.OpenGLESImageTranslate_Package; use org.allbinary.image.opengles.OpenGLESImageTranslate_Package;
limited with org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package_References;

package org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
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
   subtype OpenGLESImage_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access;
   use type OpenGLESImage_Access;
   subtype OpenGLESImage_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array;
   use type OpenGLESImage_Access_Array;
   subtype OpenGLESImage_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access;
   use type OpenGLESImage_Access_Array_Access;
   subtype OpenGLESImage_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array;
   use type OpenGLESImage_Access_Array_Access_Array;
   subtype OpenGLESImage_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array_Access;
   use type OpenGLESImage_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLESDeviceImageTranslate_Access is org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package_References.OpenGLESDeviceImageTranslate_Access;
   function "=" (Left, Right : OpenGLESDeviceImageTranslate_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package_References."=";
   subtype OpenGLESDeviceImageTranslate_Access_Array is org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package_References.OpenGLESDeviceImageTranslate_Access_Array;
   function "=" (Left, Right : OpenGLESDeviceImageTranslate_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package_References."=";
   subtype OpenGLESDeviceImageTranslate_Access_Array_Access is org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package_References.OpenGLESDeviceImageTranslate_Access_Array_Access;
   function "=" (Left, Right : OpenGLESDeviceImageTranslate_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package_References."=";
   subtype OpenGLESDeviceImageTranslate_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package_References.OpenGLESDeviceImageTranslate_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESDeviceImageTranslate_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package_References."=";
   subtype OpenGLESDeviceImageTranslate_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package_References.OpenGLESDeviceImageTranslate_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESDeviceImageTranslate_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package_References."=";

   type OpenGLESDeviceImageTranslate is new OpenGLESImageTranslate with record
      translateX : Float;
      translateY : Float;
      translateX2 : Float;
      translateY2 : Float;
   end record;

   procedure Initialize (This : in out OpenGLESDeviceImageTranslate'Class);
   function Create return OpenGLESDeviceImageTranslate_Access;
   procedure translate (This : in out OpenGLESDeviceImageTranslate; gl_Param : access GL10_Package.GL10'Class; openGLESImage_Param : access OpenGLESImage_Package.OpenGLESImage'Class; x : Float; y : Float);
   procedure translate2 (This : in out OpenGLESDeviceImageTranslate; gl_Param : access GL10_Package.GL10'Class; openGLESImage_Param : access OpenGLESImage_Package.OpenGLESImage'Class);

end org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package;


