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

   function makeByteBuffer (This : in out OpenGLGLUUtils; bmp_Param : access OpenGLBitmap'Class; flip : Boolean) return ByteBuffer_Access is
      bmp : OpenGLBitmap_Access := OpenGLBitmap_Access (bmp_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end makeByteBuffer;

   procedure texImage2D (This : in out OpenGLGLUUtils; gl_Param : access GL10'Class; glVersion : Unbounded_String; target : Integer; level : Integer; generateMipMap : Boolean; openGLESImage_Param : access OpenGLESImage'Class; border : Integer; flip : Boolean) is
      gl : GL10_Access := GL10_Access (gl_Param);
      openGLESImage : OpenGLESImage_Access := OpenGLESImage_Access (openGLESImage_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end texImage2D;

   procedure texImage2D (This : in out OpenGLGLUUtils; gl_Param : access GL10'Class; glVersion : Unbounded_String; target : Integer; level : Integer; generateMipMap : Boolean; bitmap_Param : access OpenGLBitmap'Class; border : Integer; flip : Boolean) is
      gl : GL10_Access := GL10_Access (gl_Param);
      bitmap : OpenGLBitmap_Access := OpenGLBitmap_Access (bitmap_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end texImage2D;

   procedure makeByteBuffer (This : in out OpenGLGLUUtils; bmp_Param : access OpenGLBitmap'Class; flip : Boolean) is
      Java_Result : constant ByteBuffer_Access := OpenGLGLUUtils'Class (This).makeByteBuffer (bmp_Param, flip);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end makeByteBuffer;

begin
   null;
   instance := OpenGLGLUUtils_Package.Create;

end org.platform.opengl.OpenGLGLUUtils_Package;


