--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.bouncycastle.jce.provider.BouncyCastleProvider_Package;
package org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References is
   type BouncyCastleProvider_Access is access all org.bouncycastle.jce.provider.BouncyCastleProvider_Package.BouncyCastleProvider'Class;
   type BouncyCastleProvider_Access_Array is array (Natural range <>) of BouncyCastleProvider_Access;
   type BouncyCastleProvider_Access_Array_Access is access all BouncyCastleProvider_Access_Array;
   type BouncyCastleProvider_Access_Array_Access_Array is array (Natural range <>) of BouncyCastleProvider_Access_Array_Access;
   type BouncyCastleProvider_Access_Array_Access_Array_Access is access all BouncyCastleProvider_Access_Array_Access_Array;
   type BouncyCastleProvider_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BouncyCastleProvider_Access_Array_Access;
   end record;
   function Java_Box (Value : BouncyCastleProvider_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BouncyCastleProvider_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BouncyCastleProvider_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BouncyCastleProvider_Access_Array_Access is (if Value /= null and then Value.all in BouncyCastleProvider_Access_Array_Object'Class then BouncyCastleProvider_Access_Array_Object'Class (Value.all).Value else null);
   type BouncyCastleProvider_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BouncyCastleProvider_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BouncyCastleProvider_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BouncyCastleProvider_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BouncyCastleProvider_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BouncyCastleProvider_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BouncyCastleProvider_Access_Array_Access_Array_Object'Class then BouncyCastleProvider_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References;

with org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.security.Provider_Package; use java.security.Provider_Package;

package org.bouncycastle.jce.provider.BouncyCastleProvider_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BouncyCastleProvider_Access is org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References.BouncyCastleProvider_Access;
   function "=" (Left, Right : BouncyCastleProvider_Access) return Boolean renames org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References."=";
   subtype BouncyCastleProvider_Access_Array is org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References.BouncyCastleProvider_Access_Array;
   function "=" (Left, Right : BouncyCastleProvider_Access_Array) return Boolean renames org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References."=";
   subtype BouncyCastleProvider_Access_Array_Access is org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References.BouncyCastleProvider_Access_Array_Access;
   function "=" (Left, Right : BouncyCastleProvider_Access_Array_Access) return Boolean renames org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References."=";
   function Java_Box (Value : BouncyCastleProvider_Access_Array_Access) return Java_Object_Access renames org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References.Java_Box;
   function Java_Unbox_BouncyCastleProvider_Access_Array (Value : access Java_Object'Class) return BouncyCastleProvider_Access_Array_Access renames org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References.Java_Unbox_BouncyCastleProvider_Access_Array;
   subtype BouncyCastleProvider_Access_Array_Access_Array is org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References.BouncyCastleProvider_Access_Array_Access_Array;
   function "=" (Left, Right : BouncyCastleProvider_Access_Array_Access_Array) return Boolean renames org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References."=";
   subtype BouncyCastleProvider_Access_Array_Access_Array_Access is org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References.BouncyCastleProvider_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BouncyCastleProvider_Access_Array_Access_Array_Access) return Boolean renames org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References."=";
   function Java_Box (Value : BouncyCastleProvider_Access_Array_Access_Array_Access) return Java_Object_Access renames org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References.Java_Box;
   function Java_Unbox_BouncyCastleProvider_Access_Array_Access_Array (Value : access Java_Object'Class) return BouncyCastleProvider_Access_Array_Access_Array_Access renames org.bouncycastle.jce.provider.BouncyCastleProvider_Package_References.Java_Unbox_BouncyCastleProvider_Access_Array_Access_Array;

   type BouncyCastleProvider is new Java_Object with null record;
   info : Unbounded_String;
   PROVIDER_NAME : Unbounded_String;

   procedure Initialize (This : in out BouncyCastleProvider'Class);
   function Create return BouncyCastleProvider_Access;
   procedure setParameter (This : in out BouncyCastleProvider; parameterName : Unbounded_String; parameter_Param : access Java_Object'Class);

end org.bouncycastle.jce.provider.BouncyCastleProvider_Package;


