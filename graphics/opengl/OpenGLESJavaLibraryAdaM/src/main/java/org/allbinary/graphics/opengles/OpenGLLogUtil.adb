--  Generated Code Do Not Modify


with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with org.allbinary.image.opengles.OpenGLStrings_Package; use org.allbinary.image.opengles.OpenGLStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package;

package body org.allbinary.graphics.opengles.OpenGLLogUtil_Package is

   package OpenGLStrings_Package renames Standard.org.allbinary.image.opengles.OpenGLStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
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
   procedure Initialize_Fields (This : in out OpenGLLogUtil'Class) is
   begin
      null;
      This.MAX_TEXTURE := To_Unbounded_String (" Max Texture Size: ");
      This.LOG_ERROR := To_Unbounded_String ("logError");
      This.IMAGE := To_Unbounded_String (" Image: ");
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLLogUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLLogUtil_Access is
      This : constant OpenGLLogUtil_Access := new OpenGLLogUtil;
   begin
      OpenGLLogUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLLogUtil_Access is
   begin
        return OpenGLLogUtil_Access (OpenGLLogUtil_Package.instance);
   end getInstance;

   procedure logError (This : in out OpenGLLogUtil; gl_Param : access GL10_Package.GL10'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      error : Integer;
      stringBuffer : StringMaker_Access;
      maxTextureSize : Integer_Array_Access;
   begin
        error := gl.glGetError;
        if (error) /= (GL10_Package.GL_NO_ERROR) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (OpenGLStrings_Package.getInstance.GL_ERROR_LABEL);
            stringBuffer.appendint (error);
            if (error) = (1281) then
                stringBuffer.append (This.MAX_TEXTURE);
                maxTextureSize := new Integer_Array'(0 .. (1) - 1 => 0);
                gl.glGetIntegerv (GL10_Package.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0);
                stringBuffer.appendint (maxTextureSize (0));
            end if;
            if (error) = (1280) then
                PreLogUtil_Package.put (stringBuffer.toString, OpenGLLogUtil_Access'(This'Unchecked_Access), OpenGLStrings_Package.getInstance.SET);
            else
                ForcedLogUtil_Package.log (stringBuffer.toString, OpenGLLogUtil_Access'(This'Unchecked_Access));
            end if;
        end if;
   end logError;

   procedure logError (This : in out OpenGLLogUtil; gl_Param : access GL10_Package.GL10'Class; image_Param : access Image_Package.Image'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      image : constant Image_Access := Image_Access (image_Param);
      error : Integer;
      stringBuffer : StringMaker_Access;
      maxTextureSize : Integer_Array_Access;
   begin
        error := gl.glGetError;
        if (error) /= (GL10_Package.GL_NO_ERROR) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (OpenGLStrings_Package.getInstance.GL_ERROR_LABEL);
            stringBuffer.appendint (error);
            if (error) = (1281) then
                stringBuffer.append (This.MAX_TEXTURE);
                maxTextureSize := new Integer_Array'(0 .. (1) - 1 => 0);
                gl.glGetIntegerv (GL10_Package.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0);
                stringBuffer.appendint (maxTextureSize (0));
            end if;
            stringBuffer.append (This.IMAGE);
            stringBuffer.append (image.toString);
            PreLogUtil_Package.put (stringBuffer.toString, OpenGLLogUtil_Access'(This'Unchecked_Access), This.LOG_ERROR);
        end if;
   end logError;

begin
   null;
   instance := OpenGLLogUtil_Package.Create;

end org.allbinary.graphics.opengles.OpenGLLogUtil_Package;


