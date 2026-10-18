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


with javax.microedition.khronos.opengles.GL11_Package; use javax.microedition.khronos.opengles.GL11_Package;
with org.allbinary.AndroidUtil_Package; use org.allbinary.AndroidUtil_Package;
with org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package; use org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package;
with org.allbinary.image.opengles.OpenGLESGL11VBOImageFactory_Package; use org.allbinary.image.opengles.OpenGLESGL11VBOImageFactory_Package;
with org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package; use org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.tokens.Tokenizer_Package; use org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;

package body org.allbinary.graphics.opengles.OpenGLCapabilities_Package is

   package GL11_Package renames Standard.javax.microedition.khronos.opengles.GL11_Package;
   package AndroidUtil_Package renames Standard.org.allbinary.AndroidUtil_Package;
   package OpenGLESGL10ImageFactory_Package renames Standard.org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package;
   package OpenGLESGL11VBOImageFactory_Package renames Standard.org.allbinary.image.opengles.OpenGLESGL11VBOImageFactory_Package;
   package OpenGLImageSpecificFactory_Package renames Standard.org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Tokenizer_Package renames Standard.org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
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

   procedure initCapabilities (This : in out OpenGLCapabilities; gl_Param : access GL10_Package.GL10'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
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
            This.glVersionString := gl.glGetString (GL10_Package.GL_VERSION);
            GL_SHADING_LANGUAGE_VERSION := 16#8b8c#;
            This.glShaderVersionString := gl.glGetString (GL_SHADING_LANGUAGE_VERSION);
            if (This.glShaderVersionString) = (Null_Unbounded_String) then
                This.glShaderVersionString := This.stringUtil.EMPTY_STRING;
            end if;
            begin
                if ((This.glShaderVersionString) /= (Null_Unbounded_String)) and then ((Java_Index_Of (This.glShaderVersionString, Java_Image ('.'))) >= (0)) then
                    startIndex := Java_Last_Index_Of (This.glShaderVersionString, Java_Image (' '));
                    if (startIndex) >= (0) then
                        This.glShaderVersionString := Unbounded_Slice (This.glShaderVersionString, ((startIndex) + (1)) + 1, Length (This.glShaderVersionString));
                    end if;
                    This.shaderVersion := Integer'Value (To_String (Java_Replace (This.glShaderVersionString, Java_Image (CommonSeps_Package.getInstance.PERIOD), Java_Image (StringUtil_Package.getInstance.EMPTY_STRING))));
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, OpenGLCapabilities_Access'(This'Unchecked_Access), METHOD_NAME, e);
                    end;
            end;
            This.glRenderer := gl.glGetString (GL10_Package.GL_RENDERER);
            This.glVendor := gl.glGetString (GL10_Package.GL_VENDOR);
            This.glExtensions := gl.glGetString (GL10_Package.GL_EXTENSIONS);
            if (Java_Index_Of (This.glExtensions, Java_Image (This.GL_EXT_GPU_SHADER_100))) >= (0) then
                This.glExtensionGPUShader100 := True;
            else
                This.glExtensionGPUShader100 := False;
            end if;
            if (Java_Index_Of (This.glExtensions, Java_Image (This.GL_EXT_GPU_SHADER4))) >= (0) then
                This.glExtensionGPUShader4 := True;
            else
                This.glExtensionGPUShader4 := False;
            end if;
            if (This.glRenderer) = (Null_Unbounded_String) then
                This.glRenderer := This.stringUtil.EMPTY_STRING;
            end if;
            if (Java_Index_Of (Translate (This.glRenderer, Ada.Strings.Maps.Constants.Lower_Case_Map), Java_Image (To_Unbounded_String ("pixelflinger")))) >= (0) then
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
            elsif (Java_Index_Of (This.glVersionString, Java_Image (To_Unbounded_String (" 1.0")))) >= (0) then
                This.glVersion := This.VERSION_1_0;
            elsif (Java_Index_Of (This.glVersionString, Java_Image (To_Unbounded_String (" 1.1")))) >= (0) then
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
                PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("VBO:?")).appendboolean (((This.glInstanceVersion) = (This.VERSION_1_1))).append (To_Unbounded_String ("||")).appendboolean (OpenGLCapabilities'Class (This).isExtension (openGLFeatureFactory.OPENGL_VERTEX_BUFFER_OBJECT)).toString, OpenGLCapabilities_Access'(This'Unchecked_Access), METHOD_NAME);
                if (((This.glInstanceVersion) = (This.VERSION_1_1)) or else (OpenGLCapabilities'Class (This).isExtension (openGLFeatureFactory.OPENGL_VERTEX_BUFFER_OBJECT))) then
                    if AndroidUtil_Package.isAndroid then
                        PreLogUtil_Package.put (To_Unbounded_String ("VBO implementation was detected, but disabled by default for Android"), OpenGLCapabilities_Access'(This'Unchecked_Access), METHOD_NAME);
                    else
                        PreLogUtil_Package.put (To_Unbounded_String ("VBO implementation was detected, but disabled for now"), OpenGLCapabilities_Access'(This'Unchecked_Access), METHOD_NAME);
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
                    PreLogUtil_Package.put (stringBuffer.toString, OpenGLCapabilities_Access'(This'Unchecked_Access), METHOD_NAME);
                    openGLImageSpecificFactory.setImageFactory (OpenGLESGL10ImageFactory_Package.Create);
                end if;
            else
                stringBuffer.append (stringUtil.toString (openGLFeatureFactory.OPENGL_AUTO_SELECT));
                stringBuffer.append (To_Unbounded_String (" is not on"));
                PreLogUtil_Package.put (stringBuffer.toString, OpenGLCapabilities_Access'(This'Unchecked_Access), METHOD_NAME);
                openGLImageSpecificFactory.setImageFactory (OpenGLESGL10ImageFactory_Package.Create);
            end if;
            maxTextureSizeArray := new Integer_Array'(0 .. (1) - 1 => 0);
            gl.glGetIntegerv (GL10_Package.GL_MAX_TEXTURE_SIZE, maxTextureSizeArray, 0);
            This.maxTextureSize := maxTextureSizeArray (0);
            This.initialized := True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, OpenGLCapabilities_Access'(This'Unchecked_Access), METHOD_NAME, e);
                end;
        end;
   end initCapabilities;

   function isExtension (This : in out OpenGLCapabilities; gameFeature_Param : access OpenGLFeature_Package.OpenGLFeature'Class) return Boolean is
      gameFeature : constant OpenGLFeature_Access := OpenGLFeature_Access (gameFeature_Param);
      index : Integer;
   begin
        index := Java_Index_Of (This.glExtensions, Java_Image (gameFeature.getName));
        if (index) >= (0) then
            return True;
        else
            return False;
        end if;
   end isExtension;

   function isGlExtensionDrawTexture (This : in out OpenGLCapabilities) return Boolean is
   begin
        OpenGLCapabilities'Class (This).requireInitialization;
        return This.glExtensionDrawTexture;
   end isGlExtensionDrawTexture;

   function isGlExtensionGPUShader100 (This : in out OpenGLCapabilities) return Boolean is
   begin
        return This.glExtensionGPUShader100;
   end isGlExtensionGPUShader100;

   function isGlExtensionGPUShader4 (This : in out OpenGLCapabilities) return Boolean is
   begin
        OpenGLCapabilities'Class (This).requireInitialization;
        return This.glExtensionGPUShader4;
   end isGlExtensionGPUShader4;

   function getGlVersion (This : in out OpenGLCapabilities) return Unbounded_String is
   begin
        OpenGLCapabilities'Class (This).requireInitialization;
        return This.glVersion;
   end getGlVersion;

   function getGlVersionString (This : in out OpenGLCapabilities) return Unbounded_String is
   begin
        OpenGLCapabilities'Class (This).requireInitialization;
        return This.glVersionString;
   end getGlVersionString;

   function getGlShaderVersion (This : in out OpenGLCapabilities) return Unbounded_String is
   begin
        OpenGLCapabilities'Class (This).requireInitialization;
        return This.glShaderVersionString;
   end getGlShaderVersion;

   function isGlThreedDrawTexture (This : in out OpenGLCapabilities) return Boolean is
   begin
        OpenGLCapabilities'Class (This).requireInitialization;
        return This.glThreedDrawTexture;
   end isGlThreedDrawTexture;

   function getGlRenderer (This : in out OpenGLCapabilities) return Unbounded_String is
   begin
        OpenGLCapabilities'Class (This).requireInitialization;
        return This.glRenderer;
   end getGlRenderer;

   function isVertexBufferObjectSupport (This : in out OpenGLCapabilities) return Boolean is
   begin
        OpenGLCapabilities'Class (This).requireInitialization;
        return This.vertexBufferObjectSupport;
   end isVertexBufferObjectSupport;

   function isTextureSizeValid (This : in out OpenGLCapabilities; widthAndHeight : Integer) return Boolean is
   begin
        OpenGLCapabilities'Class (This).requireInitialization;
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
        stringBuffer.appendboolean (OpenGLCapabilities'Class (This).isVertexBufferObjectSupport);
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
            PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, OpenGLCapabilities_Access'(This'Unchecked_Access), commonStrings.TOSTRING, e);
                end;
        end;
        return stringBuffer.toString;
   end toString;

   procedure isExtension (This : in out OpenGLCapabilities; gameFeature_Param : access OpenGLFeature_Package.OpenGLFeature'Class) is
      Java_Result : constant Boolean := OpenGLCapabilities'Class (This).isExtension (gameFeature_Param);
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


