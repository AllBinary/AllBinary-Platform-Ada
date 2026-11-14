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


with org.allbinary.device.OpenGLESGraphicsFactory_Package; use org.allbinary.device.OpenGLESGraphicsFactory_Package;
with org.allbinary.device.OpenGLESGraphicsFactory_Package_References;
with org.allbinary.string_Id.CommonStrings_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.device.OpenGLESGraphicsFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package is

   subtype OpenGLESGraphicsFactory_Access is org.allbinary.device.OpenGLESGraphicsFactory_Package_References.OpenGLESGraphicsFactory_Access;
   function "=" (Left, Right : OpenGLESGraphicsFactory_Access) return Boolean renames org.allbinary.device.OpenGLESGraphicsFactory_Package_References."=";
   subtype OpenGLESGraphicsFactory_Access_Array is org.allbinary.device.OpenGLESGraphicsFactory_Package_References.OpenGLESGraphicsFactory_Access_Array;
   function "=" (Left, Right : OpenGLESGraphicsFactory_Access_Array) return Boolean renames org.allbinary.device.OpenGLESGraphicsFactory_Package_References."=";
   subtype OpenGLESGraphicsFactory_Access_Array_Access is org.allbinary.device.OpenGLESGraphicsFactory_Package_References.OpenGLESGraphicsFactory_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGraphicsFactory_Access_Array_Access) return Boolean renames org.allbinary.device.OpenGLESGraphicsFactory_Package_References."=";
   subtype OpenGLESGraphicsFactory_Access_Array_Access_Array is org.allbinary.device.OpenGLESGraphicsFactory_Package_References.OpenGLESGraphicsFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESGraphicsFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.device.OpenGLESGraphicsFactory_Package_References."=";
   subtype OpenGLESGraphicsFactory_Access_Array_Access_Array_Access is org.allbinary.device.OpenGLESGraphicsFactory_Package_References.OpenGLESGraphicsFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGraphicsFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.device.OpenGLESGraphicsFactory_Package_References."=";
   procedure Initialize_Fields (This : in out OpenGLESGraphicsCompositeFactory'Class) is
   begin
      null;
      This.openGLESGraphicsFactory := OpenGLESGraphicsFactory_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESGraphicsCompositeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESGraphicsCompositeFactory_Access is
      This : constant OpenGLESGraphicsCompositeFactory_Access := new OpenGLESGraphicsCompositeFactory;
   begin
      OpenGLESGraphicsCompositeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLESGraphicsCompositeFactory_Access is
   begin
        return OpenGLESGraphicsCompositeFactory_Package.instance;
   end getInstance;

   procedure set (This : in out OpenGLESGraphicsCompositeFactory; openGLESGraphicsFactory_Param : access OpenGLESGraphicsFactory_Package.OpenGLESGraphicsFactory'Class) is
      openGLESGraphicsFactory : constant OpenGLESGraphicsFactory_Access := OpenGLESGraphicsFactory_Access (openGLESGraphicsFactory_Param);
   begin
        This.openGLESGraphicsFactory := openGLESGraphicsFactory;
   end set;

   function get (This : in out OpenGLESGraphicsCompositeFactory) return OpenGLESGraphicsFactory_Access is
   begin
        return This.openGLESGraphicsFactory;
   end get;

begin
   null;
   instance := OpenGLESGraphicsCompositeFactory_Package.Create;

end org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package;


