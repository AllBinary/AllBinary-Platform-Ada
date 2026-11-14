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
limited with org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package;
package org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References is
   type TextureAttributePointerVBOOpenGLProcessor_Access is access all org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package.TextureAttributePointerVBOOpenGLProcessor'Class;
   type TextureAttributePointerVBOOpenGLProcessor_Access_Array is array (Natural range <>) of TextureAttributePointerVBOOpenGLProcessor_Access;
   type TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access is access all TextureAttributePointerVBOOpenGLProcessor_Access_Array;
   type TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array is array (Natural range <>) of TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access;
   type TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array_Access is access all TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array;
   type TextureAttributePointerVBOOpenGLProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TextureAttributePointerVBOOpenGLProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TextureAttributePointerVBOOpenGLProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access is (if Value /= null and then Value.all in TextureAttributePointerVBOOpenGLProcessor_Access_Array_Object'Class then TextureAttributePointerVBOOpenGLProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array_Object'Class then TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References;

with org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References;
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

package org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package is

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


   subtype TextureAttributePointerVBOOpenGLProcessor_Access is org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References.TextureAttributePointerVBOOpenGLProcessor_Access;
   function "=" (Left, Right : TextureAttributePointerVBOOpenGLProcessor_Access) return Boolean renames org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References."=";
   subtype TextureAttributePointerVBOOpenGLProcessor_Access_Array is org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References.TextureAttributePointerVBOOpenGLProcessor_Access_Array;
   function "=" (Left, Right : TextureAttributePointerVBOOpenGLProcessor_Access_Array) return Boolean renames org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References."=";
   subtype TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access is org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References.TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access;
   function "=" (Left, Right : TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References."=";
   function Java_Box (Value : TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References.Java_Box;
   function Java_Unbox_TextureAttributePointerVBOOpenGLProcessor_Access_Array (Value : access Java_Object'Class) return TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access renames org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References.Java_Unbox_TextureAttributePointerVBOOpenGLProcessor_Access_Array;
   subtype TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References.TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References."=";
   subtype TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References.TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References."=";
   function Java_Box (Value : TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References.Java_Box;
   function Java_Unbox_TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package_References.Java_Unbox_TextureAttributePointerVBOOpenGLProcessor_Access_Array_Access_Array;

   type TextureAttributePointerVBOOpenGLProcessor is new ObjectThreedOpenGLProcessor with null record;
   instance : TextureAttributePointerVBOOpenGLProcessor_Access;

   procedure Initialize (This : in out TextureAttributePointerVBOOpenGLProcessor'Class);
   function Create return TextureAttributePointerVBOOpenGLProcessor_Access;
   function getInstance return TextureAttributePointerVBOOpenGLProcessor_Access;
   procedure process (This : in out TextureAttributePointerVBOOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class; anyType_Param : access Java_Object'Class);

end org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package;


