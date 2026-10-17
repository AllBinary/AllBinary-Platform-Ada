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


package body org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package is

   procedure Initialize_Fields (This : in out XmlDocumentHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.INDENT_NUMBER := To_Unbounded_String ("indent-number");
      This.transformer := null;
   end Initialize_Fields;


   function getInstance return XmlDocumentHelper_Access is
   begin
        return XmlDocumentHelper_Package.instance;
   end getInstance;

   procedure Initialize (This : in out XmlDocumentHelper'Class) is
   begin
      Initialize_Fields (This);
        This.init (4, True);
   end Initialize;

   function Create return XmlDocumentHelper_Access is
      This : constant XmlDocumentHelper_Access := new XmlDocumentHelper;
   begin
      XmlDocumentHelper_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out XmlDocumentHelper; indent : Integer; ignoreDeclaration : Boolean) is
      booleanFactory : BooleanFactory_Access;
      transformerFactory : TransformerFactory_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            booleanFactory := BooleanFactory_Package.getInstance;
            transformerFactory := TransformerFactory_Package.newInstance;
            transformerFactory.setAttribute (This.INDENT_NUMBER, indent);
            This.transformer := transformerFactory.newTransformer;
            This.transformer.setOutputProperty (OutputKeys_Package.ENCODING, CharacterSetData_Package.getInstance.UTF_8);
            This.transformer.setOutputProperty (OutputKeys_Package.OMIT_XML_DECLARATION, (if ignoreDeclaration then booleanFactory.YES else booleanFactory.NO));
            This.transformer.setOutputProperty (OutputKeys_Package.INDENT, booleanFactory.YES);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, XmlDocumentHelper_Access'(This'Unchecked_Access), commonStrings.INIT, e);
                end;
        end;
   end init;

   --  throws Exception
   function format (This : in out XmlDocumentHelper; xmlString : Unbounded_String) return Unbounded_String is
      src : InputSource_Access;
      document : Document_Access;
      out_Id : Writer_Access;
   begin
        src := InputSource_Package.Create (StringReader_Package.Create (xmlString));
        document := DocumentBuilderFactory_Package.newInstance.newDocumentBuilder.parse (src);
        out_Id := StringWriter_Package.Create;
        This.transformer.transform (DOMSource_Package.Create (document), StreamResult_Package.Create (out_Id));
        return out_Id.toString;
   end format;

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

   procedure format (This : in out XmlDocumentHelper; xmlString : Unbounded_String) is
      Java_Result : constant Unbounded_String := XmlDocumentHelper'Class (This).format (xmlString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end format;

   procedure toString (document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Unbounded_String := toString (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   instance := XmlDocumentHelper_Package.Create;

end org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;


