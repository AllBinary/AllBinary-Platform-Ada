-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.java.characters.CharacterSetData_Package; use org.allbinary.logic.java.characters.CharacterSetData_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.xml.sax.InputSource_Package; use org.xml.sax.InputSource_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package CharacterSetData_Package renames Standard.org.allbinary.logic.java.characters.CharacterSetData_Package;
   package InputSource_Package renames Standard.org.xml.sax.InputSource_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   procedure Initialize_Fields (This : in out XmlDocumentHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.INDENT_NUMBER := To_Unbounded_String ("indent-number");
      This.indent := 0;
      This.ignoreDeclaration := False;
   end Initialize_Fields;


   function getInstance return XmlDocumentHelper_Access is
   begin
        return XmlDocumentHelper_Access (XmlDocumentHelper_Package.instance);
   end getInstance;

   procedure Initialize (This : in out XmlDocumentHelper'Class) is
   begin
      Initialize_Fields (This);
        XmlDocumentHelper'Class (This).init (4, True);
   end Initialize;

   function Create return XmlDocumentHelper_Access is
      This : constant XmlDocumentHelper_Access := new XmlDocumentHelper;
   begin
      XmlDocumentHelper_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out XmlDocumentHelper; indent : Integer; ignoreDeclaration : Boolean) is
   begin
        This.indent := indent;
        This.ignoreDeclaration := ignoreDeclaration;
   end init;

   --  throws TransformerConfigurationException
   function createTransformer (This : in out XmlDocumentHelper; indent : Integer; ignoreDeclaration : Boolean) return Transformer_Access is
      booleanFactory : BooleanFactory_Access;
      transformerFactory : TransformerFactory_Access;
      transformer : Transformer_Access;
   begin
        booleanFactory := BooleanFactory_Package.getInstance;
        transformerFactory := TransformerFactory_Package.newInstance;
        transformerFactory.setAttribute (This.INDENT_NUMBER, indent);
        transformer := transformerFactory.newTransformer;
        transformer.setOutputProperty (OutputKeys_Package.ENCODING, CharacterSetData_Package.getInstance.UTF_8);
        transformer.setOutputProperty (OutputKeys_Package.OMIT_XML_DECLARATION, (if ignoreDeclaration then booleanFactory.YES else booleanFactory.NO));
        transformer.setOutputProperty (OutputKeys_Package.INDENT, booleanFactory.YES);
        return transformer;
   end createTransformer;

   --  throws TransformerConfigurationException
   function createTransformer (This : in out XmlDocumentHelper) return Transformer_Access is
      currentIndent : Integer;
      currentIgnoreDeclaration : Boolean;
   begin
        currentIndent := 0;
        currentIgnoreDeclaration := False;
        begin  --  synchronized
            currentIndent := This.indent;
            currentIgnoreDeclaration := This.ignoreDeclaration;
        end;
        return XmlDocumentHelper'Class (This).createTransformer (currentIndent, currentIgnoreDeclaration);
   end createTransformer;

   --  throws Exception
   function format (This : in out XmlDocumentHelper; xmlString : Unbounded_String) return Unbounded_String is
   begin
        return XmlDocumentHelper'Class (This).formatWithTransformer (xmlString, XmlDocumentHelper'Class (This).createTransformer);
   end format;

   --  throws Exception
   function formatWithTransformer (This : in out XmlDocumentHelper; xmlString : Unbounded_String; transformer_Param : access Transformer_Package.Transformer'Class) return Unbounded_String is
      transformer : constant Transformer_Access := Transformer_Access (transformer_Param);
      src : InputSource_Access;
      document : Document_Access;
      out_Id : Writer_Access;
   begin
        src := InputSource_Package.Create (StringReader_Package.Create (xmlString));
        document := DocumentBuilderFactory_Package.newInstance.newDocumentBuilder.parse (src);
        out_Id := Writer_Access (StringWriter_Package.Create);
        transformer.transform (DOMSource_Package.Create (document), StreamResult_Package.Create (out_Id));
        return out_Id.toString;
   end formatWithTransformer;

   --  throws Exception
   function toString (document_Param : access Document_Package.Document'Class) return Unbounded_String is
      document : constant Document_Access := Document_Access (document_Param);
      domSource : DOMSource_Access;
      byteArrayOutputStream : ByteArrayOutputStream_Access;
      streamResult : StreamResult_Access;
      copyTransformerFactory : TransformerFactory_Access;
      copyTransformer : Transformer_Access;
   begin
        begin
            domSource := DOMSource_Package.Create (document);
            byteArrayOutputStream := ByteArrayOutputStream_Package.Create;
            streamResult := StreamResult_Package.Create (byteArrayOutputStream);
            copyTransformerFactory := TransformerFactory_Package.newInstance;
            copyTransformer := copyTransformerFactory.newTransformer;
            copyTransformer.transform (domSource, streamResult);
            return byteArrayOutputStream.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end toString;

   procedure createTransformer (This : in out XmlDocumentHelper; indent : Integer; ignoreDeclaration : Boolean) is
      Java_Result : constant Transformer_Access := XmlDocumentHelper'Class (This).createTransformer (indent => indent, ignoreDeclaration => ignoreDeclaration);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTransformer;

   procedure format (This : in out XmlDocumentHelper; xmlString : Unbounded_String) is
      Java_Result : constant Unbounded_String := XmlDocumentHelper'Class (This).format (xmlString => xmlString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end format;

   procedure formatWithTransformer (This : in out XmlDocumentHelper; xmlString : Unbounded_String; transformer_Param : access Transformer_Package.Transformer'Class) is
      Java_Result : constant Unbounded_String := XmlDocumentHelper'Class (This).formatWithTransformer (xmlString => xmlString, transformer_Param => transformer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end formatWithTransformer;

   procedure toString (document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Unbounded_String := toString (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   instance := XmlDocumentHelper_Package.Create;

end org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;


