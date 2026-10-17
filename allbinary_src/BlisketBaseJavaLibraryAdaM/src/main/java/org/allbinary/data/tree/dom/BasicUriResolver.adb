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


package body org.allbinary.data.tree.dom.BasicUriResolver_Package is

   procedure Initialize_Fields (This : in out BasicUriResolver'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.uriResolverStrings := URIResolverStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicUriResolver'Class; extension : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.extension := extension;
   end Initialize;

   function Create (extension : Unbounded_String) return BasicUriResolver_Access is
      This : constant BasicUriResolver_Access := new BasicUriResolver;
   begin
      BasicUriResolver_Package.Initialize (This.all, extension);
      return This;
   end Create;

   function getExtension (This : in out BasicUriResolver) return Unbounded_String is
   begin
        return This.extension;
   end getExtension;

   --  throws TransformerException
   function resolve (This : in out BasicUriResolver; href : Unbounded_String; base : Unbounded_String) return Source_Access is
      stringBuffer : StringMaker_Access;
      abPath : AbPath_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (URLGLOBALS.getMainPath);
            stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH);
            stringBuffer.append (href);
            abPath := AbPath_Access (AbFilePath_Package.Create (stringBuffer.toString));
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XMLLOGGING) then
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (This.uriResolverStrings.ATTEMPT);
                stringBuffer.append (href);
                stringBuffer.append (This.uriResolverStrings.BASE);
                stringBuffer.append (base);
                stringBuffer.append (This.uriResolverStrings.NEW_PATH);
                stringBuffer.append (abPath.toString);
                stringBuffer.append (This.uriResolverStrings.NOTE);
                stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH);
                stringBuffer.append (This.uriResolverStrings.URL_GLOBAL);
                stringBuffer.append (This.uriResolverStrings.REQUIRED_EXTENSION);
                stringBuffer.append (This.extension);
                This.logUtil.putF (stringBuffer.toString, BasicUriResolver_Access'(This'Unchecked_Access), This.uriResolverStrings.RESOLVE);
            end if;
            return StreamSource_Package.Create (CryptFileReader_Package.Create (TransformInfoTemplateData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoTemplateData_Package.getInstance.ENCRYPTED_EXTENSION).getInputStream (abPath));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end resolve;

   function toString (This : in out BasicUriResolver) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (URLGLOBALS.getMainPath);
            stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH);
            stringBuffer.append (This.uriResolverStrings.IMPORT_URL);
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return To_Unbounded_String ("BasicUriResolver - Does not work without webapp path should be changed");
                end;
        end;
   end toString;

   procedure resolve (This : in out BasicUriResolver; href : Unbounded_String; base : Unbounded_String) is
      Java_Result : constant Source_Access := BasicUriResolver'Class (This).resolve (href, base);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end resolve;

end org.allbinary.data.tree.dom.BasicUriResolver_Package;


