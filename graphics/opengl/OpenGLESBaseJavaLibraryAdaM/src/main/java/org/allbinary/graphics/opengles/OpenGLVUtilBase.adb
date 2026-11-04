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
with javax.microedition.khronos.opengles.GL10_Package_References;

package body org.allbinary.graphics.opengles.OpenGLVUtilBase_Package is

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
   procedure Initialize_Fields (This : in out OpenGLVUtilBase'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLVUtilBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLVUtilBase_Access is
      This : constant OpenGLVUtilBase_Access := new OpenGLVUtilBase;
   begin
      OpenGLVUtilBase_Package.Initialize (This.all);
      return This;
   end Create;


   procedure glTexEnvix (This : in out OpenGLVUtilBase; gl_Param : access GL10_Package.GL10'Class; target : Integer; pname : Integer; param : Integer) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        null;
   end glTexEnvix;

   procedure glTexParameterix (This : in out OpenGLVUtilBase; gl_Param : access GL10_Package.GL10'Class; target : Integer; pname : Integer; param : Integer) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        null;
   end glTexParameterix;

   procedure glGenerateMipmap (This : in out OpenGLVUtilBase; gl_Param : access GL10_Package.GL10'Class; textureId : Integer; target : Integer; generateMipMap : Boolean) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        null;
   end glGenerateMipmap;

end org.allbinary.graphics.opengles.OpenGLVUtilBase_Package;


