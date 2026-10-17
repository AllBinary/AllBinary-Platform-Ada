--  Generated Code Do Not Modify


package body org.allbinary.graphics.opengles.OpenGLThreadUtil_Package is

   procedure Initialize_Fields (This : in out OpenGLThreadUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLThreadUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLThreadUtil_Access is
      This : constant OpenGLThreadUtil_Access := new OpenGLThreadUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLThreadUtil_Access is
   begin
        return OpenGLThreadUtil_Package.instance;
   end getInstance;

   procedure set (This : in out OpenGLThreadUtil; glSurfaceView : Java_Object_Access) is
   begin
        null;
   end set;

   procedure onPause (This : in out OpenGLThreadUtil) is
   begin
        null;
   end onPause;

   procedure onResume (This : in out OpenGLThreadUtil) is
   begin
        null;
   end onResume;

   procedure getInstance is
      Java_Result : constant OpenGLThreadUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := OpenGLThreadUtil_Package.Create;

end org.allbinary.graphics.opengles.OpenGLThreadUtil_Package;


