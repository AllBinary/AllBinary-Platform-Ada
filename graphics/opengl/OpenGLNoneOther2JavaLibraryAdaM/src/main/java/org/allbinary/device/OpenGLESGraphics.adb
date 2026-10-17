--  Generated Code Do Not Modify


package body org.allbinary.device.OpenGLESGraphics_Package is

   procedure Initialize_Fields (This : in out OpenGLESGraphics'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.gl := NullGL10_Package.NULL_GL10;
   end Initialize_Fields;


   procedure Initialize (This : in out OpenGLESGraphics'Class) is
   begin
      Graphics_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OpenGLESGraphics_Access is
      This : constant OpenGLESGraphics_Access := new OpenGLESGraphics;
   begin
      OpenGLESGraphics_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateGL (This : in out OpenGLESGraphics; gl : GL_Access) is
   begin
        null;
   end updateGL;

   procedure set (This : in out OpenGLESGraphics; gl : GL_Access) is
   begin
        null;
   end set;

   --  throws Exception
   procedure init (This : in out OpenGLESGraphics) is
   begin
        null;
   end init;

   --  throws Exception
   procedure update (This : in out OpenGLESGraphics) is
   begin
        null;
   end update;

   procedure setOrthoginalMode (This : in out OpenGLESGraphics) is
   begin
        null;
   end setOrthoginalMode;

   procedure setCameraMode (This : in out OpenGLESGraphics) is
   begin
        null;
   end setCameraMode;

   function getGl10 (This : in out OpenGLESGraphics) return GL10_Access is
   begin
        return This.gl;
   end getGl10;

   procedure setFontDebug (This : in out OpenGLESGraphics; font : Font_Access; fontDebug : FontDebugBase_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setFontDebug;

end org.allbinary.device.OpenGLESGraphics_Package;


