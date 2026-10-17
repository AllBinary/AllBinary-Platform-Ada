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


package body org.allbinary.animation.image.AlphaProcessor_Package is

   procedure Initialize_Fields (This : in out AlphaProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AlphaProcessor'Class) is
   begin
      ModifierBaseProcessor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return AlphaProcessor_Access is
      This : constant AlphaProcessor_Access := new AlphaProcessor;
   begin
      AlphaProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AlphaProcessor_Access is
   begin
        return AlphaProcessor_Package.instanceC;
   end getInstance;

   procedure updateAlpha (This : in out AlphaProcessor; imageModifierUtil_Param : access ImageModifierUtil_Package.ImageModifierUtil'Class; originalImage_Param : access Image_Package.Image'Class; imageToShow_Param : access Image_Package.Image'Class; index : Integer; alpha : Integer) is
      imageModifierUtil : constant ImageModifierUtil_Access := ImageModifierUtil_Access (imageModifierUtil_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      imageToShow : constant Image_Access := Image_Access (imageToShow_Param);
   begin
        imageModifierUtil.setAlpha (originalImage, imageToShow, index, alpha);
   end updateAlpha;

begin
   null;
   instanceC := AlphaProcessor_Package.Create;

end org.allbinary.animation.image.AlphaProcessor_Package;


