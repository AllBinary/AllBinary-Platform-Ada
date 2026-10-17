--  Generated Code Do Not Modify


package body org.allbinary.logic.control.crypt.file.CryptFileReader_Package is

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
      Java_Result : constant Unbounded_String := CryptFileReader'Class (This).get (fileAbPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getInputStream (This : in out CryptFileReader; fileAbPath_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant InputStream_Access := CryptFileReader'Class (This).getInputStream (fileAbPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInputStream;

end org.allbinary.logic.control.crypt.file.CryptFileReader_Package;


