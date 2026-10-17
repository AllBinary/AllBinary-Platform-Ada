--  Generated Code Do Not Modify


package body org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package is

   procedure Initialize_Fields (This : in out OpenGLObject3dProcessor'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLObject3dProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLObject3dProcessor_Access is
      This : constant OpenGLObject3dProcessor_Access := new OpenGLObject3dProcessor;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure process (This : in out OpenGLObject3dProcessor; gl : GL10_Access; object3d : Java_Object_Access) is
   begin
        null;
   end process;

   procedure process (This : in out OpenGLObject3dProcessor; gl : GL10_Access; object3d : Java_Object_Access; index : Integer) is
   begin
        null;
   end process;

end org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package;


