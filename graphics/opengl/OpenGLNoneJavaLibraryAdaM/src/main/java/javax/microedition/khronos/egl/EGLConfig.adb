--  Generated Code Do Not Modify


package body javax.microedition.khronos.egl.EGLConfig_Package is

   procedure Initialize_Fields (This : in out EGLConfig'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out EGLConfig'Class) is
   begin
      Initialize_Fields (This);
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end Initialize;

   function Create return EGLConfig_Access is
      This : constant EGLConfig_Access := new EGLConfig;
   begin
      Initialize (This.all);
      return This;
   end Create;

end javax.microedition.khronos.egl.EGLConfig_Package;


