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


package body org.allbinary.animation.image.SetColorProcessor_Package is

   procedure Initialize_Fields (This : in out SetColorProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SetColorProcessor'Class) is
   begin
      ModifierBaseProcessor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return SetColorProcessor_Access is
      This : constant SetColorProcessor_Access := new SetColorProcessor;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return SetColorProcessor_Access is
   begin
        return SetColorProcessor_Package.instanceC;
   end getInstance;

   procedure updateColor (This : in out SetColorProcessor; imageModifierUtil : ImageModifierUtil_Access; originalImage : Image_Access; imageToShow : Image_Access; index : Integer; basicColor : BasicColor_Access) is
   begin
        imageModifierUtil.setColor (originalImage, imageToShow, index, basicColor);
   end updateColor;

   procedure getInstance is
      Java_Result : constant SetColorProcessor_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instanceC := SetColorProcessor_Package.Create;

end org.allbinary.animation.image.SetColorProcessor_Package;


