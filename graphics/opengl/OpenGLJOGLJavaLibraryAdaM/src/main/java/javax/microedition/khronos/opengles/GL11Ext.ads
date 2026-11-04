--  Generated Code Do Not Modify

limited with javax.microedition.khronos.opengles.GL11Ext_Package;
package javax.microedition.khronos.opengles.GL11Ext_Package_References is
   type GL11Ext_Access is access all javax.microedition.khronos.opengles.GL11Ext_Package.GL11Ext'Class;
   type GL11Ext_Access_Array is array (Natural range <>) of GL11Ext_Access;
   type GL11Ext_Access_Array_Access is access all GL11Ext_Access_Array;
   type GL11Ext_Access_Array_Access_Array is array (Natural range <>) of GL11Ext_Access_Array_Access;
   type GL11Ext_Access_Array_Access_Array_Access is access all GL11Ext_Access_Array_Access_Array;
end javax.microedition.khronos.opengles.GL11Ext_Package_References;

with javax.microedition.khronos.opengles.GL11Ext_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;

package javax.microedition.khronos.opengles.GL11Ext_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type GL11Ext is interface and GL;
   subtype GL11Ext_Access is javax.microedition.khronos.opengles.GL11Ext_Package_References.GL11Ext_Access;
   function "=" (Left, Right : GL11Ext_Access) return Boolean renames javax.microedition.khronos.opengles.GL11Ext_Package_References."=";
   subtype GL11Ext_Access_Array is javax.microedition.khronos.opengles.GL11Ext_Package_References.GL11Ext_Access_Array;
   function "=" (Left, Right : GL11Ext_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL11Ext_Package_References."=";
   subtype GL11Ext_Access_Array_Access is javax.microedition.khronos.opengles.GL11Ext_Package_References.GL11Ext_Access_Array_Access;
   function "=" (Left, Right : GL11Ext_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL11Ext_Package_References."=";
   subtype GL11Ext_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL11Ext_Package_References.GL11Ext_Access_Array_Access_Array;
   function "=" (Left, Right : GL11Ext_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL11Ext_Package_References."=";
   subtype GL11Ext_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL11Ext_Package_References.GL11Ext_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GL11Ext_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL11Ext_Package_References."=";
   function Java_Object_Access_From_GL11Ext (Value : GL11Ext_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES : Integer := 35742;
   GL_MATRIX_INDEX_ARRAY_OES : Integer := 34884;
   GL_MATRIX_INDEX_ARRAY_POINTER_OES : Integer := 34889;
   GL_MATRIX_INDEX_ARRAY_SIZE_OES : Integer := 34886;
   GL_MATRIX_INDEX_ARRAY_STRIDE_OES : Integer := 34888;
   GL_MATRIX_INDEX_ARRAY_TYPE_OES : Integer := 34887;
   GL_MATRIX_PALETTE_OES : Integer := 34880;
   GL_MAX_PALETTE_MATRICES_OES : Integer := 34882;
   GL_MAX_VERTEX_UNITS_OES : Integer := 34468;
   GL_TEXTURE_CROP_RECT_OES : Integer := 35741;
   GL_WEIGHT_ARRAY_BUFFER_BINDING_OES : Integer := 34974;
   GL_WEIGHT_ARRAY_OES : Integer := 34477;
   GL_WEIGHT_ARRAY_POINTER_OES : Integer := 34476;
   GL_WEIGHT_ARRAY_SIZE_OES : Integer := 34475;
   GL_WEIGHT_ARRAY_STRIDE_OES : Integer := 34474;
   GL_WEIGHT_ARRAY_TYPE_OES : Integer := 34473;
   procedure glTexParameterfv (This : in out GL11Ext; target : Integer; pname : Integer; param : Float_Array_Access; offset : Integer) is abstract;
   procedure glCurrentPaletteMatrixOES (This : in out GL11Ext; matrixpaletteindex : Integer) is abstract;
   procedure glDrawTexfOES (This : in out GL11Ext; x : Float; y : Float; z : Float; width : Float; height : Float) is abstract;
   procedure glDrawTexfvOES (This : in out GL11Ext; coords : Float_Array_Access; offset : Integer) is abstract;
   procedure glDrawTexfvOES (This : in out GL11Ext; coords_Param : access FloatBuffer_Package.FloatBuffer'Class) is abstract;
   procedure glDrawTexiOES (This : in out GL11Ext; x : Integer; y : Integer; z : Integer; width : Integer; height : Integer) is abstract;
   procedure glDrawTexivOES (This : in out GL11Ext; coords : Integer_Array_Access; offset : Integer) is abstract;
   procedure glDrawTexivOES (This : in out GL11Ext; coords_Param : access IntBuffer_Package.IntBuffer'Class) is abstract;
   procedure glDrawTexsOES (This : in out GL11Ext; x : Short_Integer; y : Short_Integer; z : Short_Integer; width : Short_Integer; height : Short_Integer) is abstract;
   procedure glDrawTexsvOES (This : in out GL11Ext; coords : Short_Integer_Array_Access; offset : Integer) is abstract;
   procedure glDrawTexsvOES (This : in out GL11Ext; coords_Param : access ShortBuffer_Package.ShortBuffer'Class) is abstract;
   procedure glDrawTexxOES (This : in out GL11Ext; x : Integer; y : Integer; z : Integer; width : Integer; height : Integer) is abstract;
   procedure glDrawTexxvOES (This : in out GL11Ext; coords : Integer_Array_Access; offset : Integer) is abstract;
   procedure glDrawTexxvOES (This : in out GL11Ext; coords_Param : access IntBuffer_Package.IntBuffer'Class) is abstract;
   procedure glEnable (This : in out GL11Ext; cap : Integer) is abstract;
   procedure glEnableClientState (This : in out GL11Ext; array_Id : Integer) is abstract;
   procedure glLoadPaletteFromModelViewMatrixOES (This : in out GL11Ext) is abstract;
   procedure glMatrixIndexPointerOES (This : in out GL11Ext; size : Integer; type_Id : Integer; stride : Integer; pointer_Param : access Buffer_Package.Buffer'Class) is abstract;
   procedure glMatrixIndexPointerOES (This : in out GL11Ext; size : Integer; type_Id : Integer; stride : Integer; offset : Integer) is abstract;
   procedure glWeightPointerOES (This : in out GL11Ext; size : Integer; type_Id : Integer; stride : Integer; pointer_Param : access Buffer_Package.Buffer'Class) is abstract;
   procedure glWeightPointerOES (This : in out GL11Ext; size : Integer; type_Id : Integer; stride : Integer; offset : Integer) is abstract;

end javax.microedition.khronos.opengles.GL11Ext_Package;


