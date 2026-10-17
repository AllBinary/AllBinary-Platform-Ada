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


package body org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package is

   procedure Initialize_Fields (This : in out OpenGLImageSpecificFactory'Class) is
   begin
      null;
      This.imageFactory := OpenGLImageFactory_Package.NULL_OPENGL_IMAGE_FACTORY;
      This.updating := False;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLImageSpecificFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLImageSpecificFactory_Access is
      This : constant OpenGLImageSpecificFactory_Access := new OpenGLImageSpecificFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLImageSpecificFactory_Access is
   begin
        return OpenGLImageSpecificFactory_Package.instance;
   end getInstance;

   procedure setImageFactory (This : in out OpenGLImageSpecificFactory; imageFactory : OpenGLImageFactory_Access) is
   begin
        This.imageFactory := imageFactory;
        PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("Selected Image Factory: ")).append (StringUtil_Package.getInstance.toString (This.imageFactory)).toString, This'Unchecked_Access, To_Unbounded_String ("setImageFactory"));
   end setImageFactory;

   function getImageFactory (This : in out OpenGLImageSpecificFactory) return OpenGLImageFactory_Access is
   begin
        return This.imageFactory;
   end getImageFactory;

   procedure getInstance is
      Java_Result : constant OpenGLImageSpecificFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getImageFactory (This : in out OpenGLImageSpecificFactory) is
      Java_Result : constant OpenGLImageFactory_Access := OpenGLImageSpecificFactory'Class (This).getImageFactory;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImageFactory;

begin
   null;
   instance := OpenGLImageSpecificFactory_Package.Create;

end org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package;


