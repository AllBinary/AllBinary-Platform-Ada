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
      PreResourceImageUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PreResourceImageUtil_Access is
   begin
        return PreResourceImageUtil_Package.instance;
   end getInstance;

   function encapsulate (This : in out PreResourceImageUtil; image_Param : access Image_Package.Image'Class) return Image_Access is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        return image;
   end encapsulate;

   procedure updateGL (This : in out PreResourceImageUtil; gl_Param : access GL_Package.GL'Class; image_Param : access Image_Package.Image'Class) is
      gl : constant GL_Access := GL_Access (gl_Param);
      image : constant Image_Access := Image_Access (image_Param);
   begin
        null;
   end updateGL;

   procedure update (This : in out PreResourceImageUtil; graphics_Param : access Graphics_Package.Graphics'Class; image_Param : access Image_Package.Image'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      image : constant Image_Access := Image_Access (image_Param);
   begin
        null;
   end update;

   procedure encapsulate (This : in out PreResourceImageUtil; image_Param : access Image_Package.Image'Class) is
      Java_Result : constant Image_Access := PreResourceImageUtil'Class (This).encapsulate (image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end encapsulate;

begin
   null;
   instance := PreResourceImageUtil_Package.Create;

end org.allbinary.image.PreResourceImageUtil_Package;


