--  Generated Code Do Not Modify



package body org.allbinary.graphics.opengles.OpenGLUtil_Package is

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
        return OpenGLUtil_Package.instance;
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
      Java_Result : constant Image_Access := OpenGLUtil'Class (This).addImage (image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addImage;

begin
   null;
   instance := OpenGLUtil_Package.Create;

end org.allbinary.graphics.opengles.OpenGLUtil_Package;


