--  Generated Code Do Not Modify


package body org.allbinary.logic.control.crypt.Encoder_Package is

   procedure Initialize_Fields (This : in out Encoder'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out Encoder'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return Encoder_Access is
      This : constant Encoder_Access := new Encoder;
   begin
      Encoder_Package.Initialize (This.all);
      return This;
   end Create;

   function encode (value : Short_Short_Integer_Array_Access) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end encode;

   function decode (value : Unbounded_String) return Short_Short_Integer_Array_Access is
   begin
        return null;
   end decode;

   procedure encode (value : Short_Short_Integer_Array_Access) is
      Java_Result : constant Unbounded_String := encode (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end encode;

   procedure decode (value : Unbounded_String) is
      Java_Result : constant Short_Short_Integer_Array_Access := decode (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decode;

end org.allbinary.logic.control.crypt.Encoder_Package;


