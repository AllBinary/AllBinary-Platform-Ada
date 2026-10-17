--  Generated Code Do Not Modify


package body org.platform.opengl.OpenGLGLUUtils_Package is

   procedure Initialize_Fields (This : in out OpenGLGLUUtils'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLGLUUtils'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLGLUUtils_Access is
      This : constant OpenGLGLUUtils_Access := new OpenGLGLUUtils;
   begin
      OpenGLGLUUtils_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLGLUUtils_Access is
   begin
        return OpenGLGLUUtils_Package.instance;
   end getInstance;

   function makeByteBuffer (This : in out OpenGLGLUUtils; bmp : OpenGLBitmap_Access; flip : Boolean) return ByteBuffer_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end makeByteBuffer;

   procedure texImage2D (This : in out OpenGLGLUUtils; gl : GL10_Access; glVersion : Unbounded_String; target : Integer; level : Integer; generateMipMap : Boolean; openGLESImage : OpenGLESImage_Access; border : Integer; flip : Boolean) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end texImage2D;

   procedure texImage2D (This : in out OpenGLGLUUtils; gl : GL10_Access; glVersion : Unbounded_String; target : Integer; level : Integer; generateMipMap : Boolean; bitmap : OpenGLBitmap_Access; border : Integer; flip : Boolean) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end texImage2D;

   procedure makeByteBuffer (This : in out OpenGLGLUUtils; bmp : OpenGLBitmap_Access; flip : Boolean) is
      Java_Result : constant ByteBuffer_Access := OpenGLGLUUtils'Class (This).makeByteBuffer (bmp, flip);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end makeByteBuffer;

begin
   null;
   instance := OpenGLGLUUtils_Package.Create;

end org.platform.opengl.OpenGLGLUUtils_Package;


