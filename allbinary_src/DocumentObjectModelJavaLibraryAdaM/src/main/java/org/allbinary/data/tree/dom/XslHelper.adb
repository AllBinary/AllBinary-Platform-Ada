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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function translate (This : in out XslHelper; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access; streamResult : StreamResult_Access) return OutputStream_Access is
      transformerFactory : TransformerFactory_Access;
      transformer : Transformer_Access;
   begin
        begin
            transformerFactory := TransformerFactory_Package.newInstance;
            transformer := transformerFactory.newTransformer (xsltStreamSource);
            transformer.transform (xmlStreamSource, streamResult);
            return streamResult.getOutputStream;
        exception
            when e : others =>
            Java_Throw (e);
        end;
   end translate;

   --  throws Exception
   function translate (This : in out XslHelper; resolver : URIResolver_Access; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access; streamResult : StreamResult_Access) return OutputStream_Access is
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
            when e : others =>
            Java_Throw (e);
        end;
   end translate;

   --  throws Exception
   function translate (This : in out XslHelper; xsltStreamSource : StreamSource_Access; xmlDocument : Document_Access) return Unbounded_String is
      outputStream : ByteArrayOutputStream_Access;
   begin
        begin
            outputStream := ByteArrayOutputStream_Package.Create;
            return This.translate (xsltStreamSource, StreamSource_Package.Create (StringBufferInputStream_Package.Create (XmlDocumentHelper_Package.toString (xmlDocument))), StreamResult_Package.Create (outputStream)).toString;
        exception
            when e : others =>
            Java_Throw (e);
        end;
   end translate;

   --  throws Exception
   function translate (This : in out XslHelper; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access) return Unbounded_String is
      outputStream : ByteArrayOutputStream_Access;
   begin
        begin
            outputStream := ByteArrayOutputStream_Package.Create;
            return This.translate (xsltStreamSource, xmlStreamSource, StreamResult_Package.Create (outputStream)).toString;
        exception
            when e : others =>
            Java_Throw (e);
        end;
   end translate;

   --  throws Exception
   function translate (This : in out XslHelper; resolver : URIResolver_Access; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access) return Unbounded_String is
      outputStream : ByteArrayOutputStream_Access;
   begin
        begin
            outputStream := ByteArrayOutputStream_Package.Create;
            return This.translate (resolver, xsltStreamSource, xmlStreamSource, StreamResult_Package.Create (outputStream)).toString;
        exception
            when e : others =>
            Java_Throw (e);
        end;
   end translate;

   --  throws Exception
   procedure export (This : in out XslHelper; outputFile : File_Access; xsltFilePath : Unbounded_String; xmlDocument : Document_Access) is
   begin
        begin
            outputFile.createNewFile;
            This.translate (StreamSource_Package.Create (xsltFilePath), StreamSource_Package.Create (StringBufferInputStream_Package.Create (XmlDocumentHelper_Package.toString (xmlDocument))), StreamResult_Package.Create (outputFile));
        exception
            when e : others =>
            Java_Throw (e);
        end;
   end export;

   procedure getInstance is
      Java_Result : constant XslHelper_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure translate (This : in out XslHelper; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access; streamResult : StreamResult_Access) is
      Java_Result : constant OutputStream_Access := XslHelper'Class (This).translate (xsltStreamSource, xmlStreamSource, streamResult);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

   procedure translate (This : in out XslHelper; resolver : URIResolver_Access; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access; streamResult : StreamResult_Access) is
      Java_Result : constant OutputStream_Access := XslHelper'Class (This).translate (resolver, xsltStreamSource, xmlStreamSource, streamResult);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

   procedure translate (This : in out XslHelper; xsltStreamSource : StreamSource_Access; xmlDocument : Document_Access) is
      Java_Result : constant Unbounded_String := XslHelper'Class (This).translate (xsltStreamSource, xmlDocument);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

   procedure translate (This : in out XslHelper; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access) is
      Java_Result : constant Unbounded_String := XslHelper'Class (This).translate (xsltStreamSource, xmlStreamSource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

   procedure translate (This : in out XslHelper; resolver : URIResolver_Access; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access) is
      Java_Result : constant Unbounded_String := XslHelper'Class (This).translate (resolver, xsltStreamSource, xmlStreamSource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

begin
   null;
   instance := XslHelper_Package.Create;

end org.allbinary.data.tree.dom.XslHelper_Package;


