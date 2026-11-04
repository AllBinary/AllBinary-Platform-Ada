--  Generated Code Do Not Modify


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;

package body org.allbinary.graphics.opengles.OpenGLUtil_Package is

   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   procedure Initialize_Fields (This : in out OpenGLUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLUtil_Access is
      This : constant OpenGLUtil_Access := new OpenGLUtil;
   begin
      OpenGLUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLUtil_Access is
   begin
        return OpenGLUtil_Access (OpenGLUtil_Package.instance);
   end getInstance;

   function addImage (This : in out OpenGLUtil; image_Param : access Image_Package.Image'Class) return Image_Access is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        return image;
   end addImage;

   procedure clear (This : in out OpenGLUtil) is
   begin
        null;
   end clear;

   procedure addRunnable (This : in out OpenGLUtil; runnable_Param : access Runnable_Package.Runnable'Class) is
      runnable : constant Runnable_Access := Runnable_Access (runnable_Param);
   begin
        null;
   end addRunnable;

   procedure addImage (This : in out OpenGLUtil; image_Param : access Image_Package.Image'Class) is
      Java_Result : constant Image_Access := OpenGLUtil'Class (This).addImage (image_Param => image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addImage;

begin
   null;
   instance := OpenGLUtil_Package.Create;

end org.allbinary.graphics.opengles.OpenGLUtil_Package;


