--  Generated Code Do Not Modify


package body org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package is

   procedure Initialize_Fields (This : in out ShaderOpenGLProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ShaderOpenGLProcessor'Class) is
   begin
      OpenGLProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ShaderOpenGLProcessor_Access is
      This : constant ShaderOpenGLProcessor_Access := new ShaderOpenGLProcessor;
   begin
      ShaderOpenGLProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   procedure process0 (This : in out ShaderOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        null;
   end process0;

   procedure process1 (This : in out ShaderOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        null;
   end process1;

   procedure process (This : in out ShaderOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        null;
   end process;

   procedure process2 (This : in out ShaderOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        null;
   end process2;

   procedure process3 (This : in out ShaderOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        null;
   end process3;

end org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor_Package;


