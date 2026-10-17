--  Generated Code Do Not Modify


package body org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package is

   procedure Initialize_Fields (This : in out NullOpenGLProcessorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullOpenGLProcessorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullOpenGLProcessorFactory_Access is
      This : constant NullOpenGLProcessorFactory_Access := new NullOpenGLProcessorFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLProcessor_Access is
   begin
        return NullOpenGLProcessorFactory_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant OpenGLProcessor_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := OpenGLProcessor_Package.Create;

end org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package;


