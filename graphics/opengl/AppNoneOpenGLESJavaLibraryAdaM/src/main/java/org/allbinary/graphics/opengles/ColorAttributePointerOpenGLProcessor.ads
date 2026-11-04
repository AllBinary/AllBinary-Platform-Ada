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

limited with org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package;
package org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package_References is
   type ColorAttributePointerOpenGLProcessor_Access is access all org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package.ColorAttributePointerOpenGLProcessor'Class;
   type ColorAttributePointerOpenGLProcessor_Access_Array is array (Natural range <>) of ColorAttributePointerOpenGLProcessor_Access;
   type ColorAttributePointerOpenGLProcessor_Access_Array_Access is access all ColorAttributePointerOpenGLProcessor_Access_Array;
   type ColorAttributePointerOpenGLProcessor_Access_Array_Access_Array is array (Natural range <>) of ColorAttributePointerOpenGLProcessor_Access_Array_Access;
   type ColorAttributePointerOpenGLProcessor_Access_Array_Access_Array_Access is access all ColorAttributePointerOpenGLProcessor_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package_References;

with org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package_References;
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

package org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package is

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


   subtype ColorAttributePointerOpenGLProcessor_Access is org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package_References.ColorAttributePointerOpenGLProcessor_Access;
   function "=" (Left, Right : ColorAttributePointerOpenGLProcessor_Access) return Boolean renames org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package_References."=";
   subtype ColorAttributePointerOpenGLProcessor_Access_Array is org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package_References.ColorAttributePointerOpenGLProcessor_Access_Array;
   function "=" (Left, Right : ColorAttributePointerOpenGLProcessor_Access_Array) return Boolean renames org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package_References."=";
   subtype ColorAttributePointerOpenGLProcessor_Access_Array_Access is org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package_References.ColorAttributePointerOpenGLProcessor_Access_Array_Access;
   function "=" (Left, Right : ColorAttributePointerOpenGLProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package_References."=";
   subtype ColorAttributePointerOpenGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package_References.ColorAttributePointerOpenGLProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : ColorAttributePointerOpenGLProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package_References."=";
   subtype ColorAttributePointerOpenGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package_References.ColorAttributePointerOpenGLProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorAttributePointerOpenGLProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package_References."=";

   type ColorAttributePointerOpenGLProcessor is new ObjectThreedOpenGLProcessor with null record;
   instance : ColorAttributePointerOpenGLProcessor_Access;

   procedure Initialize (This : in out ColorAttributePointerOpenGLProcessor'Class);
   function Create return ColorAttributePointerOpenGLProcessor_Access;
   function getInstance return ColorAttributePointerOpenGLProcessor_Access;
   procedure process (This : in out ColorAttributePointerOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class; anyType_Param : access Java_Object'Class);

end org.allbinary.graphics.opengles.ColorAttributePointerOpenGLProcessor_Package;


