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


with org.eclipse.swt.graphics.Color_Package; use org.eclipse.swt.graphics.Color_Package;
with org.eclipse.swt.graphics.RGB_Package; use org.eclipse.swt.graphics.RGB_Package;
with org.microemu.app.BareMain_Package; use org.microemu.app.BareMain_Package;

package body org.allbinary.media.image.ImageSwtUtil_Package is

   package Color_Package renames Standard.org.eclipse.swt.graphics.Color_Package;
   package RGB_Package renames Standard.org.eclipse.swt.graphics.RGB_Package;
   package BareMain_Package renames Standard.org.microemu.app.BareMain_Package;
   procedure Initialize_Fields (This : in out ImageSwtUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ImageSwtUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageSwtUtil_Access is
      This : constant ImageSwtUtil_Access := new ImageSwtUtil;
   begin
      ImageSwtUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ImageSwtUtil_Access is
   begin
        return ImageSwtUtil_Package.instance;
   end getInstance;

begin
   null;
   instance := ImageSwtUtil_Package.Create;

end org.allbinary.media.image.ImageSwtUtil_Package;


