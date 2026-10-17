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
      OpenGLObject3dProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   procedure process (This : in out OpenGLObject3dProcessor; gl_Param : access GL10_Package.GL10'Class; object3d_Param : access Java_Object'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      object3d : constant Java_Object_Access := Java_Object_Access (object3d_Param);
   begin
        null;
   end process;

   procedure process (This : in out OpenGLObject3dProcessor; gl_Param : access GL10_Package.GL10'Class; object3d_Param : access Java_Object'Class; index : Integer) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      object3d : constant Java_Object_Access := Java_Object_Access (object3d_Param);
   begin
        null;
   end process;

end org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package;


