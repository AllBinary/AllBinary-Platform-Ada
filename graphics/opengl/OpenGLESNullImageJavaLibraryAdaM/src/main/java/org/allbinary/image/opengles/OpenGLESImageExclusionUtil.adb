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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out OpenGLESImageExclusionUtil'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESImageExclusionUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESImageExclusionUtil_Access is
      This : constant OpenGLESImageExclusionUtil_Access := new OpenGLESImageExclusionUtil;
   begin
      OpenGLESImageExclusionUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLESImageExclusionUtil_Access is
   begin
        return OpenGLESImageExclusionUtil_Package.instance;
   end getInstance;

   function isCustomScaling (This : in out OpenGLESImageExclusionUtil; image_Param : access Image_Package.Image'Class) return Boolean is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        return False;
   end isCustomScaling;

   procedure isCustomScaling (This : in out OpenGLESImageExclusionUtil; image_Param : access Image_Package.Image'Class) is
      Java_Result : constant Boolean := OpenGLESImageExclusionUtil'Class (This).isCustomScaling (image_Param => image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCustomScaling;

begin
   null;
   instance := OpenGLESImageExclusionUtil_Package.Create;

end org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;


