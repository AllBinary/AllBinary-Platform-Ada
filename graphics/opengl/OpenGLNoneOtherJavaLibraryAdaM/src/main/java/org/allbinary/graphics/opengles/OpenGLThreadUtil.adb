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
      OpenGLThreadUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLThreadUtil_Access is
   begin
        return OpenGLThreadUtil_Package.instance;
   end getInstance;

   procedure set (This : in out OpenGLThreadUtil; glSurfaceView_Param : access Java_Object'Class) is
      glSurfaceView : constant Java_Object_Access := Java_Object_Access (glSurfaceView_Param);
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

   procedure set (This : in out OpenGLThreadUtil; Value : Unbounded_String) is
   begin
      OpenGLThreadUtil'Class (This).set (Java_Box (Value));
   end set;

begin
   null;
   instance := OpenGLThreadUtil_Package.Create;

end org.allbinary.graphics.opengles.OpenGLThreadUtil_Package;


