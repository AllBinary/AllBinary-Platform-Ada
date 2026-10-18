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



package body org.allbinary.animation.image.ChangeColorProcessor_Package is

   procedure Initialize_Fields (This : in out ChangeColorProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ChangeColorProcessor'Class) is
   begin
      ModifierBaseProcessor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ChangeColorProcessor_Access is
      This : constant ChangeColorProcessor_Access := new ChangeColorProcessor;
   begin
      ChangeColorProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ChangeColorProcessor_Access is
   begin
        return ChangeColorProcessor_Package.instanceC;
   end getInstance;

   procedure updateColor (This : in out ChangeColorProcessor; imageModifierUtil_Param : access ImageModifierUtil_Package.ImageModifierUtil'Class; originalImage_Param : access Image_Package.Image'Class; imageToShow_Param : access Image_Package.Image'Class; index : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      imageModifierUtil : constant ImageModifierUtil_Access := ImageModifierUtil_Access (imageModifierUtil_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      imageToShow : constant Image_Access := Image_Access (imageToShow_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        imageModifierUtil.changeColor (originalImage, imageToShow, index, basicColor);
   end updateColor;

begin
   null;
   instanceC := ChangeColorProcessor_Package.Create;

end org.allbinary.animation.image.ChangeColorProcessor_Package;


