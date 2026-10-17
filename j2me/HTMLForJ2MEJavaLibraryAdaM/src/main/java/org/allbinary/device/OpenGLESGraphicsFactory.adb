--  Generated Code Do Not Modify


package body org.allbinary.device.OpenGLESGraphicsFactory_Package is

   procedure Initialize_Fields (This : in out OpenGLESGraphicsFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESGraphicsFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESGraphicsFactory_Access is
      This : constant OpenGLESGraphicsFactory_Access := new OpenGLESGraphicsFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getOpenGLESGraphicsInstance (This : in out OpenGLESGraphicsFactory) return OpenGLESGraphics_Access is
   begin
        return null;
   end getOpenGLESGraphicsInstance;

   procedure getOpenGLESGraphicsInstance (This : in out OpenGLESGraphicsFactory) is
      Java_Result : constant OpenGLESGraphics_Access := OpenGLESGraphicsFactory'Class (This).getOpenGLESGraphicsInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOpenGLESGraphicsInstance;

end org.allbinary.device.OpenGLESGraphicsFactory_Package;


