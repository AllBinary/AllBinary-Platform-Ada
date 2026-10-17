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


package body org.allbinary.data.tree.dom.XslHelper_Package is

   procedure Initialize_Fields (This : in out XslHelper'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return XslHelper_Access is
   begin
        return XslHelper_Package.instance;
   end getInstance;

   procedure Initialize (This : in out XslHelper'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return XslHelper_Access is
      This : constant XslHelper_Access := new XslHelper;
   begin
      XslHelper_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function translate (This : in out XslHelper; xsltStreamSource_Param : access StreamSource'Class; xmlStreamSource_Param : access StreamSource'Class; streamResult_Param : access StreamResult'Class) return OutputStream_Access is
      xsltStreamSource : StreamSource_Access := StreamSource_Access (xsltStreamSource_Param);
      xmlStreamSource : StreamSource_Access := StreamSource_Access (xmlStreamSource_Param);
      streamResult : StreamResult_Access := StreamResult_Access (streamResult_Param);
      transformerFactory : TransformerFactory_Access;
      transformer : Transformer_Access;
   begin
        begin
            transformerFactory := TransformerFactory_Package.newInstance;
            transformer := transformerFactory.newTransformer (xsltStreamSource);
            transformer.transform (xmlStreamSource, streamResult);
            return streamResult.getOutputStream;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end translate;

   --  throws Exception
   function translate (This : in out XslHelper; resolver_Param : access URIResolver'Class; xsltStreamSource_Param : access StreamSource'Class; xmlStreamSource_Param : access StreamSource'Class; streamResult_Param : access StreamResult'Class) return OutputStream_Access is
      resolver : URIResolver_Access := URIResolver_Access (resolver_Param);
      xsltStreamSource : StreamSource_Access := StreamSource_Access (xsltStreamSource_Param);
      xmlStreamSource : StreamSource_Access := StreamSource_Access (xmlStreamSource_Param);
      streamResult : StreamResult_Access := StreamResult_Access (streamResult_Param);
      tFactory : TransformerFactory_Access;
      transformer : Transformer_Access;
   begin
        begin
            tFactory := TransformerFactory_Package.newInstance;
            tFactory.setURIResolver (resolver);
            transformer := tFactory.newTransformer (xsltStreamSource);
            transformer.transform (xmlStreamSource, streamResult);
            return streamResult.getOutputStream;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end translate;

   --  throws Exception
   function translate (This : in out XslHelper; xsltStreamSource_Param : access StreamSource'Class; xmlDocument_Param : access Document'Class) return Unbounded_String is
      xsltStreamSource : StreamSource_Access := StreamSource_Access (xsltStreamSource_Param);
      xmlDocument : Document_Access := Document_Access (xmlDocument_Param);
      outputStream : ByteArrayOutputStream_Access;
   begin
        begin
            outputStream := ByteArrayOutputStream_Package.Create;
            return This.translate (xsltStreamSource, StreamSource_Package.Create (StringBufferInputStream_Package.Create (XmlDocumentHelper_Package.toString (xmlDocument))), StreamResult_Package.Create (outputStream)).toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end translate;

   --  throws Exception
   function translate (This : in out XslHelper; xsltStreamSource_Param : access StreamSource'Class; xmlStreamSource_Param : access StreamSource'Class) return Unbounded_String is
      xsltStreamSource : StreamSource_Access := StreamSource_Access (xsltStreamSource_Param);
      xmlStreamSource : StreamSource_Access := StreamSource_Access (xmlStreamSource_Param);
      outputStream : ByteArrayOutputStream_Access;
   begin
        begin
            outputStream := ByteArrayOutputStream_Package.Create;
            return This.translate (xsltStreamSource, xmlStreamSource, StreamResult_Package.Create (outputStream)).toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end translate;

   --  throws Exception
   function translate (This : in out XslHelper; resolver_Param : access URIResolver'Class; xsltStreamSource_Param : access StreamSource'Class; xmlStreamSource_Param : access StreamSource'Class) return Unbounded_String is
      resolver : URIResolver_Access := URIResolver_Access (resolver_Param);
      xsltStreamSource : StreamSource_Access := StreamSource_Access (xsltStreamSource_Param);
      xmlStreamSource : StreamSource_Access := StreamSource_Access (xmlStreamSource_Param);
      outputStream : ByteArrayOutputStream_Access;
   begin
        begin
            outputStream := ByteArrayOutputStream_Package.Create;
            return This.translate (resolver, xsltStreamSource, xmlStreamSource, StreamResult_Package.Create (outputStream)).toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end translate;

   --  throws Exception
   procedure export (This : in out XslHelper; outputFile_Param : access File'Class; xsltFilePath : Unbounded_String; xmlDocument_Param : access Document'Class) is
      outputFile : File_Access := File_Access (outputFile_Param);
      xmlDocument : Document_Access := Document_Access (xmlDocument_Param);
   begin
        begin
            outputFile.createNewFile;
            This.translate (StreamSource_Package.Create (xsltFilePath), StreamSource_Package.Create (StringBufferInputStream_Package.Create (XmlDocumentHelper_Package.toString (xmlDocument))), StreamResult_Package.Create (outputFile));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end export;

   procedure translate (This : in out XslHelper; xsltStreamSource_Param : access StreamSource'Class; xmlStreamSource_Param : access StreamSource'Class; streamResult_Param : access StreamResult'Class) is
      Java_Result : constant OutputStream_Access := XslHelper'Class (This).translate (xsltStreamSource_Param, xmlStreamSource_Param, streamResult_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

   procedure translate (This : in out XslHelper; resolver_Param : access URIResolver'Class; xsltStreamSource_Param : access StreamSource'Class; xmlStreamSource_Param : access StreamSource'Class; streamResult_Param : access StreamResult'Class) is
      Java_Result : constant OutputStream_Access := XslHelper'Class (This).translate (resolver_Param, xsltStreamSource_Param, xmlStreamSource_Param, streamResult_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

   procedure translate (This : in out XslHelper; xsltStreamSource_Param : access StreamSource'Class; xmlDocument_Param : access Document'Class) is
      Java_Result : constant Unbounded_String := XslHelper'Class (This).translate (xsltStreamSource_Param, xmlDocument_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

   procedure translate (This : in out XslHelper; xsltStreamSource_Param : access StreamSource'Class; xmlStreamSource_Param : access StreamSource'Class) is
      Java_Result : constant Unbounded_String := XslHelper'Class (This).translate (xsltStreamSource_Param, xmlStreamSource_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

   procedure translate (This : in out XslHelper; resolver_Param : access URIResolver'Class; xsltStreamSource_Param : access StreamSource'Class; xmlStreamSource_Param : access StreamSource'Class) is
      Java_Result : constant Unbounded_String := XslHelper'Class (This).translate (resolver_Param, xsltStreamSource_Param, xmlStreamSource_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

begin
   null;
   instance := XslHelper_Package.Create;

end org.allbinary.data.tree.dom.XslHelper_Package;


