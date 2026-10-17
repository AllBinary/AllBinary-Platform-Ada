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


package body org.allbinary.graphics.opengles.OpenGLCapabilities_Package is

   procedure Initialize_Fields (This : in out OpenGLCapabilities'Class) is
   begin
      null;
      This.VERSION_1_0 := To_Unbounded_String ("1.0");
      This.VERSION_1_1 := To_Unbounded_String ("1.1");
      This.VERSION_2_0 := To_Unbounded_String ("2.0");
      This.VERSION_3_0 := To_Unbounded_String ("3.0");
      This.VERSION_3_1 := To_Unbounded_String ("3.1");
      This.VERSION_3_2 := To_Unbounded_String ("3.2");
      This.VERSION_HIGHER_THAN_EXISTS := To_Unbounded_String ("999.999");
      This.glVersion := StringUtil_Package.getInstance.EMPTY_STRING;
      This.shaderVersion := 0;
      This.glInstanceVersion := StringUtil_Package.getInstance.EMPTY_STRING;
      This.maxTextureSize := 64;
   end Initialize_Fields;


   function getInstance return OpenGLCapabilities_Access is
   begin
        return OpenGLCapabilities_Package.instance;
   end getInstance;

   procedure Initialize (This : in out OpenGLCapabilities'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OpenGLCapabilities_Access is
      This : constant OpenGLCapabilities_Access := new OpenGLCapabilities;
   begin
      OpenGLCapabilities_Package.Initialize (This.all);
      return This;
   end Create;

   procedure initCapabilities (This : in out OpenGLCapabilities; gl_Param : access Java_Object'Class) is
      gl : Java_Object_Access := Java_Object_Access (gl_Param);
   begin
        null;
   end initCapabilities;

   function isGlExtensionDrawTexture (This : in out OpenGLCapabilities) return Boolean is
   begin
        return False;
   end isGlExtensionDrawTexture;

   function getGlVersion (This : in out OpenGLCapabilities) return Unbounded_String is
   begin
        return This.glVersion;
   end getGlVersion;

   function isVertexBufferObjectSupport (This : in out OpenGLCapabilities) return Boolean is
   begin
        return False;
   end isVertexBufferObjectSupport;

   function isTextureSizeValid (This : in out OpenGLCapabilities; widthAndHeight : Integer) return Boolean is
   begin
        return True;
   end isTextureSizeValid;

   procedure isTextureSizeValid (This : in out OpenGLCapabilities; widthAndHeight : Integer) is
      Java_Result : constant Boolean := OpenGLCapabilities'Class (This).isTextureSizeValid (widthAndHeight);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTextureSizeValid;

begin
   null;
   instance := OpenGLCapabilities_Package.Create;

end org.allbinary.graphics.opengles.OpenGLCapabilities_Package;


