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


package body javax.microedition.lcdui.PostLoadPlatformImage_Package is

   procedure Initialize_Fields (This : in out PostLoadPlatformImage'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PostLoadPlatformImage'Class) is
   begin
      PlatformImage_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return PostLoadPlatformImage_Access is
      This : constant PostLoadPlatformImage_Access := new PostLoadPlatformImage;
   begin
      PostLoadPlatformImage_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PostLoadPlatformImage_Access is
   begin
        return PostLoadPlatformImage_Package.instance;
   end getInstance;

begin
   null;
   instance := PostLoadPlatformImage_Package.Create;

end javax.microedition.lcdui.PostLoadPlatformImage_Package;


