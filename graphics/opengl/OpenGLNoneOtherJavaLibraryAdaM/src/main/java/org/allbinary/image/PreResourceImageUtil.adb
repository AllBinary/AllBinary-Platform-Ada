--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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


package body org.allbinary.image.PreResourceImageUtil_Package is

   procedure Initialize_Fields (This : in out PreResourceImageUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PreResourceImageUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PreResourceImageUtil_Access is
      This : constant PreResourceImageUtil_Access := new PreResourceImageUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return PreResourceImageUtil_Access is
   begin
        return PreResourceImageUtil_Package.instance;
   end getInstance;

   function encapsulate (This : in out PreResourceImageUtil; image : Image_Access) return Image_Access is
   begin
        return image;
   end encapsulate;

   procedure updateGL (This : in out PreResourceImageUtil; gl : GL_Access; image : Image_Access) is
   begin
        null;
   end updateGL;

   procedure update (This : in out PreResourceImageUtil; graphics : Graphics_Access; image : Image_Access) is
   begin
        null;
   end update;

   procedure getInstance is
      Java_Result : constant PreResourceImageUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure encapsulate (This : in out PreResourceImageUtil; image : Image_Access) is
      Java_Result : constant Image_Access := PreResourceImageUtil'Class (This).encapsulate (image);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end encapsulate;

begin
   null;
   instance := PreResourceImageUtil_Package.Create;

end org.allbinary.image.PreResourceImageUtil_Package;


