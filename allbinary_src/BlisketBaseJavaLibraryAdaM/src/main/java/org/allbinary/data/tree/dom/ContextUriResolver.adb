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


package body org.allbinary.data.tree.dom.ContextUriResolver_Package is

   procedure Initialize_Fields (This : in out ContextUriResolver'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.uriResolverStrings := URIResolverStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ContextUriResolver'Class; basicURIResolver : BasicUriResolver_Access) is
   begin
      Initialize_Fields (This);
        This.basicURIResolver := basicURIResolver;
   end Initialize;

   function Create (basicURIResolver : BasicUriResolver_Access) return ContextUriResolver_Access is
      This : constant ContextUriResolver_Access := new ContextUriResolver;
   begin
      ContextUriResolver_Package.Initialize (This.all, basicURIResolver);
      return This;
   end Create;

   --  throws TransformerException
   function resolve (This : in out ContextUriResolver; href : Unbounded_String; base : Unbounded_String) return Source_Access is
      stringBuffer : StringMaker_Access;
      fileAbPath : AbPath_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (URLGLOBALS.getMainPath);
            stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH);
            stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.INSTALLPATH);
            stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
            stringBuffer.append (href);
            fileAbPath := AbFilePath_Package.Create (stringBuffer.toString);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XMLLOGGING) then
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (This.uriResolverStrings.ATTEMPT);
                stringBuffer.append (href);
                stringBuffer.append (This.uriResolverStrings.BASE);
                stringBuffer.append (base);
                stringBuffer.append (This.uriResolverStrings.NEW_PATH);
                stringBuffer.append (fileAbPath.toString);
                stringBuffer.append (This.uriResolverStrings.NOTE);
                stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH);
                stringBuffer.append (This.uriResolverStrings.URL_GLOBAL);
                stringBuffer.append (This.uriResolverStrings.REQUIRED_EXTENSION);
                stringBuffer.append (This.basicURIResolver.getExtension);
                This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, This.uriResolverStrings.RESOLVE);
            end if;
            return StreamSource_Package.Create (CryptFileReader_Package.Create (TransformInfoTemplateData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoTemplateData_Package.getInstance.ENCRYPTED_EXTENSION).getInputStream (fileAbPath));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end resolve;

   function toString (This : in out ContextUriResolver) return Unbounded_String is
   begin
        begin
            return ((URLGLOBALS.getMainPath) + (FREEBLISKET_PATH_GLOBALS.getInstance.INSTALLPATH)) + (This.uriResolverStrings.IMPORT_URL);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return To_Unbounded_String ("ContextUriResolver - Does not work without webapp path should be changed");
                end;
        end;
   end toString;

   procedure resolve (This : in out ContextUriResolver; href : Unbounded_String; base : Unbounded_String) is
      Java_Result : constant Source_Access := ContextUriResolver'Class (This).resolve (href, base);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end resolve;

end org.allbinary.data.tree.dom.ContextUriResolver_Package;


