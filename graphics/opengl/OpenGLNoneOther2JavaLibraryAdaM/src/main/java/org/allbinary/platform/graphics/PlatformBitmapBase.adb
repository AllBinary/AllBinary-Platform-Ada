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


package body org.allbinary.platform.graphics.PlatformBitmapBase_Package is

   procedure Initialize_Fields (This : in out PlatformBitmapBase'Class) is
   begin
      null;
      This.alpha := 255;
      This.basicColor := BasicColorFactory_Package.getInstance.NULL_COLOR;
   end Initialize_Fields;

   procedure Initialize (This : in out PlatformBitmapBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlatformBitmapBase_Access is
      This : constant PlatformBitmapBase_Access := new PlatformBitmapBase;
   begin
      PlatformBitmapBase_Package.Initialize (This.all);
      return This;
   end Create;


   function getWidth (This : in out PlatformBitmapBase) return Integer is
   begin
        return 0;
   end getWidth;

   function getHeight (This : in out PlatformBitmapBase) return Integer is
   begin
        return 0;
   end getHeight;

   function getImage (This : in out PlatformBitmapBase) return Image_Access is
   begin
        return NullImage_Package.NULL_IMAGE;
   end getImage;

begin
   null;
   NULL_PLATFORM_BITMAP_BASE := PlatformBitmapBase_Package.Create;

end org.allbinary.platform.graphics.PlatformBitmapBase_Package;


