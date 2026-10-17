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


package body org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package is

   procedure Initialize_Fields (This : in out PlatformTextureBaseFactory'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out PlatformTextureBaseFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlatformTextureBaseFactory_Access is
      This : constant PlatformTextureBaseFactory_Access := new PlatformTextureBaseFactory;
   begin
      PlatformTextureBaseFactory_Package.Initialize (This.all);
      return This;
   end Create;


   procedure load (This : in out PlatformTextureBaseFactory; gl_Param : access GL10_Package.GL10'Class; target : Integer; level : Integer; image_Param : access Image_Package.Image'Class; border : Integer; flip : Boolean) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      image : constant Image_Access := Image_Access (image_Param);
   begin
        null;
   end load;

begin
   null;
   NULL_PLATFORM_TEXTURE_BASE_FACTORY := PlatformTextureBaseFactory_Package.Create;

end org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;


