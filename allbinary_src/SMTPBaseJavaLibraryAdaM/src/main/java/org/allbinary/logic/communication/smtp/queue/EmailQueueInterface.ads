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

limited with org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package;
package org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References is
   type EmailQueueInterface_Access is access all org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package.EmailQueueInterface'Class;
   type EmailQueueInterface_Access_Array is array (Natural range <>) of EmailQueueInterface_Access;
   type EmailQueueInterface_Access_Array_Access is access all EmailQueueInterface_Access_Array;
   type EmailQueueInterface_Access_Array_Access_Array is array (Natural range <>) of EmailQueueInterface_Access_Array_Access;
   type EmailQueueInterface_Access_Array_Access_Array_Access is access all EmailQueueInterface_Access_Array_Access_Array;
end org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References;

with org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.smtp.EmailInterface_Package;
with org.allbinary.logic.communication.smtp.EmailInterface_Package_References;

package org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package is

   package EmailInterface_Package renames Standard.org.allbinary.logic.communication.smtp.EmailInterface_Package;
   package Reference_Types is
   subtype EmailInterface_Access is org.allbinary.logic.communication.smtp.EmailInterface_Package_References.EmailInterface_Access;
   use type EmailInterface_Access;
   subtype EmailInterface_Access_Array is org.allbinary.logic.communication.smtp.EmailInterface_Package_References.EmailInterface_Access_Array;
   use type EmailInterface_Access_Array;
   subtype EmailInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.EmailInterface_Package_References.EmailInterface_Access_Array_Access;
   use type EmailInterface_Access_Array_Access;
   subtype EmailInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.EmailInterface_Package_References.EmailInterface_Access_Array_Access_Array;
   use type EmailInterface_Access_Array_Access_Array;
   subtype EmailInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.EmailInterface_Package_References.EmailInterface_Access_Array_Access_Array_Access;
   use type EmailInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type EmailQueueInterface is interface;
   subtype EmailQueueInterface_Access is org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References.EmailQueueInterface_Access;
   function "=" (Left, Right : EmailQueueInterface_Access) return Boolean renames org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References."=";
   subtype EmailQueueInterface_Access_Array is org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References.EmailQueueInterface_Access_Array;
   function "=" (Left, Right : EmailQueueInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References."=";
   subtype EmailQueueInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References.EmailQueueInterface_Access_Array_Access;
   function "=" (Left, Right : EmailQueueInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References."=";
   subtype EmailQueueInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References.EmailQueueInterface_Access_Array_Access_Array;
   function "=" (Left, Right : EmailQueueInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References."=";
   subtype EmailQueueInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References.EmailQueueInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EmailQueueInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References."=";
   function Java_Object_Access_From_EmailQueueInterface (Value : EmailQueueInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function offer (This : in out EmailQueueInterface; emailInterface_Param : access EmailInterface_Package.EmailInterface'Class) return Boolean is abstract;
   procedure offer (This : in out EmailQueueInterface; emailInterface_Param : access EmailInterface_Package.EmailInterface'Class) is abstract;
   function remove (This : in out EmailQueueInterface) return EmailInterface_Access is abstract;

end org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package;


