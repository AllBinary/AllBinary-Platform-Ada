--  Generated Code Do Not Modify


package body org.allbinary.graphics.opengles.OpenGLLogUtil_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLLogUtil_Access is
   begin
        return OpenGLLogUtil_Package.instance;
   end getInstance;

   procedure logError (This : in out OpenGLLogUtil; gl : GL10_Access) is
      error : Integer;
      stringBuffer : StringMaker_Access;
      maxTextureSize : Integer_Array_Access;
   begin
        error := gl.glGetError;
        if (error) /= (GL10.GL_NO_ERROR) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (OpenGLStrings_Package.getInstance.GL_ERROR_LABEL);
            stringBuffer.appendint (error);
            if (error) = (1281) then
                stringBuffer.append (This.MAX_TEXTURE);
                maxTextureSize := new Integer_Array'(0 .. (1) - 1 => 0);
                gl.glGetIntegerv (GL10.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0);
                stringBuffer.appendint (maxTextureSize (0));
            end if;
            if (error) = (1280) then
                PreLogUtil_Package.put (stringBuffer.toString, This'Unchecked_Access, OpenGLStrings_Package.getInstance.SET);
            else
                ForcedLogUtil_Package.log (stringBuffer.toString, This'Unchecked_Access);
            end if;
        end if;
   end logError;

   procedure logError (This : in out OpenGLLogUtil; gl : GL10_Access; image_Case : Image_Access) is
      error : Integer;
      stringBuffer : StringMaker_Access;
      maxTextureSize : Integer_Array_Access;
   begin
        error := gl.glGetError;
        if (error) /= (GL10.GL_NO_ERROR) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (OpenGLStrings_Package.getInstance.GL_ERROR_LABEL);
            stringBuffer.appendint (error);
            if (error) = (1281) then
                stringBuffer.append (This.MAX_TEXTURE);
                maxTextureSize := new Integer_Array'(0 .. (1) - 1 => 0);
                gl.glGetIntegerv (GL10.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0);
                stringBuffer.appendint (maxTextureSize (0));
            end if;
            stringBuffer.append (This.IMAGE);
            stringBuffer.append (image_Case.toString);
            PreLogUtil_Package.put (stringBuffer.toString, This'Unchecked_Access, This.LOG_ERROR);
        end if;
   end logError;

   procedure getInstance is
      Java_Result : constant OpenGLLogUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := OpenGLLogUtil_Package.Create;

end org.allbinary.graphics.opengles.OpenGLLogUtil_Package;


