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


package body org.allbinary.graphics.opengles.OpenGLVUtilBase_Package is

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


   procedure glTexEnvix (This : in out OpenGLVUtilBase; gl : GL10_Access; target : Integer; pname : Integer; param : Integer) is
   begin
        null;
   end glTexEnvix;

   procedure glTexParameterix (This : in out OpenGLVUtilBase; gl : GL10_Access; target : Integer; pname : Integer; param : Integer) is
   begin
        null;
   end glTexParameterix;

   procedure glGenerateMipmap (This : in out OpenGLVUtilBase; gl : GL10_Access; textureId : Integer; target : Integer; generateMipMap : Boolean) is
   begin
        null;
   end glGenerateMipmap;

end org.allbinary.graphics.opengles.OpenGLVUtilBase_Package;


