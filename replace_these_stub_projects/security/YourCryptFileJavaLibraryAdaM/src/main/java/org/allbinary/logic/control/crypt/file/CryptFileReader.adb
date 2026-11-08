--  Generated Code Do Not Modify


with java.io.InputStream_Package; use java.io.InputStream_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
with org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.io.path.PathUtil_Package;

package body org.allbinary.logic.control.crypt.file.CryptFileReader_Package is

   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   function "=" (Left, Right : AbPath_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   function "=" (Left, Right : AbPath_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   function "=" (Left, Right : AbPath_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   function "=" (Left, Right : AbPath_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbPath_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   procedure Initialize_Fields (This : in out CryptFileReader'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CryptFileReader'Class; decryptedExtension : Unbounded_String; encryptedExtension : Unbounded_String) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (decryptedExtension : Unbounded_String; encryptedExtension : Unbounded_String) return CryptFileReader_Access is
      This : constant CryptFileReader_Access := new CryptFileReader;
   begin
      CryptFileReader_Package.Initialize (This.all, decryptedExtension, encryptedExtension);
      return This;
   end Create;

   --  throws Exception
   function get (This : in out CryptFileReader; fileAbPath_Param : access AbPath_Package.AbPath'Class) return Unbounded_String is
      fileAbPath : constant AbPath_Access := AbPath_Access (fileAbPath_Param);
   begin
        return Null_Unbounded_String;
   end get;

   --  throws Exception
   function getInputStream (This : in out CryptFileReader; fileAbPath_Param : access AbPath_Package.AbPath'Class) return InputStream_Access is
      fileAbPath : constant AbPath_Access := AbPath_Access (fileAbPath_Param);
   begin
        return null;
   end getInputStream;

   procedure get (This : in out CryptFileReader; fileAbPath_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant Unbounded_String := CryptFileReader'Class (This).get (fileAbPath_Param => fileAbPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getInputStream (This : in out CryptFileReader; fileAbPath_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant InputStream_Access := CryptFileReader'Class (This).getInputStream (fileAbPath_Param => fileAbPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInputStream;

end org.allbinary.logic.control.crypt.file.CryptFileReader_Package;


