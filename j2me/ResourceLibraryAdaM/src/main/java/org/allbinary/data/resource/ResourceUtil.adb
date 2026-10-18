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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.data.resource.ResourceUtil_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out ResourceUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
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
        This.logUtil.putF (CommonStrings_Package.getInstance.NOT_IMPLEMENTED, ResourceUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("setLoadingPaths"));
   end setLoadingPaths;

   procedure setClassLoader (This : in out ResourceUtil; classLoader_Param : access ClassLoader_Package.ClassLoader'Class) is
      classLoader : constant ClassLoader_Access := ClassLoader_Access (classLoader_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Resource Loader: ")).append (To_Unbounded_String (Ada.Tags.Expanded_Name (classLoader.all'Tag))).toString, ResourceUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("setClassLoader"));
        ResourceUtil_Package.classLoader := classLoader;
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
      commonSeps : CommonSeps_Access;
      index : Integer;
      resourcePath : Unbounded_String;
      inputStream : InputStream_Access;
      classLoader : ClassLoader_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        index := Java_Index_Of (resource, Java_Image (commonSeps.COLON));
        resourcePath := Unbounded_Slice (resource, ((index) + (startIndex)) + 1, Length (resource));
        inputStream := resource.all'Tag.getResourceAsStream (resourcePath);
        if (inputStream) /= (null) then
            return inputStream;
        end if;
        classLoader := ClassLoader_Access (ResourceUtil_Package.classLoader);
        inputStream := classLoader.getResourceAsStream (resourcePath);
        if (inputStream) /= (null) then
            return inputStream;
        end if;
        inputStream := Thread_Package.currentThread.getContextClassLoader.getResourceAsStream (resourcePath);
        if (inputStream) /= (null) then
            return inputStream;
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
   classLoader := NullUtil_Package.getInstance.NULL_OBJECT;
   instance := ResourceUtil_Package.Create;

end org.allbinary.data.resource.ResourceUtil_Package;


