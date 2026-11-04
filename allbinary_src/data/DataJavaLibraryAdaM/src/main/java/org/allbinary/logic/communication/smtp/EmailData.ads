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

limited with org.allbinary.logic.communication.smtp.EmailData_Package;
package org.allbinary.logic.communication.smtp.EmailData_Package_References is
   type EmailData_Access is access all org.allbinary.logic.communication.smtp.EmailData_Package.EmailData'Class;
   type EmailData_Access_Array is array (Natural range <>) of EmailData_Access;
   type EmailData_Access_Array_Access is access all EmailData_Access_Array;
   type EmailData_Access_Array_Access_Array is array (Natural range <>) of EmailData_Access_Array_Access;
   type EmailData_Access_Array_Access_Array_Access is access all EmailData_Access_Array_Access_Array;
end org.allbinary.logic.communication.smtp.EmailData_Package_References;

with org.allbinary.logic.communication.smtp.EmailData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.smtp.EmailData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype EmailData_Access is org.allbinary.logic.communication.smtp.EmailData_Package_References.EmailData_Access;
   function "=" (Left, Right : EmailData_Access) return Boolean renames org.allbinary.logic.communication.smtp.EmailData_Package_References."=";
   subtype EmailData_Access_Array is org.allbinary.logic.communication.smtp.EmailData_Package_References.EmailData_Access_Array;
   function "=" (Left, Right : EmailData_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.EmailData_Package_References."=";
   subtype EmailData_Access_Array_Access is org.allbinary.logic.communication.smtp.EmailData_Package_References.EmailData_Access_Array_Access;
   function "=" (Left, Right : EmailData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.EmailData_Package_References."=";
   subtype EmailData_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.EmailData_Package_References.EmailData_Access_Array_Access_Array;
   function "=" (Left, Right : EmailData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.EmailData_Package_References."=";
   subtype EmailData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.EmailData_Package_References.EmailData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EmailData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.EmailData_Package_References."=";

   type EmailData is new Java_Object with null record;
   SERVER : Unbounded_String;
   NAME : Unbounded_String;
   FROM : Unbounded_String;
   TO : Unbounded_String;
   CC : Unbounded_String;
   BCC : Unbounded_String;
   SUBJECT : Unbounded_String;
   CONTENT : Unbounded_String;

   procedure Initialize (This : in out EmailData'Class);
   function Create return EmailData_Access;

end org.allbinary.logic.communication.smtp.EmailData_Package;


