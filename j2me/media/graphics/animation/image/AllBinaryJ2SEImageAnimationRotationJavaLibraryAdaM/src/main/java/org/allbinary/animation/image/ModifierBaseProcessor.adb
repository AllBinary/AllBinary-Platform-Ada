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


package body org.allbinary.animation.image.ModifierBaseProcessor_Package is

   procedure Initialize_Fields (This : in out ModifierBaseProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ModifierBaseProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ModifierBaseProcessor_Access is
      This : constant ModifierBaseProcessor_Access := new ModifierBaseProcessor;
   begin
      ModifierBaseProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ModifierBaseProcessor_Access is
   begin
        return ModifierBaseProcessor_Package.instance;
   end getInstance;

   procedure updateColor (This : in out ModifierBaseProcessor; imageModifierUtil : ImageModifierUtil_Access; originalImage : Image_Access; imageToShow : Image_Access; index : Integer; basicColor : BasicColor_Access) is
   begin
        null;
   end updateColor;

   procedure updateAlpha (This : in out ModifierBaseProcessor; imageModifierUtil : ImageModifierUtil_Access; originalImage : Image_Access; imageToShow : Image_Access; index : Integer; alpha : Integer) is
   begin
        null;
   end updateAlpha;

begin
   null;
   instance := ModifierBaseProcessor_Package.Create;

end org.allbinary.animation.image.ModifierBaseProcessor_Package;


