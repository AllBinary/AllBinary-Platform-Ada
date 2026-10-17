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


package body javax.microedition.lcdui.NullImage_Package is

   procedure Initialize_Fields (This : in out NullImage'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullImage'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullImage_Access is
      This : constant NullImage_Access := new NullImage;
   begin
      NullImage_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   NULL_IMAGE_ARRAY := new Image_Access_Array'(0 .. (0) - 1 => null);
   NULL_IMAGE := Image_Package.Create;

end javax.microedition.lcdui.NullImage_Package;


