-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.allbinary.device.OpenGLESGraphics_Package; use org.allbinary.device.OpenGLESGraphics_Package;

package body org.allbinary.device.OpenGLESGraphicsFactory_Package is

   subtype OpenGLESGraphics_Access is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access;
   function "=" (Left, Right : OpenGLESGraphics_Access) return Boolean renames org.allbinary.device.OpenGLESGraphics_Package_References."=";
   subtype OpenGLESGraphics_Access_Array is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array;
   function "=" (Left, Right : OpenGLESGraphics_Access_Array) return Boolean renames org.allbinary.device.OpenGLESGraphics_Package_References."=";
   subtype OpenGLESGraphics_Access_Array_Access is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGraphics_Access_Array_Access) return Boolean renames org.allbinary.device.OpenGLESGraphics_Package_References."=";
   subtype OpenGLESGraphics_Access_Array_Access_Array is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESGraphics_Access_Array_Access_Array) return Boolean renames org.allbinary.device.OpenGLESGraphics_Package_References."=";
   subtype OpenGLESGraphics_Access_Array_Access_Array_Access is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGraphics_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.device.OpenGLESGraphics_Package_References."=";
   procedure Initialize_Fields (This : in out OpenGLESGraphicsFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESGraphicsFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESGraphicsFactory_Access is
      This : constant OpenGLESGraphicsFactory_Access := new OpenGLESGraphicsFactory;
   begin
      OpenGLESGraphicsFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getOpenGLESGraphicsInstance (This : in out OpenGLESGraphicsFactory) return OpenGLESGraphics_Access is
   begin
        return null;
   end getOpenGLESGraphicsInstance;

end org.allbinary.device.OpenGLESGraphicsFactory_Package;


