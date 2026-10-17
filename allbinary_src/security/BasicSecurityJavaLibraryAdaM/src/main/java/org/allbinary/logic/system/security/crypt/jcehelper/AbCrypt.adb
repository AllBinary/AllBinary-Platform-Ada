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


package body org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package is

   procedure Initialize_Fields (This : in out AbCrypt'Class) is
   begin
      null;
      This.tsUtil := TsUtil_Package.getInstance;
      This.secretComposite := BaseSecretComposite_Package.NULL_SECRET_COMPOSITE;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AbCrypt'Class; algorithm : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.algorithm := algorithm;
   end Initialize;

   function Create (algorithm : Unbounded_String) return AbCrypt_Access is
      This : constant AbCrypt_Access := new AbCrypt;
   begin
      Initialize (This.all, algorithm);
      return This;
   end Create;

   procedure init (This : in out AbCrypt; keyAsString : Unbounded_String) is
      commonStrings : CommonStrings_Access;
      key : Short_Short_Integer_Array_Access;
      keySpec : KeySpec_Access;
      keyFactory : SecretKeyFactory_Access;
      secretKey : SecretKey_Access;
      cipher : Cipher_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        begin
            begin
                Security_Package.addProvider (BouncyCastleProvider_Package.Create);
            exception
                when e : others =>
                PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.INIT, e);
            end;
            key := This.tsUtil.getByteArray (keyAsString);
            keySpec := KeySpecFactory_Package.getInstance.getInstance (This.algorithm, key);
            keyFactory := SecretKeyFactory_Package.getInstance (This.algorithm);
            secretKey := keyFactory.generateSecret (keySpec);
            cipher := Cipher_Package.getInstance (This.algorithm);
            This.secretComposite := SecretComposite_Package.Create (secretKey, cipher, key);
        exception
            when e : others =>
            PreLogUtil_Package.putOE (To_Unbounded_String ("init Failed"), This'Unchecked_Access, commonStrings.INIT, e);
        end;
   end init;

   function encrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        begin
            return This.secretComposite.encrypt (array_Id);
        exception
            when e : others =>
            PreLogUtil_Package.putOE (To_Unbounded_String ("Encrypt Failed"), This'Unchecked_Access, To_Unbounded_String ("encrypt"), e);
            return NullUtil_Package.getInstance.NULL_BYTE_ARRAY;
        end;
   end encrypt;

   function decrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        begin
            return This.secretComposite.decrypt (array_Id);
        exception
            when e : others =>
            PreLogUtil_Package.putOE (To_Unbounded_String ("decrypt Failed"), This'Unchecked_Access, To_Unbounded_String ("decrypt"), e);
            return NullUtil_Package.getInstance.NULL_BYTE_ARRAY;
        end;
   end decrypt;

   procedure encrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := AbCrypt'Class (This).encrypt (array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end encrypt;

   procedure decrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := AbCrypt'Class (This).decrypt (array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decrypt;

end org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package;


