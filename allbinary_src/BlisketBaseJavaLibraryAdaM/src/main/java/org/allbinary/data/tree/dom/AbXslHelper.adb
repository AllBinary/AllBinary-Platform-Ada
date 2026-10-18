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
with org.allbinary.data.tree.dom.XslHelper_Package; use org.allbinary.data.tree.dom.XslHelper_Package;

package body org.allbinary.data.tree.dom.AbXslHelper_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
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
      AbXslHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AbXslHelper_Access is
   begin
        return AbXslHelper_Package.instance;
   end getInstance;

   --  throws Exception
   function translate (This : in out AbXslHelper; xslFile_Param : access AbFile_Package.AbFile'Class; xmlFile_Param : access AbFile_Package.AbFile'Class) return Unbounded_String is
      xslFile : constant AbFile_Access := AbFile_Access (xslFile_Param);
      xmlFile : constant AbFile_Access := AbFile_Access (xmlFile_Param);
   begin
        return AbXslHelper'Class (This).translate (xslFile.getAbsolutePath, xmlFile.getAbsolutePath);
   end translate;

   --  throws Exception
   function translate (This : in out AbXslHelper; xslPath_Param : access AbPath_Package.AbPath'Class; xmlPath_Param : access AbPath_Package.AbPath'Class) return Unbounded_String is
      xslPath : constant AbPath_Access := AbPath_Access (xslPath_Param);
      xmlPath : constant AbPath_Access := AbPath_Access (xmlPath_Param);
   begin
        return AbXslHelper'Class (This).translate (xslPath.getPath, xmlPath.getPath);
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

   procedure translate (This : in out AbXslHelper; xslFile_Param : access AbFile_Package.AbFile'Class; xmlFile_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant Unbounded_String := AbXslHelper'Class (This).translate (xslFile_Param, xmlFile_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

   procedure translate (This : in out AbXslHelper; xslPath_Param : access AbPath_Package.AbPath'Class; xmlPath_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant Unbounded_String := AbXslHelper'Class (This).translate (xslPath_Param, xmlPath_Param);
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


