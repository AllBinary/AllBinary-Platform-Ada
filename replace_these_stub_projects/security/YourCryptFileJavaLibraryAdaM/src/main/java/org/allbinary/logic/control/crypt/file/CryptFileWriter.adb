--  Generated Code Do Not Modify


package body org.allbinary.logic.control.crypt.file.CryptFileWriter_Package is

   procedure Initialize_Fields (This : in out CryptFileWriter'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CryptFileWriter'Class; decryptedExtension : Unbounded_String; encryptedExtension : Unbounded_String) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (decryptedExtension : Unbounded_String; encryptedExtension : Unbounded_String) return CryptFileWriter_Access is
      This : constant CryptFileWriter_Access := new CryptFileWriter;
   begin
      CryptFileWriter_Package.Initialize (This.all, decryptedExtension, encryptedExtension);
      return This;
   end Create;

   --  throws Exception
   procedure write (This : in out CryptFileWriter; fileAbPath : AbPath_Access; document : Document_Access) is
   begin
        null;
   end write;

end org.allbinary.logic.control.crypt.file.CryptFileWriter_Package;


