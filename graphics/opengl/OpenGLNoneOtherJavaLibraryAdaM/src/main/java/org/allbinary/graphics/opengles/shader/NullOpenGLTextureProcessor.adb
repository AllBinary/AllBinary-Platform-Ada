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


with org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package; use org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package;
with org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References;
with org.allbinary.string_Id.CommonStrings_Package;
with javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package;

package body org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package is

   subtype OpenGLObject3dProcessor_Access is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access;
   function "=" (Left, Right : OpenGLObject3dProcessor_Access) return Boolean renames org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References."=";
   subtype OpenGLObject3dProcessor_Access_Array is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array;
   function "=" (Left, Right : OpenGLObject3dProcessor_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References."=";
   subtype OpenGLObject3dProcessor_Access_Array_Access is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array_Access;
   function "=" (Left, Right : OpenGLObject3dProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References."=";
   subtype OpenGLObject3dProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLObject3dProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References."=";
   subtype OpenGLObject3dProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLObject3dProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References."=";
   procedure Initialize_Fields (This : in out NullOpenGLTextureProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullOpenGLTextureProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullOpenGLTextureProcessor_Access is
      This : constant NullOpenGLTextureProcessor_Access := new NullOpenGLTextureProcessor;
   begin
      NullOpenGLTextureProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLObject3dProcessor_Access is
   begin
        return OpenGLObject3dProcessor_Access (NullOpenGLTextureProcessor_Package.instance);
   end getInstance;

begin
   null;
   instance := OpenGLObject3dProcessor_Package.Create;

end org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package;


