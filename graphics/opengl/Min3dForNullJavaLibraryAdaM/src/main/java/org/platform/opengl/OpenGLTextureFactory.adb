--  Generated Code Do Not Modify


package body org.platform.opengl.OpenGLTextureFactory_Package is

   procedure Initialize_Fields (This : in out OpenGLTextureFactory'Class) is
   begin
      null;
      This.gluUtils := OpenGLGLUUtils_Package.getInstance;
   end Initialize_Fields;


   function getInstance return OpenGLTextureFactory_Access is
   begin
        return OpenGLTextureFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out OpenGLTextureFactory'Class) is
   begin
      PlatformTextureBaseFactory_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OpenGLTextureFactory_Access is
      This : constant OpenGLTextureFactory_Access := new OpenGLTextureFactory;
   begin
      OpenGLTextureFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure load (This : in out OpenGLTextureFactory; gl : GL10_Access; target : Integer; level : Integer; image : Image_Access; border : Integer; flip : Boolean) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end load;

begin
   null;
   instance := OpenGLTextureFactory_Package.Create;

end org.platform.opengl.OpenGLTextureFactory_Package;


