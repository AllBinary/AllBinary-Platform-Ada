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


package body org.allbinary.data.tree.dom.document.DomDocumentHelper_Package is

   procedure Initialize_Fields (This : in out DomDocumentHelper'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DomDocumentHelper'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DomDocumentHelper_Access is
      This : constant DomDocumentHelper_Access := new DomDocumentHelper;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure init is
      LIMIT : Unbounded_String;
   begin
        System_Package.setProperty (To_Unbounded_String ("jdk.xml.maxElementDepth"), To_Unbounded_String ("0"));
        System_Package.setProperty (To_Unbounded_String ("jdk.xml.xpathExprOpLimit"), To_Unbounded_String ("0"));
        System_Package.setProperty (To_Unbounded_String ("jdk.xml.xpathTotalOpLimit"), To_Unbounded_String ("0"));
        LIMIT := To_Unbounded_String ("500000");
        System_Package.setProperty (To_Unbounded_String ("jdk.xml.maxGeneralEntitySizeLimit"), LIMIT);
        System_Package.setProperty (To_Unbounded_String ("jdk.xml.totalEntitySizeLimit"), LIMIT);
   end init;

   function create return Document_Access is
      factory : DocumentBuilderFactory_Access;
      builder : DocumentBuilder_Access;
      document : Document_Access;
   begin
        begin
            factory := DocumentBuilderFactory_Package.newInstance;
            builder := factory.newDocumentBuilder;
            document := builder.newDocument;
            return document;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return null;
                end;
        end;
   end create;

   --  throws Exception
   function create (inputStream : InputStream_Access) return Document_Access is
      factory : DocumentBuilderFactory_Access;
      builder : DocumentBuilder_Access;
      document : Document_Access;
   begin
        begin
            factory := DocumentBuilderFactory_Package.newInstance;
            builder := factory.newDocumentBuilder;
            document := builder.parse (inputStream);
            return document;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end create;

   --  throws Exception
   function create (xmlString : Unbounded_String) return Document_Access is
      factory : DocumentBuilderFactory_Access;
      builder : DocumentBuilder_Access;
      document : Document_Access;
   begin
        begin
            factory := DocumentBuilderFactory_Package.newInstance;
            builder := factory.newDocumentBuilder;
            document := builder.parse (StringBufferInputStream_Package.Create (xmlString));
            return document;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end create;

   procedure create is
      Java_Result : constant Document_Access := create;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure create (inputStream : InputStream_Access) is
      Java_Result : constant Document_Access := create (inputStream);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure create (xmlString : Unbounded_String) is
      Java_Result : constant Document_Access := create (xmlString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

end org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;


