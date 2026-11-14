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



package body org.allbinary.media.image.ImageJ2SEUtil_Package is

   procedure Initialize_Fields (This : in out ImageJ2SEUtil'Class) is
   begin
      null;
      This.TRANSPARENT_COLOR := Color_Package.Create (0, 0, 0, 0);
   end Initialize_Fields;

   procedure Initialize (This : in out ImageJ2SEUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageJ2SEUtil_Access is
      This : constant ImageJ2SEUtil_Access := new ImageJ2SEUtil;
   begin
      ImageJ2SEUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ImageJ2SEUtil_Access is
   begin
        return ImageJ2SEUtil_Package.instance;
   end getInstance;

begin
   null;
   instance := ImageJ2SEUtil_Package.Create;

end org.allbinary.media.image.ImageJ2SEUtil_Package;


