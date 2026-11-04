--  Generated Code Do Not Modify


with java.nio.ByteBuffer_Package; use java.nio.ByteBuffer_Package;
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
with org.allbinary.graphics.OpenGLBitmap_Package; use org.allbinary.graphics.OpenGLBitmap_Package;
with org.allbinary.graphics.OpenGLBitmap_Package_References;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package_References;

package body org.platform.opengl.OpenGLGLUUtils_Package is

   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   function "=" (Left, Right : GL10_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   function "=" (Left, Right : GL10_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   function "=" (Left, Right : GL10_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype OpenGLBitmap_Access is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access;
   function "=" (Left, Right : OpenGLBitmap_Access) return Boolean renames org.allbinary.graphics.OpenGLBitmap_Package_References."=";
   subtype OpenGLBitmap_Access_Array is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array;
   function "=" (Left, Right : OpenGLBitmap_Access_Array) return Boolean renames org.allbinary.graphics.OpenGLBitmap_Package_References."=";
   subtype OpenGLBitmap_Access_Array_Access is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array_Access;
   function "=" (Left, Right : OpenGLBitmap_Access_Array_Access) return Boolean renames org.allbinary.graphics.OpenGLBitmap_Package_References."=";
   subtype OpenGLBitmap_Access_Array_Access_Array is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLBitmap_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.OpenGLBitmap_Package_References."=";
   subtype OpenGLBitmap_Access_Array_Access_Array_Access is org.allbinary.graphics.OpenGLBitmap_Package_References.OpenGLBitmap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLBitmap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.OpenGLBitmap_Package_References."=";
   subtype OpenGLESImage_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access;
   function "=" (Left, Right : OpenGLESImage_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array;
   function "=" (Left, Right : OpenGLESImage_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImage_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESImage_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImage_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
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
        return OpenGLGLUUtils_Access (OpenGLGLUUtils_Package.instance);
   end getInstance;

   function makeByteBuffer (This : in out OpenGLGLUUtils; bmp_Param : access OpenGLBitmap_Package.OpenGLBitmap'Class; flip : Boolean) return ByteBuffer_Access is
      bmp : constant OpenGLBitmap_Access := OpenGLBitmap_Access (bmp_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end makeByteBuffer;

   procedure texImage2D (This : in out OpenGLGLUUtils; gl_Param : access GL10_Package.GL10'Class; glVersion : Unbounded_String; target : Integer; level : Integer; generateMipMap : Boolean; openGLESImage_Param : access OpenGLESImage_Package.OpenGLESImage'Class; border : Integer; flip : Boolean) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      openGLESImage : constant OpenGLESImage_Access := OpenGLESImage_Access (openGLESImage_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end texImage2D;

   procedure texImage2D (This : in out OpenGLGLUUtils; gl_Param : access GL10_Package.GL10'Class; glVersion : Unbounded_String; target : Integer; level : Integer; generateMipMap : Boolean; bitmap_Param : access OpenGLBitmap_Package.OpenGLBitmap'Class; border : Integer; flip : Boolean) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      bitmap : constant OpenGLBitmap_Access := OpenGLBitmap_Access (bitmap_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end texImage2D;

   procedure makeByteBuffer (This : in out OpenGLGLUUtils; bmp_Param : access OpenGLBitmap_Package.OpenGLBitmap'Class; flip : Boolean) is
      Java_Result : constant ByteBuffer_Access := OpenGLGLUUtils'Class (This).makeByteBuffer (bmp_Param => bmp_Param, flip => flip);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end makeByteBuffer;

begin
   null;
   instance := OpenGLGLUUtils_Package.Create;

end org.platform.opengl.OpenGLGLUUtils_Package;


