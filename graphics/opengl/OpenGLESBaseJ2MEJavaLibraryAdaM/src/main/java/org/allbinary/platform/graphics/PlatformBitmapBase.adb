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


with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;

package body org.allbinary.platform.graphics.PlatformBitmapBase_Package is

   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   procedure Initialize_Fields (This : in out PlatformBitmapBase'Class) is
   begin
      null;
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


   function getImage (This : in out PlatformBitmapBase) return Image_Access is
   begin
        return NullImage_Package.NULL_IMAGE;
   end getImage;

end org.allbinary.platform.graphics.PlatformBitmapBase_Package;


