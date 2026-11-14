--  Generated Code Do Not Modify



package body org.allbinary.image.opengles.OpenGLStrings_Package is

   procedure Initialize_Fields (This : in out OpenGLStrings'Class) is
   begin
      null;
      This.GL_ERROR_LABEL := To_Unbounded_String ("GLError: ");
      This.SET := To_Unbounded_String ("set(GL10)");
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLStrings_Access is
      This : constant OpenGLStrings_Access := new OpenGLStrings;
   begin
      OpenGLStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLStrings_Access is
   begin
        return OpenGLStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := OpenGLStrings_Package.Create;

end org.allbinary.image.opengles.OpenGLStrings_Package;


