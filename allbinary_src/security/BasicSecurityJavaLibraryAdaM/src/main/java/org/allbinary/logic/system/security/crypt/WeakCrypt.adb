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


package body org.allbinary.logic.system.security.crypt.WeakCrypt_Package is

   procedure Initialize_Fields (This : in out WeakCrypt'Class) is
   begin
      null;
      This.tsUtil := TsUtil_Package.getInstance;
      This.abCrypt := AbCrypt_Package.Create (KeySpecFactory_Package.getInstance.DES);
   end Initialize_Fields;


   procedure Initialize (This : in out WeakCrypt'Class; key : Integer) is
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        begin
            This.abCrypt.init (WeakCrypt_Package.keys (key));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("SuperCrypt(key)"), e);
                end;
        end;
   end Initialize;

   function Create (key : Integer) return WeakCrypt_Access is
      This : constant WeakCrypt_Access := new WeakCrypt;
   begin
      Initialize (This.all, key);
      return This;
   end Create;

   function encrypt (This : in out WeakCrypt; value : Unbounded_String) return Unbounded_String is
      crypted : Short_Short_Integer_Array_Access;
   begin
        begin
            crypted := This.abCrypt.encrypt (This.tsUtil.getByteArray (value));
            return DatabaseEncoder_Package.encode (crypted);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (To_Unbounded_String ("Encrypt Failed"), This'Unchecked_Access, To_Unbounded_String ("encrypt"), e);
            return StringUtil_Package.getInstance.EMPTY_STRING;
                end;
        end;
   end encrypt;

   function decrypt (This : in out WeakCrypt; value : Unbounded_String) return Unbounded_String is
      decrypted : Short_Short_Integer_Array_Access;
   begin
        begin
            decrypted := This.abCrypt.decrypt (DatabaseEncoder_Package.decode (value));
            return Java_New_String (decrypted);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (To_Unbounded_String ("decrypt Failed"), This'Unchecked_Access, To_Unbounded_String ("decrypt"), e);
            return StringUtil_Package.getInstance.EMPTY_STRING;
                end;
        end;
   end decrypt;

   procedure encrypt (This : in out WeakCrypt; value : Unbounded_String) is
      Java_Result : constant Unbounded_String := WeakCrypt'Class (This).encrypt (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end encrypt;

   procedure decrypt (This : in out WeakCrypt; value : Unbounded_String) is
      Java_Result : constant Unbounded_String := WeakCrypt'Class (This).decrypt (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decrypt;

begin
   null;
   keys := new Unbounded_String_Array'(To_Unbounded_String ("qwres6qewrupoi1132790jfahleavi89398"), To_Unbounded_String ("143uk32lngf8675gt1tv9214uvt924ut9u9"), To_Unbounded_String ("12kvjlvlkv11445v12951v512v9m51295v1"), To_Unbounded_String ("gampipoiupg4g43y5u238tu2485u20u0932"), To_Unbounded_String ("a93u5uu02s2d2g3259u4395u409u093u9vu"), To_Unbounded_String ("nlkxzj90je3mln9l8l89qjf0j3v50j23r9j"), To_Unbounded_String ("2lk5fn5j23nr8f0233vq35n23jn58vhy843"), To_Unbounded_String ("9q24334m598t092tkn2iv0982456n425j9g"), To_Unbounded_String ("5m9uvmt9436243m5v34g09d43i52ki35g99"), To_Unbounded_String ("n123lr1iubiu2br32lv32rbu23b32ub2rlb"), To_Unbounded_String ("va0u0iovji2ojpvj2oij22poiu4ov2uv28v"), To_Unbounded_String ("bkk80gn2v9uc902340ut209pcup0u09utc9"), To_Unbounded_String ("mn32m32neee23c42fn32nf3mf2n3fn2m3fm"), To_Unbounded_String ("zcxpozo3423voizupovsijevnv3n33o33n3"), To_Unbounded_String ("v0345324thv93h03893893vh893v8h3vhzz"), To_Unbounded_String ("v8na898v8wyef9ty39yv98yaw39yeeyf8ye"), To_Unbounded_String ("45zd36d34jg09434hfshp8uj9sy8s7cyr78"), To_Unbounded_String ("b098yy0908vdvh983b2lb327980a76s5e5e"), To_Unbounded_String ("v90y9v9p8y3r98pagsdgsagyr6y3985yhfh"), To_Unbounded_String ("vblkzhhzp8yvzi8u4t9856456zy3rv8a388"), To_Unbounded_String ("da7696023rgf28dssfa98asd879hg32hewe"), To_Unbounded_String ("afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf"), To_Unbounded_String ("4gijvqo8vq984hv984hj5j3511h832hf833"));
   KEYMAX := WeakCrypt_Package.keys'Length;

end org.allbinary.logic.system.security.crypt.WeakCrypt_Package;


