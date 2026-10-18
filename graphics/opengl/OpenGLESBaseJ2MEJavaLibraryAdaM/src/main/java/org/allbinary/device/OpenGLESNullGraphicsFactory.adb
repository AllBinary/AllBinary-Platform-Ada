--  Generated Code Do Not Modify



package body org.allbinary.device.OpenGLESNullGraphicsFactory_Package is

   procedure Initialize_Fields (This : in out OpenGLESNullGraphicsFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESNullGraphicsFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESNullGraphicsFactory_Access is
      This : constant OpenGLESNullGraphicsFactory_Access := new OpenGLESNullGraphicsFactory;
   begin
      OpenGLESNullGraphicsFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLESGraphics_Access is
   begin
        return OpenGLESNullGraphicsFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := OpenGLESGraphics_Package.Create;

end org.allbinary.device.OpenGLESNullGraphicsFactory_Package;


