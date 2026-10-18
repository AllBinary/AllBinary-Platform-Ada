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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.data.resource.ResourceUtil_Package is

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

   --  throws Exception
   function getResourceAsStream (This : in out ResourceUtil; resource : Unbounded_String) return InputStream_Access is
      inputStream : InputStream_Access;
      stringMaker : StringMaker_Access;
      index : Integer;
      resourcePath : Unbounded_String;
      RES : Unbounded_String;
      COLON : Unbounded_String;
      RESOURCE_STRING : Unbounded_String;
   begin
        inputStream := resource.all'Tag.getResourceAsStream (resource);
        if (inputStream) = (null) then
            inputStream := ResourceUtil'Class (This).getResourceAsStreamAtStart (resource, 2);
            if (inputStream) = (null) then
                inputStream := ResourceUtil'Class (This).getResourceAsStreamAtStart (resource, 1);
                if (inputStream) = (null) then
                    stringMaker := StringMaker_Package.Create;
                    index := Java_Last_Index_Of (resource, Java_Image ('/'));
                    resourcePath := Unbounded_Slice (resource, ((index) + (1)) + 1, Length (resource));
                    inputStream := resource.all'Tag.getResourceAsStream (resourcePath);
                    if (inputStream) = (null) then
                        resourcePath := Unbounded_Slice (resource, (index) + 1, Length (resource));
                        inputStream := resource.all'Tag.getResourceAsStream (resourcePath);
                        if (inputStream) = (null) then
                            RES := To_Unbounded_String ("res");
                            resourcePath := stringMaker.append (RES).append (Unbounded_Slice (resource, (index) + 1, Length (resource))).toString;
                            inputStream := resource.all'Tag.getResourceAsStream (resourcePath);
                            if (inputStream) = (null) then
                                stringMaker.delete (0, stringMaker.length);
                                resourcePath := stringMaker.append (To_Unbounded_String ("/")).append (RES).append (Unbounded_Slice (resource, (index) + 1, Length (resource))).toString;
                                inputStream := resource.all'Tag.getResourceAsStream (resourcePath);
                                COLON := CommonSeps_Package.getInstance.COLON;
                                if (inputStream) = (null) then
                                    stringMaker.delete (0, stringMaker.length);
                                    resourcePath := stringMaker.append (RES).append (COLON).append (Unbounded_Slice (resource, (index) + 1, Length (resource))).toString;
                                    inputStream := resource.all'Tag.getResourceAsStream (resourcePath);
                                    if (inputStream) = (null) then
                                        stringMaker.delete (0, stringMaker.length);
                                        resourcePath := stringMaker.append (RES).append (COLON).append (Unbounded_Slice (resource, ((index) + (1)) + 1, Length (resource))).toString;
                                        inputStream := resource.all'Tag.getResourceAsStream (resourcePath);
                                        if (inputStream) = (null) then
                                            RESOURCE_STRING := To_Unbounded_String ("resource");
                                            stringMaker.delete (0, stringMaker.length);
                                            resourcePath := stringMaker.append (RESOURCE_STRING).append (COLON).append (Unbounded_Slice (resource, (index) + 1, Length (resource))).toString;
                                            inputStream := resource.all'Tag.getResourceAsStream (resourcePath);
                                            if (inputStream) = (null) then
                                                stringMaker.delete (0, stringMaker.length);
                                                resourcePath := stringMaker.append (RESOURCE_STRING).append (COLON).append (Unbounded_Slice (resource, ((index) + (1)) + 1, Length (resource))).toString;
                                                inputStream := resource.all'Tag.getResourceAsStream (resourcePath);
                                                if (inputStream) = (null) then
                                                    stringMaker.delete (0, stringMaker.length);
                                                    Java_Throw (Java_New_Exception ("Exception", stringMaker.append (To_Unbounded_String ("Unable to obtain: ")).append (resource).toString));
                                                end if;
                                            end if;
                                        end if;
                                    end if;
                                end if;
                            end if;
                        end if;
                    end if;
                end if;
            end if;
        end if;
        return inputStream;
   end getResourceAsStream;

   --  throws Exception
   function getResourceAsStreamAtStart (This : in out ResourceUtil; resource : Unbounded_String; startIndex : Integer) return InputStream_Access is
      stringMaker : StringMaker_Access;
      index : Integer;
      resourcePath : Unbounded_String;
      inputStream : InputStream_Access;
   begin
        stringMaker := StringMaker_Package.Create;
        index := Java_Index_Of (resource, Java_Image (CommonSeps_Package.getInstance.COLON));
        resourcePath := Unbounded_Slice (resource, ((index) + (startIndex)) + 1, Length (resource));
        inputStream := resource.all'Tag.getResourceAsStream (resourcePath);
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
   instance := ResourceUtil_Package.Create;

end org.allbinary.data.resource.ResourceUtil_Package;


