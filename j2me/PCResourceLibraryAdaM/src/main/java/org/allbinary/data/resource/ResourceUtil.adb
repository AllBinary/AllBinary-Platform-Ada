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


with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.data.resource.ResourceUtil_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out ResourceUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.path := StringUtil_Package.getInstance.EMPTY_STRING;
      This.ext := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   function getInstance return ResourceUtil_Access is
   begin
        return ResourceUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ResourceUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ResourceUtil_Access is
      This : constant ResourceUtil_Access := new ResourceUtil;
   begin
      ResourceUtil_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setLoadingPaths (This : in out ResourceUtil; path : Unbounded_String; ext : Unbounded_String) is
   begin
        This.path := path;
        This.ext := ext;
   end setLoadingPaths;

   procedure setClassLoader (This : in out ResourceUtil; classLoader_Param : access ClassLoader_Package.ClassLoader'Class) is
      classLoader : constant ClassLoader_Access := ClassLoader_Access (classLoader_Param);
   begin
        null;
   end setClassLoader;

   --  throws Exception
   function getResourceAsStream (This : in out ResourceUtil; resource : Unbounded_String) return InputStream_Access is
      inputStream : InputStream_Access;
   begin
        inputStream := ResourceUtil'Class (This).getResourceAsStreamAtStart (resource, 2);
        if (inputStream) = (null) then
            inputStream := ResourceUtil'Class (This).getResourceAsStreamAtStart (resource, 1);
            if (inputStream) = (null) then
                Java_Throw (Java_New_Exception ("Exception", StringMaker_Package.Create.append (To_Unbounded_String ("Unable to obtain: ")).append (resource).toString));
            end if;
        end if;
        return inputStream;
   end getResourceAsStream;

   --  throws Exception
   function getResourceAsStreamAtStart (This : in out ResourceUtil; resource : Unbounded_String; startIndex : Integer) return InputStream_Access is
      inputStream : InputStream_Access;
      byteArray : Short_Short_Integer_Array_Access;
   begin
        inputStream := InputStream_Access (FileInputStream_Package.Create (StringMaker_Package.Create.append (This.path).append (resource).append (This.ext).toString));
        if (inputStream) /= (null) then
            byteArray := new Short_Short_Integer_Array'(0 .. (inputStream.available) - 1 => 0);
            StreamUtil_Package.getInstance.getByteArray (inputStream, ByteArrayOutputStream_Package.Create, byteArray);
            return InputStream_Access (ByteArrayInputStream_Package.Create (byteArray));
        end if;
        return inputStream;
   end getResourceAsStreamAtStart;

   procedure addResource (This : in out ResourceUtil; resource : Unbounded_String; value : Integer) is
   begin
        null;
   end addResource;

   procedure getResourceAsStream (This : in out ResourceUtil; resource : Unbounded_String) is
      Java_Result : constant InputStream_Access := ResourceUtil'Class (This).getResourceAsStream (resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getResourceAsStream;

   procedure getResourceAsStreamAtStart (This : in out ResourceUtil; resource : Unbounded_String; startIndex : Integer) is
      Java_Result : constant InputStream_Access := ResourceUtil'Class (This).getResourceAsStreamAtStart (resource, startIndex);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getResourceAsStreamAtStart;

begin
   null;
   instance := ResourceUtil_Package.Create;

end org.allbinary.data.resource.ResourceUtil_Package;


