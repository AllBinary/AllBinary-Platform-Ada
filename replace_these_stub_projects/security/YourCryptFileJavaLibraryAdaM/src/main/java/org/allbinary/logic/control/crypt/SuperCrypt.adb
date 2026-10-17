--  Generated Code Do Not Modify


package body org.allbinary.logic.control.crypt.SuperCrypt_Package is

   procedure Initialize_Fields (This : in out SuperCrypt'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SuperCrypt'Class; key : Integer) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (key : Integer) return SuperCrypt_Access is
      This : constant SuperCrypt_Access := new SuperCrypt;
   begin
      Initialize (This.all, key);
      return This;
   end Create;

   function encrypt (This : in out SuperCrypt; value : Unbounded_String) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end encrypt;

   function decrypt (This : in out SuperCrypt; value : Unbounded_String) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end decrypt;

   procedure encrypt (This : in out SuperCrypt; value : Unbounded_String) is
      Java_Result : constant Unbounded_String := SuperCrypt'Class (This).encrypt (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end encrypt;

   procedure decrypt (This : in out SuperCrypt; value : Unbounded_String) is
      Java_Result : constant Unbounded_String := SuperCrypt'Class (This).decrypt (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decrypt;

begin
   null;
   KEYMAX := 0;

end org.allbinary.logic.control.crypt.SuperCrypt_Package;


