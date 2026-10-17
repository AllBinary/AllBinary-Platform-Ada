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


package body org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package is

   procedure Initialize_Fields (This : in out OpenGLESImageExclusionUtil'Class) is
   begin
      null;
      This.EXCLUSION := To_Unbounded_String ("font");
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   function getInstance return OpenGLESImageExclusionUtil_Access is
   begin
        return OpenGLESImageExclusionUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out OpenGLESImageExclusionUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OpenGLESImageExclusionUtil_Access is
      This : constant OpenGLESImageExclusionUtil_Access := new OpenGLESImageExclusionUtil;
   begin
      OpenGLESImageExclusionUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function isCustomScaling (This : in out OpenGLESImageExclusionUtil; image_Param : access Image_Package.Image'Class) return Boolean is
      image : constant Image_Access := Image_Access (image_Param);
      imageName : Unbounded_String;
      isNormalScaling : Boolean;
      size : Integer;
      name : Unbounded_String;
      index : Integer;
   begin
        imageName := image.getName;
        isNormalScaling := ((This.list.size) = (0)) or else (imageName.startsWith (This.EXCLUSION));
        if isNormalScaling then
            return False;
        else
            size := This.list.size;
            name := Null_Unbounded_String;
            for index in 0 .. (size) - 1 loop
                name := Unbounded_String (This.list.get (index));
                if imageName.startsWith (name) then
                    isNormalScaling := True;
                end if;
            end loop;
        end if;
        if isNormalScaling then
            return False;
        else
            return True;
        end if;
   end isCustomScaling;

   procedure isCustomScaling (This : in out OpenGLESImageExclusionUtil; image_Param : access Image_Package.Image'Class) is
      Java_Result : constant Boolean := OpenGLESImageExclusionUtil'Class (This).isCustomScaling (image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCustomScaling;

begin
   null;
   instance := OpenGLESImageExclusionUtil_Package.Create;

end org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;


