--  Generated Code Do Not Modify



package body org.bouncycastle.jce.provider.BouncyCastleProvider_Package is

   procedure Initialize_Fields (This : in out BouncyCastleProvider'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BouncyCastleProvider'Class) is
   begin
        Provider_Package.Initialize (This, BouncyCastleProvider_Package.PROVIDER_NAME, 1.41, BouncyCastleProvider_Package.info);
   end Initialize;

   function Create return BouncyCastleProvider_Access is
      This : constant BouncyCastleProvider_Access := new BouncyCastleProvider;
   begin
      BouncyCastleProvider_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setParameter (This : in out BouncyCastleProvider; parameterName : Unbounded_String; parameter_Param : access Java_Object'Class) is
      parameter : constant Java_Object_Access := Java_Object_Access (parameter_Param);
   begin
        null;
   end setParameter;

begin
   null;
   info := To_Unbounded_String ("BouncyCastle Security Provider v1.41");
   PROVIDER_NAME := To_Unbounded_String ("BC");

end org.bouncycastle.jce.provider.BouncyCastleProvider_Package;


