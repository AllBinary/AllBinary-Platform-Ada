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


with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.path.AbFilePath_Package; use org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package; use org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package;

package body org.allbinary.data.tree.dom.CustomUriResolver_Package is

   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package AbFilePath_Package renames Standard.org.allbinary.logic.io.path.AbFilePath_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoTemplateData_Package renames Standard.org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package;
   procedure Initialize_Fields (This : in out CustomUriResolver'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.uriResolverStrings := URIResolverStrings_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CustomUriResolver'Class; path : Unbounded_String; basicURIResolver_Param : access BasicUriResolver_Package.BasicUriResolver'Class) is
      basicURIResolver : constant BasicUriResolver_Access := BasicUriResolver_Access (basicURIResolver_Param);
   begin
      Initialize_Fields (This);
        This.path := path;
        This.basicURIResolver := basicURIResolver;
   end Initialize;

   function Create (path : Unbounded_String; basicURIResolver_Param : access BasicUriResolver_Package.BasicUriResolver'Class) return CustomUriResolver_Access is
      This : constant CustomUriResolver_Access := new CustomUriResolver;
   begin
      CustomUriResolver_Package.Initialize (This.all, path, basicURIResolver_Param);
      return This;
   end Create;

   --  throws TransformerException
   function resolve (This : in out CustomUriResolver; href : Unbounded_String; base : Unbounded_String) return Source_Access is
      stringBuffer : StringMaker_Access;
      fileAbPath : AbPath_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.path);
            stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
            stringBuffer.append (href);
            fileAbPath := AbPath_Access (AbFilePath_Package.Create (stringBuffer.toString));
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XMLLOGGING) then
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (This.uriResolverStrings.ATTEMPT);
                stringBuffer.append (href);
                stringBuffer.append (This.uriResolverStrings.BASE);
                stringBuffer.append (base);
                stringBuffer.append (This.uriResolverStrings.NEW_PATH);
                stringBuffer.append (fileAbPath.toString);
                stringBuffer.append (This.uriResolverStrings.NOTE);
                stringBuffer.append (FREEBLISKET_PATH_GLOBALS_Package.getInstance.XSLPATH);
                stringBuffer.append (This.uriResolverStrings.URL_GLOBAL);
                stringBuffer.append (This.uriResolverStrings.REQUIRED_EXTENSION);
                stringBuffer.append (This.basicURIResolver.getExtension);
            end if;
            return Source_Access (StreamSource_Package.Create (CryptFileReader_Package.Create (TransformInfoTemplateData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoTemplateData_Package.getInstance.ENCRYPTED_EXTENSION).getInputStream (fileAbPath)));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end resolve;

   function toString (This : in out CustomUriResolver) return Unbounded_String is
   begin
        return This.path;
   end toString;

   procedure resolve (This : in out CustomUriResolver; href : Unbounded_String; base : Unbounded_String) is
      Java_Result : constant Source_Access := CustomUriResolver'Class (This).resolve (href => href, base => base);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end resolve;

end org.allbinary.data.tree.dom.CustomUriResolver_Package;


