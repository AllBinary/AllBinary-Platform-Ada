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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return AlphaBaseProcessor_Access is
   begin
        return AlphaBaseProcessor_Package.instance;
   end getInstance;

   procedure setAlpha (This : in out AlphaBaseProcessor; imageModifierUtil : ImageModifierUtil_Access; originalImage : Image_Access; imageToShow : Image_Access; alpha : Integer) is
   begin
        null;
   end setAlpha;

   procedure getInstance is
      Java_Result : constant AlphaBaseProcessor_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := AlphaBaseProcessor_Package.Create;

end org.allbinary.animation.image.AlphaBaseProcessor_Package;


