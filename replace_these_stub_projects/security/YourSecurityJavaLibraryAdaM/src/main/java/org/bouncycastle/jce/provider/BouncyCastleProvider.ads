--  Generated Code Do Not Modify

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


   type BouncyCastleProvider is tagged;
   type BouncyCastleProvider_Access is access all BouncyCastleProvider'Class;
   type BouncyCastleProvider_Access_Array is array (Natural range <>) of BouncyCastleProvider_Access;
   type BouncyCastleProvider_Access_Array_Access is access all BouncyCastleProvider_Access_Array;

   type BouncyCastleProvider is new Provider with null record;
   info : Unbounded_String;
   PROVIDER_NAME : Unbounded_String;

   procedure Initialize (This : in out BouncyCastleProvider'Class);
   function Create return BouncyCastleProvider_Access;
   procedure setParameter (This : in out BouncyCastleProvider; parameterName : Unbounded_String; parameter : Java_Object_Access);

end org.bouncycastle.jce.provider.BouncyCastleProvider_Package;


