--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.graphics.opengles.OpenGLCapabilities_Package is

   procedure Initialize_Fields (This : in out OpenGLCapabilities'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.CUSTOM_GL_SURFACE_VIEW := True;
      This.stringUtil := StringUtil_Package.getInstance;
      This.initialized := False;
      This.glVersionString := This.stringUtil.EMPTY_STRING;
      This.glShaderVersionString := This.stringUtil.EMPTY_STRING;
      This.shaderVersion := 0;
      This.glRenderer := This.stringUtil.EMPTY_STRING;
      This.glVendor := This.stringUtil.EMPTY_STRING;
      This.glExtensions := This.stringUtil.EMPTY_STRING;
      This.possiblyAccelerated := False;
      This.acceleratedString := This.stringUtil.EMPTY_STRING;
      This.maxTextureSize := 64;
      This.VERSION_1_0 := To_Unbounded_String ("1.0");
      This.VERSION_1_1 := To_Unbounded_String ("1.1");
      This.VERSION_2_0 := To_Unbounded_String ("2.0");
      This.VERSION_3_0 := To_Unbounded_String ("3.0");
      This.VERSION_3_1 := To_Unbounded_String ("3.1");
      This.VERSION_3_2 := To_Unbounded_String ("3.2");
      This.VERSION_HIGHER_THAN_EXISTS := To_Unbounded_String ("999.999");
      This.VERSION_UNK := To_Unbounded_String ("Unk");
      This.GL_EXT_GPU_SHADER_100 := To_Unbounded_String ("GL_ARB_shading_language_100");
      This.GL_EXT_GPU_SHADER4 := To_Unbounded_String ("GL_EXT_gpu_shader4");
      This.glVersion := This.glVersionString;
      This.glInstanceVersion := This.VERSION_UNK;
      This.glExtensionDrawTexture := False;
      This.glThreedDrawTexture := False;
      This.glExtensionGPUShader4 := False;
      This.glExtensionGPUShader100 := False;
      This.vertexBufferObjectSupport := False;
   end Initialize_Fields;


   function getInstance return OpenGLCapabilities_Access is
   begin
        return OpenGLCapabilities_Package.instance;
   end getInstance;

   procedure Initialize (This : in out OpenGLCapabilities'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OpenGLCapabilities_Access is
      This : constant OpenGLCapabilities_Access := new OpenGLCapabilities;
   begin
      OpenGLCapabilities_Package.Initialize (This.all);
      return This;
   end Create;

   function isInitialized (This : in out OpenGLCapabilities) return Boolean is
   begin
        return This.initialized;
   end isInitialized;

   procedure requireInitialization (This : in out OpenGLCapabilities) is
   begin
        null;
   end requireInitialization;

   procedure initCapabilities (This : in out OpenGLCapabilities; gl : GL10_Access) is
      METHOD_NAME : Unbounded_String;
      features : Features_Access;
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
      openGLImageSpecificFactory : OpenGLImageSpecificFactory_Access;
      stringBuffer : StringMaker_Access;
      GL_SHADING_LANGUAGE_VERSION : Integer;
      startIndex : Integer;
      commonStrings : CommonStrings_Access;
      stringUtil : StringUtil_Access;
      maxTextureSizeArray : Integer_Array_Access;
   begin
        METHOD_NAME := To_Unbounded_String ("initGLCapabilities");
        begin
            features := Features_Package.getInstance;
            openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
            openGLImageSpecificFactory := OpenGLImageSpecificFactory_Package.getInstance;
            stringBuffer := StringMaker_Package.Create;
            This.glVersionString := gl.glGetString (GL10.GL_VERSION);
            GL_SHADING_LANGUAGE_VERSION := 16#8b8c#;
            This.glShaderVersionString := gl.glGetString (GL_SHADING_LANGUAGE_VERSION);
            if (This.glShaderVersionString) = (Null_Unbounded_String) then
                This.glShaderVersionString := This.stringUtil.EMPTY_STRING;
            end if;
            begin
                if ((This.glShaderVersionString) /= (Null_Unbounded_String)) and then (((Index (This.glShaderVersionString, To_String ('.')) - 1)) >= (0)) then
                    startIndex := This.glShaderVersionString.lastIndexOf (' ');
                    if (startIndex) >= (0) then
                        This.glShaderVersionString := Unbounded_Slice (This.glShaderVersionString, ((startIndex) + (1)) + 1, Length (This.glShaderVersionString));
                    end if;
                    This.shaderVersion := Integer'Value (To_String (This.glShaderVersionString.replace (CommonSeps_Package.getInstance.PERIOD, StringUtil_Package.getInstance.EMPTY_STRING)));
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, METHOD_NAME, e);
                    end;
            end;
            This.glRenderer := gl.glGetString (GL10.GL_RENDERER);
            This.glVendor := gl.glGetString (GL10.GL_VENDOR);
            This.glExtensions := gl.glGetString (GL10.GL_EXTENSIONS);
            if ((Index (This.glExtensions, To_String (This.GL_EXT_GPU_SHADER_100)) - 1)) >= (0) then
                This.glExtensionGPUShader100 := True;
            else
                This.glExtensionGPUShader100 := False;
            end if;
            if ((Index (This.glExtensions, To_String (This.GL_EXT_GPU_SHADER4)) - 1)) >= (0) then
                This.glExtensionGPUShader4 := True;
            else
                This.glExtensionGPUShader4 := False;
            end if;
            if (This.glRenderer) = (Null_Unbounded_String) then
                This.glRenderer := This.stringUtil.EMPTY_STRING;
            end if;
            if ((Index (Translate (This.glRenderer, Ada.Strings.Maps.Constants.Lower_Case_Map), To_String (To_Unbounded_String ("pixelflinger"))) - 1)) >= (0) then
                This.acceleratedString := To_Unbounded_String ("Probably Not for ") & This.glRenderer;
                This.possiblyAccelerated := False;
            else
                This.acceleratedString := To_Unbounded_String ("Probably for ") & This.glRenderer;
                This.possiblyAccelerated := True;
            end if;
            This.glExtensionDrawTexture := False;
            if (This.glVersionString) = (Null_Unbounded_String) then
                This.glVersionString := This.stringUtil.EMPTY_STRING;
                This.glVersion := This.VERSION_UNK;
            elsif ((Index (This.glVersionString, To_String (To_Unbounded_String (" 1.0"))) - 1)) >= (0) then
                This.glVersion := This.VERSION_1_0;
            elsif ((Index (This.glVersionString, To_String (To_Unbounded_String (" 1.1"))) - 1)) >= (0) then
                This.glVersion := This.VERSION_1_1;
            else
                This.glVersion := This.VERSION_UNK;
            end if;
            if (gl.all in GL11_Package.GL11'Class) then
                This.glInstanceVersion := This.VERSION_1_1;
            elsif (gl.all in GL10_Package.GL10'Class) then
                This.glInstanceVersion := This.VERSION_1_0;
            end if;
            if (This.glVendor) = (Null_Unbounded_String) then
                This.glVendor := This.stringUtil.EMPTY_STRING;
            end if;
            if (This.glExtensions) = (Null_Unbounded_String) then
                This.glExtensions := This.stringUtil.EMPTY_STRING;
            end if;
            if This.possiblyAccelerated then
                PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("VBO:?")).appendboolean (((This.glInstanceVersion) = (This.VERSION_1_1))).append (To_Unbounded_String ("||")).appendboolean (This.isExtension (openGLFeatureFactory.OPENGL_VERTEX_BUFFER_OBJECT)).toString, This'Unchecked_Access, METHOD_NAME);
                if (((This.glInstanceVersion) = (This.VERSION_1_1)) or else (This.isExtension (openGLFeatureFactory.OPENGL_VERTEX_BUFFER_OBJECT))) then
                    if AndroidUtil_Package.isAndroid then
                        PreLogUtil_Package.put (To_Unbounded_String ("VBO implementation was detected, but disabled by default for Android"), This'Unchecked_Access, METHOD_NAME);
                    else
                        PreLogUtil_Package.put (To_Unbounded_String ("VBO implementation was detected, but disabled for now"), This'Unchecked_Access, METHOD_NAME);
                    end if;
                end if;
            end if;
            stringUtil := StringUtil_Package.getInstance;
            if features.isDefault (openGLFeatureFactory.OPENGL_AUTO_SELECT) then
                if This.vertexBufferObjectSupport then
                    openGLImageSpecificFactory.setImageFactory (OpenGLESGL11VBOImageFactory_Package.Create);
                else
                    stringBuffer.append (To_Unbounded_String ("OpenGL is on but "));
                    stringBuffer.append (stringUtil.toString (openGLFeatureFactory.OPENGL_DRAW_TEXTURE));
                    stringBuffer.append (To_Unbounded_String (" was not available"));
                    PreLogUtil_Package.put (stringBuffer.toString, This'Unchecked_Access, METHOD_NAME);
                    openGLImageSpecificFactory.setImageFactory (OpenGLESGL10ImageFactory_Package.Create);
                end if;
            else
                stringBuffer.append (stringUtil.toString (openGLFeatureFactory.OPENGL_AUTO_SELECT));
                stringBuffer.append (To_Unbounded_String (" is not on"));
                PreLogUtil_Package.put (stringBuffer.toString, This'Unchecked_Access, METHOD_NAME);
                openGLImageSpecificFactory.setImageFactory (OpenGLESGL10ImageFactory_Package.Create);
            end if;
            maxTextureSizeArray := new Integer_Array'(0 .. (1) - 1 => 0);
            gl.glGetIntegerv (GL10.GL_MAX_TEXTURE_SIZE, maxTextureSizeArray, 0);
            This.maxTextureSize := maxTextureSizeArray (0);
            This.initialized := True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, METHOD_NAME, e);
                end;
        end;
   end initCapabilities;

   function isExtension (This : in out OpenGLCapabilities; gameFeature : OpenGLFeature_Access) return Boolean is
      index : Integer;
   begin
        index := (Index (This.glExtensions, To_String (gameFeature.getName)) - 1);
        if (index) >= (0) then
            return True;
        else
            return False;
        end if;
   end isExtension;

   function isGlExtensionDrawTexture (This : in out OpenGLCapabilities) return Boolean is
   begin
        This.requireInitialization;
        return This.glExtensionDrawTexture;
   end isGlExtensionDrawTexture;

   function isGlExtensionGPUShader100 (This : in out OpenGLCapabilities) return Boolean is
   begin
        return This.glExtensionGPUShader100;
   end isGlExtensionGPUShader100;

   function isGlExtensionGPUShader4 (This : in out OpenGLCapabilities) return Boolean is
   begin
        This.requireInitialization;
        return This.glExtensionGPUShader4;
   end isGlExtensionGPUShader4;

   function getGlVersion (This : in out OpenGLCapabilities) return Unbounded_String is
   begin
        This.requireInitialization;
        return This.glVersion;
   end getGlVersion;

   function getGlVersionString (This : in out OpenGLCapabilities) return Unbounded_String is
   begin
        This.requireInitialization;
        return This.glVersionString;
   end getGlVersionString;

   function getGlShaderVersion (This : in out OpenGLCapabilities) return Unbounded_String is
   begin
        This.requireInitialization;
        return This.glShaderVersionString;
   end getGlShaderVersion;

   function isGlThreedDrawTexture (This : in out OpenGLCapabilities) return Boolean is
   begin
        This.requireInitialization;
        return This.glThreedDrawTexture;
   end isGlThreedDrawTexture;

   function getGlRenderer (This : in out OpenGLCapabilities) return Unbounded_String is
   begin
        This.requireInitialization;
        return This.glRenderer;
   end getGlRenderer;

   function isVertexBufferObjectSupport (This : in out OpenGLCapabilities) return Boolean is
   begin
        This.requireInitialization;
        return This.vertexBufferObjectSupport;
   end isVertexBufferObjectSupport;

   function isTextureSizeValid (This : in out OpenGLCapabilities; widthAndHeight : Integer) return Boolean is
   begin
        This.requireInitialization;
        if (This.maxTextureSize) >= (widthAndHeight) then
            return True;
        end if;
        return False;
   end isTextureSizeValid;

   function toString (This : in out OpenGLCapabilities) return Unbounded_String is
      commonSeps : CommonSeps_Access;
      stringBuffer : StringMaker_Access;
      tokenizer : Tokenizer_Access;
      list : BasicArrayList_Access;
      size : Integer;
      index : Integer;
      commonStrings : CommonStrings_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("GL_VERSION: "));
        stringBuffer.append (This.glVersionString);
        stringBuffer.append (To_Unbounded_String (" GL_SHADING_LANGUAGE_VERSION: "));
        stringBuffer.append (This.glShaderVersionString);
        stringBuffer.append (To_Unbounded_String (" GL_RENDERER: "));
        stringBuffer.append (This.glRenderer);
        stringBuffer.append (To_Unbounded_String (" GL_VENDOR: "));
        stringBuffer.append (This.glVendor);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (To_Unbounded_String (" Is Accelerated: "));
        stringBuffer.append (This.acceleratedString);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (To_Unbounded_String (" VBO Support: "));
        stringBuffer.appendboolean (This.isVertexBufferObjectSupport);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (To_Unbounded_String (" Max Texture Size: "));
        stringBuffer.appendint (This.maxTextureSize);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (To_Unbounded_String (" GL_EXTENSIONS: "));
        begin
            tokenizer := Tokenizer_Package.Create (commonSeps.SPACE);
            list := tokenizer.getTokensFromString (This.glExtensions, BasicArrayListD_Package.Create);
            size := list.size;
            for index in 0 .. (size) - 1 loop
                stringBuffer.append (commonSeps.NEW_LINE);
                stringBuffer.append (This.stringUtil.toString (list.objectArray (index)));
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.TOSTRING, e);
                end;
        end;
        return stringBuffer.toString;
   end toString;

   procedure isExtension (This : in out OpenGLCapabilities; gameFeature : OpenGLFeature_Access) is
      Java_Result : constant Boolean := OpenGLCapabilities'Class (This).isExtension (gameFeature);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isExtension;

   procedure isTextureSizeValid (This : in out OpenGLCapabilities; widthAndHeight : Integer) is
      Java_Result : constant Boolean := OpenGLCapabilities'Class (This).isTextureSizeValid (widthAndHeight);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTextureSizeValid;

begin
   null;
   instance := OpenGLCapabilities_Package.Create;

end org.allbinary.graphics.opengles.OpenGLCapabilities_Package;


