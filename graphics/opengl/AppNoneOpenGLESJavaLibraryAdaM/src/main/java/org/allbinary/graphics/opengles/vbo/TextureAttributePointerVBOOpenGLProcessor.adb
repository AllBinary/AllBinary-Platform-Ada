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


with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor_Package; use org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor_Package;

package body org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package is

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
   procedure Initialize_Fields (This : in out TextureAttributePointerVBOOpenGLProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return TextureAttributePointerVBOOpenGLProcessor_Access is
   begin
        return TextureAttributePointerVBOOpenGLProcessor_Access (TextureAttributePointerVBOOpenGLProcessor_Package.instance);
   end getInstance;

   procedure Initialize (This : in out TextureAttributePointerVBOOpenGLProcessor'Class) is
   begin
      ObjectThreedOpenGLProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TextureAttributePointerVBOOpenGLProcessor_Access is
      This : constant TextureAttributePointerVBOOpenGLProcessor_Access := new TextureAttributePointerVBOOpenGLProcessor;
   begin
      TextureAttributePointerVBOOpenGLProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   procedure process (This : in out TextureAttributePointerVBOOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class; anyType_Param : access Java_Object'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end process;

begin
   null;
   instance := TextureAttributePointerVBOOpenGLProcessor_Package.Create;

end org.allbinary.graphics.opengles.vbo.TextureAttributePointerVBOOpenGLProcessor_Package;


