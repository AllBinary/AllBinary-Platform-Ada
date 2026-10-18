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



package body org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package is

   procedure Initialize_Fields (This : in out OpenGLFeatureFactory'Class) is
   begin
      null;
      This.OPENGL_OPTIONS := OpenGLFeature_Package.Create (To_Unbounded_String ("OpenGL Options"));
      This.OPENGL := OpenGLFeature_Package.Create (To_Unbounded_String ("OpenGL"));
      This.OPENGL_SURFACE_VIEW := OpenGLFeature_Package.Create (To_Unbounded_String ("GLSurfaceView"));
      This.OPENGL_2D := OpenGLFeature_Package.Create (To_Unbounded_String ("OpenGL 2D"));
      This.OPENGL_3D := OpenGLFeature_Package.Create (To_Unbounded_String ("OpenGL 3D"));
      This.OPENGL_2D_AND_3D := OpenGLFeature_Package.Create (To_Unbounded_String ("OpenGL 2D/3D"));
      This.OPENGL_AUTO_SELECT := OpenGLFeature_Package.Create (To_Unbounded_String ("Auto Select"));
      This.OPENGL_MINIMUM := OpenGLFeature_Package.Create (To_Unbounded_String ("Minimum"));
      This.OPENGL_AS_GAME_THREAD := OpenGLFeature_Package.Create (To_Unbounded_String ("As game thread"));
      This.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS := OpenGLFeature_Package.Create (To_Unbounded_String ("As different threads"));
      This.IMAGE_COLOR_DEPTH_4444 := OpenGLFeature_Package.Create (To_Unbounded_String ("4444"));
      This.IMAGE_COLOR_DEPTH_8888 := OpenGLFeature_Package.Create (To_Unbounded_String ("8888"));
      This.IMAGE_COLOR_DEPTH_565 := OpenGLFeature_Package.Create (To_Unbounded_String ("565"));
      This.OPENGL_COLOR_DEPTH_4444 := OpenGLFeature_Package.Create (To_Unbounded_String ("4444"));
      This.OPENGL_COLOR_DEPTH_8888 := OpenGLFeature_Package.Create (To_Unbounded_String ("8888"));
      This.OPENGL_COLOR_DEPTH_565 := OpenGLFeature_Package.Create (To_Unbounded_String ("565"));
      This.OPENGL_DRAW_TEXTURE := OpenGLFeature_Package.Create (To_Unbounded_String ("GL_OES_draw_texture"));
      This.OPENGL_VERTEX_BUFFER_OBJECT := OpenGLFeature_Package.Create (To_Unbounded_String ("vertex_buffer_object"));
      This.OPENGL_SIMPLE_OBJECT3D_PROCESSOR := OpenGLFeature_Package.Create (To_Unbounded_String ("Simple Object3d Processor"));
      This.OPENGL_COMPLEX_OBJECT3D_PROCESSOR := OpenGLFeature_Package.Create (To_Unbounded_String ("Complex Object3d Processor"));
      This.OPENGL_SIMPLE_TEXTURE_PROCESSOR := OpenGLFeature_Package.Create (To_Unbounded_String ("Simple Texture Processor"));
      This.OPENGL_COMPLEX_TEXTURE_PROCESSOR := OpenGLFeature_Package.Create (To_Unbounded_String ("Complex Texture Processor"));
   end Initialize_Fields;


   function getInstance return OpenGLFeatureFactory_Access is
   begin
        return OpenGLFeatureFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out OpenGLFeatureFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OpenGLFeatureFactory_Access is
      This : constant OpenGLFeatureFactory_Access := new OpenGLFeatureFactory;
   begin
      OpenGLFeatureFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := OpenGLFeatureFactory_Package.Create;

end org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;


