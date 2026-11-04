-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package;
package org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References is
   type BaseSecretComposite_Access is access all org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package.BaseSecretComposite'Class;
   type BaseSecretComposite_Access_Array is array (Natural range <>) of BaseSecretComposite_Access;
   type BaseSecretComposite_Access_Array_Access is access all BaseSecretComposite_Access_Array;
   type BaseSecretComposite_Access_Array_Access_Array is array (Natural range <>) of BaseSecretComposite_Access_Array_Access;
   type BaseSecretComposite_Access_Array_Access_Array_Access is access all BaseSecretComposite_Access_Array_Access_Array;
end org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References;

with org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BaseSecretComposite_Access is org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References.BaseSecretComposite_Access;
   function "=" (Left, Right : BaseSecretComposite_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References."=";
   subtype BaseSecretComposite_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References.BaseSecretComposite_Access_Array;
   function "=" (Left, Right : BaseSecretComposite_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References."=";
   subtype BaseSecretComposite_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References.BaseSecretComposite_Access_Array_Access;
   function "=" (Left, Right : BaseSecretComposite_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References."=";
   subtype BaseSecretComposite_Access_Array_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References.BaseSecretComposite_Access_Array_Access_Array;
   function "=" (Left, Right : BaseSecretComposite_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References."=";
   subtype BaseSecretComposite_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References.BaseSecretComposite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseSecretComposite_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References."=";

   type BaseSecretComposite is new Java_Object with null record;
   NULL_SECRET_COMPOSITE : BaseSecretComposite_Access;

   procedure Initialize (This : in out BaseSecretComposite'Class);
   function Create return BaseSecretComposite_Access;
   function encrypt (This : in out BaseSecretComposite; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure encrypt (This : in out BaseSecretComposite; array_Id : Short_Short_Integer_Array_Access);
   function decrypt (This : in out BaseSecretComposite; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure decrypt (This : in out BaseSecretComposite; array_Id : Short_Short_Integer_Array_Access);

end org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package;


