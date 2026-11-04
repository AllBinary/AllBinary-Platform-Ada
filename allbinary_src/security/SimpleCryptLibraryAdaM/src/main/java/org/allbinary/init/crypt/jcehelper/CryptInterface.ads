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

limited with org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
package org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References is
   type CryptInterface_Access is access all org.allbinary.init.crypt.jcehelper.CryptInterface_Package.CryptInterface'Class;
   type CryptInterface_Access_Array is array (Natural range <>) of CryptInterface_Access;
   type CryptInterface_Access_Array_Access is access all CryptInterface_Access_Array;
   type CryptInterface_Access_Array_Access_Array is array (Natural range <>) of CryptInterface_Access_Array_Access;
   type CryptInterface_Access_Array_Access_Array_Access is access all CryptInterface_Access_Array_Access_Array;
end org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References;

with org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.init.crypt.jcehelper.CryptInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type CryptInterface is interface;
   subtype CryptInterface_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access;
   function "=" (Left, Right : CryptInterface_Access) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array;
   function "=" (Left, Right : CryptInterface_Access_Array) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access;
   function "=" (Left, Right : CryptInterface_Access_Array_Access) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array_Access_Array is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CryptInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array_Access_Array_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CryptInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   function Java_Object_Access_From_CryptInterface (Value : CryptInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function encrypt (This : in out CryptInterface; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is abstract;
   function decrypt (This : in out CryptInterface; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is abstract;

end org.allbinary.init.crypt.jcehelper.CryptInterface_Package;


