--  Generated Code Do Not Modify


package body org.allbinary.graphics.opengles.OpenGLProcessor_Package is

   procedure Initialize_Fields (This : in out OpenGLProcessor'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLProcessor_Access is
      This : constant OpenGLProcessor_Access := new OpenGLProcessor;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure process (This : in out OpenGLProcessor; gl : GL10_Access) is
   begin
        null;
   end process;

end org.allbinary.graphics.opengles.OpenGLProcessor_Package;


