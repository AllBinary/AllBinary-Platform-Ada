--  Generated Code Do Not Modify


package body org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package is

   procedure Initialize_Fields (This : in out EnableFacesShaderOpenGLProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return EnableFacesShaderOpenGLProcessor_Access is
   begin
        return EnableFacesShaderOpenGLProcessor_Package.instance;
   end getInstance;

   procedure Initialize (This : in out EnableFacesShaderOpenGLProcessor'Class) is
   begin
      ObjectThreedOpenGLProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return EnableFacesShaderOpenGLProcessor_Access is
      This : constant EnableFacesShaderOpenGLProcessor_Access := new EnableFacesShaderOpenGLProcessor;
   begin
      EnableFacesShaderOpenGLProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   procedure process (This : in out EnableFacesShaderOpenGLProcessor; gl : GL10_Access; anyType : Java_Object_Access) is
   begin
        null;
   end process;

begin
   null;
   instance := EnableFacesShaderOpenGLProcessor_Package.Create;

end org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package;


