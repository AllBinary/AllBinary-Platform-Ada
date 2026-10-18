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



package body org.allbinary.animation.image.AlphaBaseProcessor_Package is

   procedure Initialize_Fields (This : in out AlphaBaseProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AlphaBaseProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AlphaBaseProcessor_Access is
      This : constant AlphaBaseProcessor_Access := new AlphaBaseProcessor;
   begin
      AlphaBaseProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AlphaBaseProcessor_Access is
   begin
        return AlphaBaseProcessor_Package.instance;
   end getInstance;

   procedure setAlpha (This : in out AlphaBaseProcessor; imageModifierUtil_Param : access ImageModifierUtil_Package.ImageModifierUtil'Class; originalImage_Param : access Image_Package.Image'Class; imageToShow_Param : access Image_Package.Image'Class; alpha : Integer) is
      imageModifierUtil : constant ImageModifierUtil_Access := ImageModifierUtil_Access (imageModifierUtil_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      imageToShow : constant Image_Access := Image_Access (imageToShow_Param);
   begin
        null;
   end setAlpha;

begin
   null;
   instance := AlphaBaseProcessor_Package.Create;

end org.allbinary.animation.image.AlphaBaseProcessor_Package;


