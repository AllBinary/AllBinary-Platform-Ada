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


package body org.allbinary.data.tree.dom.AbXslHelper_Package is

   procedure Initialize_Fields (This : in out AbXslHelper'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AbXslHelper'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AbXslHelper_Access is
      This : constant AbXslHelper_Access := new AbXslHelper;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return AbXslHelper_Access is
   begin
        return AbXslHelper_Package.instance;
   end getInstance;

   --  throws Exception
   function translate (This : in out AbXslHelper; xslFile : AbFile_Access; xmlFile : AbFile_Access) return Unbounded_String is
   begin
        return This.translate (xslFile.getAbsolutePath, xmlFile.getAbsolutePath);
   end translate;

   --  throws Exception
   function translate (This : in out AbXslHelper; xslPath : AbPath_Access; xmlPath : AbPath_Access) return Unbounded_String is
   begin
        return This.translate (xslPath.getPath, xmlPath.getPath);
   end translate;

   --  throws Exception
   function translate (This : in out AbXslHelper; xsltFilePath : Unbounded_String; xmlFilePath : Unbounded_String) return Unbounded_String is
      outputStream : ByteArrayOutputStream_Access;
   begin
        begin
            outputStream := ByteArrayOutputStream_Package.Create;
            return XslHelper_Package.getInstance.translate (StreamSource_Package.Create (xsltFilePath), StreamSource_Package.Create (xmlFilePath), StreamResult_Package.Create (outputStream)).toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end translate;

   procedure getInstance is
      Java_Result : constant AbXslHelper_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure translate (This : in out AbXslHelper; xslFile : AbFile_Access; xmlFile : AbFile_Access) is
      Java_Result : constant Unbounded_String := AbXslHelper'Class (This).translate (xslFile, xmlFile);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

   procedure translate (This : in out AbXslHelper; xslPath : AbPath_Access; xmlPath : AbPath_Access) is
      Java_Result : constant Unbounded_String := AbXslHelper'Class (This).translate (xslPath, xmlPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

   procedure translate (This : in out AbXslHelper; xsltFilePath : Unbounded_String; xmlFilePath : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbXslHelper'Class (This).translate (xsltFilePath, xmlFilePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

begin
   null;
   instance := AbXslHelper_Package.Create;

end org.allbinary.data.tree.dom.AbXslHelper_Package;


