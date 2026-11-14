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

with AllBinary_Java;
limited with org.allbinary.graphics.opengles.OpenGLVUtilBase_Package;
package org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References is
   type OpenGLVUtilBase_Access is access all org.allbinary.graphics.opengles.OpenGLVUtilBase_Package.OpenGLVUtilBase'Class;
   type OpenGLVUtilBase_Access_Array is array (Natural range <>) of OpenGLVUtilBase_Access;
   type OpenGLVUtilBase_Access_Array_Access is access all OpenGLVUtilBase_Access_Array;
   type OpenGLVUtilBase_Access_Array_Access_Array is array (Natural range <>) of OpenGLVUtilBase_Access_Array_Access;
   type OpenGLVUtilBase_Access_Array_Access_Array_Access is access all OpenGLVUtilBase_Access_Array_Access_Array;
   type OpenGLVUtilBase_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLVUtilBase_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLVUtilBase_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLVUtilBase_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLVUtilBase_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLVUtilBase_Access_Array_Access is (if Value /= null and then Value.all in OpenGLVUtilBase_Access_Array_Object'Class then OpenGLVUtilBase_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLVUtilBase_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLVUtilBase_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLVUtilBase_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLVUtilBase_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLVUtilBase_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLVUtilBase_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLVUtilBase_Access_Array_Access_Array_Object'Class then OpenGLVUtilBase_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References;

with org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References;
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

package org.allbinary.graphics.opengles.OpenGLVUtilBase_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLVUtilBase_Access is org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References.OpenGLVUtilBase_Access;
   function "=" (Left, Right : OpenGLVUtilBase_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References."=";
   subtype OpenGLVUtilBase_Access_Array is org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References.OpenGLVUtilBase_Access_Array;
   function "=" (Left, Right : OpenGLVUtilBase_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References."=";
   subtype OpenGLVUtilBase_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References.OpenGLVUtilBase_Access_Array_Access;
   function "=" (Left, Right : OpenGLVUtilBase_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References."=";
   function Java_Box (Value : OpenGLVUtilBase_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References.Java_Box;
   function Java_Unbox_OpenGLVUtilBase_Access_Array (Value : access Java_Object'Class) return OpenGLVUtilBase_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References.Java_Unbox_OpenGLVUtilBase_Access_Array;
   subtype OpenGLVUtilBase_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References.OpenGLVUtilBase_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLVUtilBase_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References."=";
   subtype OpenGLVUtilBase_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References.OpenGLVUtilBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLVUtilBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References."=";
   function Java_Box (Value : OpenGLVUtilBase_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References.Java_Box;
   function Java_Unbox_OpenGLVUtilBase_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLVUtilBase_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLVUtilBase_Package_References.Java_Unbox_OpenGLVUtilBase_Access_Array_Access_Array;

   type OpenGLVUtilBase is new Java_Object with null record;

   procedure Initialize (This : in out OpenGLVUtilBase'Class);
   function Create return OpenGLVUtilBase_Access;
   procedure glTexEnvix (This : in out OpenGLVUtilBase; gl_Param : access GL10_Package.GL10'Class; target : Integer; pname : Integer; param : Integer);
   procedure glTexParameterix (This : in out OpenGLVUtilBase; gl_Param : access GL10_Package.GL10'Class; target : Integer; pname : Integer; param : Integer);
   procedure glGenerateMipmap (This : in out OpenGLVUtilBase; gl_Param : access GL10_Package.GL10'Class; textureId : Integer; target : Integer; generateMipMap : Boolean);

end org.allbinary.graphics.opengles.OpenGLVUtilBase_Package;


