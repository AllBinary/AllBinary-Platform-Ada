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


package body org.allbinary.logic.visual.transform.BasicTransformer_Package is

   procedure Initialize_Fields (This : in out BasicTransformer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.streamUtil := StreamUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicTransformer'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        AbTransformer_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
        BasicTransformer'Class (This).setTemplateAsInputStream;
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return BasicTransformer_Access is
      This : constant BasicTransformer_Access := new BasicTransformer;
   begin
      BasicTransformer_Package.Initialize (This.all, abeClientInformation_Param, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure setEncryptedTemplateFileAsInputStream (This : in out BasicTransformer; file_Param : access AbFile_Package.AbFile'Class) is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      outputStream : ByteArrayOutputStream_Access;
      inputStream : AbFileInputStream_Access;
      abCrypt : AbCrypt_Access;
      decrypted : Short_Short_Integer_Array_Access;
      stringBuffer : StringMaker_Access;
   begin
        outputStream := null;
        inputStream := null;
        begin
            outputStream := ByteArrayOutputStream_Package.Create;
            inputStream := AbFileInputStream_Package.Create (file);
            outputStream := ByteArrayOutputStream_Access (This.streamUtil.get (inputStream, outputStream, new Short_Short_Integer_Array'(0 .. (16384) - 1 => 0)));
            abCrypt := AbCrypt_Package.Create (KeySpecFactory_Package.DESEDE, AbKeys_Package.getInstance.getKey (This.abeClientInformation, file.getAbsolutePath));
            decrypted := abCrypt.decrypt (outputStream.toByteArray);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                This.logUtil.putF (To_Unbounded_String ("Decrypted Template: " & ASCII.LF & "") & Java_Image (Java_New_String (decrypted)), BasicTransformer_Access'(This'Unchecked_Access), To_Unbounded_String ("setEncryptedTemplateFileAsInputStream(file)"));
            end if;
            BasicTransformer'Class (This).setInputStream (InputStream_Access (ByteArrayInputStream_Package.Create (decrypted)));
            BasicTransformer'Class (This).setURIResolver (URIResolver_Access (BasicUriResolver_Package.Create (TransformInfoTemplateData_Package.getInstance.ENCRYPTED_EXTENSION)));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Failed to get Encrypted File: "));
                stringBuffer.append (file.getPath);
                stringBuffer.append (To_Unbounded_String (" " & ASCII.LF & "Name:"));
                stringBuffer.append (file.getName);
                This.logUtil.put (stringBuffer.toString, BasicTransformer_Access'(This'Unchecked_Access), To_Unbounded_String ("setEncryptedTemplateFileAsInputStream()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
        --  finally
        begin
            This.streamUtil.close (outputStream);
            This.streamUtil.close (inputStream);
        end;
   end setEncryptedTemplateFileAsInputStream;

   --  throws Exception
   procedure setEncryptedTemplateAsInputStream (This : in out BasicTransformer) is
      outputStream : ByteArrayOutputStream_Access;
      inputStream : ByteArrayInputStream_Access;
      abCrypt : AbCrypt_Access;
      decrypted : Short_Short_Integer_Array_Access;
   begin
        outputStream := null;
        inputStream := null;
        begin
            outputStream := ByteArrayOutputStream_Package.Create;
            inputStream := ByteArrayInputStream_Package.Create (BasicTransformer'Class (This).getTransformInfoInterface.getTemplate.getBytes);
            outputStream := ByteArrayOutputStream_Access (This.streamUtil.get (inputStream, outputStream, new Short_Short_Integer_Array'(0 .. (16384) - 1 => 0)));
            abCrypt := AbCrypt_Package.Create (KeySpecFactory_Package.DESEDE, AbKeys_Package.getInstance.getKey (This.abeClientInformation, BasicTransformer'Class (This).getTransformInfoInterface.getName));
            decrypted := abCrypt.decrypt (outputStream.toByteArray);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                This.logUtil.putF (To_Unbounded_String ("Decrypted Template: " & ASCII.LF & "") & decrypted.toString, BasicTransformer_Access'(This'Unchecked_Access), To_Unbounded_String ("setEncryptedTemplateAsInputStream()"));
            end if;
            BasicTransformer'Class (This).setInputStream (InputStream_Access (ByteArrayInputStream_Package.Create (decrypted)));
            BasicTransformer'Class (This).setURIResolver (URIResolver_Access (BasicUriResolver_Package.Create (TransformInfoTemplateData_Package.getInstance.ENCRYPTED_EXTENSION)));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to set with template: ") & Java_Image (BasicTransformer'Class (This).getTransformInfoInterface.getTemplateFilePath), BasicTransformer_Access'(This'Unchecked_Access), To_Unbounded_String ("setEncryptedTemplateFileAsInputStream()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
        --  finally
        begin
            This.streamUtil.close (outputStream);
            This.streamUtil.close (inputStream);
        end;
   end setEncryptedTemplateAsInputStream;

   --  throws Exception
   procedure setTemplateAsInputStream (This : in out BasicTransformer) is
      inputStream : AbFileInputStream_Access;
      outputStream : ByteArrayOutputStream_Access;
      transformInfoTemplateData : TransformInfoTemplateData_Access;
      pathUtil : PathUtil_Access;
      extension : Unbounded_String;
      filePath : Unbounded_String;
      stringBuffer : StringMaker_Access;
      file : AbFile_Access;
      encFile : AbFile_Access;
   begin
        inputStream := null;
        outputStream := null;
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                This.logUtil.putF (BasicTransformer'Class (This).getTransformInfoInterface.log, BasicTransformer_Access'(This'Unchecked_Access), To_Unbounded_String ("setTemplateAsInputStream()"));
            end if;
            transformInfoTemplateData := TransformInfoTemplateData_Package.getInstance;
            pathUtil := PathUtil_Package.getInstance;
            if (BasicTransformer'Class (This).getTransformInfoInterface.getTemplateFilePath) /= (null) then
                extension := pathUtil.getExtensionWithAbPath (BasicTransformer'Class (This).getTransformInfoInterface.getTemplateFilePath);
                filePath := pathUtil.getWithoutExtensionWithAbPath (BasicTransformer'Class (This).getTransformInfoInterface.getTemplateFilePath);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                    This.logUtil.putF (BasicTransformer'Class (This).getTransformInfoInterface.log, BasicTransformer_Access'(This'Unchecked_Access), To_Unbounded_String ("setTemplateAsInputStream()"));
                end if;
                if (extension.compareTo (transformInfoTemplateData.UNCRYPTED_EXTENSION)) = (0) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (filePath);
                    stringBuffer.append (AbPathData_Package.getInstance.EXTENSION_SEP);
                    stringBuffer.append (transformInfoTemplateData.ENCRYPTED_EXTENSION);
                    encFile := AbFile_Package.createAbFile (stringBuffer.toString);
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                        This.logUtil.putF (BasicTransformer'Class (This).getTransformInfoInterface.log, BasicTransformer_Access'(This'Unchecked_Access), To_Unbounded_String ("setTemplateAsInputStream()"));
                    end if;
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                        stringBuffer := StringMaker_Package.Create;
                        stringBuffer.append (To_Unbounded_String ("Encrypted Template File isFile="));
                        stringBuffer.appendboolean (encFile.isFile);
                        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "EncTemplateFilePath: "));
                        stringBuffer.append (encFile.getPath);
                        This.logUtil.putF (stringBuffer.toString, BasicTransformer_Access'(This'Unchecked_Access), To_Unbounded_String ("setTemplateAsInputStream()"));
                    end if;
                    if encFile.isFile then
                        BasicTransformer'Class (This).setEncryptedTemplateFileAsInputStream (encFile);
                        return;
                    else
                        file := AbFile_Package.createAbFileFromAbPath (BasicTransformer'Class (This).getTransformInfoInterface.getTemplateFilePath);
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                            This.logUtil.putF (BasicTransformer'Class (This).getTransformInfoInterface.log, BasicTransformer_Access'(This'Unchecked_Access), To_Unbounded_String ("setTemplateAsInputStream()"));
                        end if;
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                            This.logUtil.putF (To_Unbounded_String ("Template File isFile=") & Java_Image (file.isFile), BasicTransformer_Access'(This'Unchecked_Access), To_Unbounded_String ("setTemplateAsInputStream()"));
                        end if;
                        if file.isFile then
                            inputStream := AbFileInputStream_Package.Create (file);
                            outputStream := ByteArrayOutputStream_Package.Create;
                            outputStream := ByteArrayOutputStream_Access (This.streamUtil.get (inputStream, outputStream, new Short_Short_Integer_Array'(0 .. (16384) - 1 => 0)));
                            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                                This.logUtil.putF (To_Unbounded_String ("Template: ") & outputStream.toString, BasicTransformer_Access'(This'Unchecked_Access), To_Unbounded_String ("getTemplateAsInputStream()"));
                            end if;
                            BasicTransformer'Class (This).setInputStream (InputStream_Access (ByteArrayInputStream_Package.Create (outputStream.toByteArray)));
                            BasicTransformer'Class (This).setURIResolver (URIResolver_Access (BasicUriResolver_Package.Create (transformInfoTemplateData.UNCRYPTED_EXTENSION)));
                            return;
                        end if;
                    end if;
                elsif (extension.compareTo (transformInfoTemplateData.ENCRYPTED_EXTENSION)) = (0) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (filePath);
                    stringBuffer.append (AbPathData_Package.getInstance.EXTENSION_SEP);
                    stringBuffer.append (transformInfoTemplateData.ENCRYPTED_EXTENSION);
                    file := AbFile_Package.createAbFile (stringBuffer.toString);
                    if file.isFile then
                        BasicTransformer'Class (This).setEncryptedTemplateFileAsInputStream (file);
                    end if;
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View Template File Type Is Not Recognized: ") & Java_Image (BasicTransformer'Class (This).getTransformInfoInterface.getTemplateFilePath)));
                end if;
            else
                BasicTransformer'Class (This).setEncryptedTemplateAsInputStream;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to get Template Data"), BasicTransformer_Access'(This'Unchecked_Access), To_Unbounded_String ("setTemplateAsInputStream()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
        --  finally
        begin
            This.streamUtil.close (outputStream);
            This.streamUtil.close (inputStream);
        end;
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Error setTemplateAsInputStream()")));
   end setTemplateAsInputStream;

end org.allbinary.logic.visual.transform.BasicTransformer_Package;


