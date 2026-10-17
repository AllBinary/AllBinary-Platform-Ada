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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type BaseSecretComposite is tagged;
   type BaseSecretComposite_Access is access all BaseSecretComposite'Class;
   type BaseSecretComposite_Access_Array is array (Natural range <>) of BaseSecretComposite_Access;
   type BaseSecretComposite_Access_Array_Access is access all BaseSecretComposite_Access_Array;

   type BaseSecretComposite is new Java_Object with null record;
   NULL_SECRET_COMPOSITE : BaseSecretComposite_Access;

   procedure Initialize (This : in out BaseSecretComposite'Class);
   function Create return BaseSecretComposite_Access;
   function encrypt (This : in out BaseSecretComposite; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure encrypt (This : in out BaseSecretComposite; array_Id : Short_Short_Integer_Array_Access);
   function decrypt (This : in out BaseSecretComposite; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure decrypt (This : in out BaseSecretComposite; array_Id : Short_Short_Integer_Array_Access);

end org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package;


