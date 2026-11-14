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

with AllBinary_Java;
limited with org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package;
package org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References is
   type EmailQueueFactory_Access is access all org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package.EmailQueueFactory'Class;
   type EmailQueueFactory_Access_Array is array (Natural range <>) of EmailQueueFactory_Access;
   type EmailQueueFactory_Access_Array_Access is access all EmailQueueFactory_Access_Array;
   type EmailQueueFactory_Access_Array_Access_Array is array (Natural range <>) of EmailQueueFactory_Access_Array_Access;
   type EmailQueueFactory_Access_Array_Access_Array_Access is access all EmailQueueFactory_Access_Array_Access_Array;
   type EmailQueueFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EmailQueueFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : EmailQueueFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EmailQueueFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EmailQueueFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EmailQueueFactory_Access_Array_Access is (if Value /= null and then Value.all in EmailQueueFactory_Access_Array_Object'Class then EmailQueueFactory_Access_Array_Object'Class (Value.all).Value else null);
   type EmailQueueFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EmailQueueFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : EmailQueueFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EmailQueueFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EmailQueueFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EmailQueueFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in EmailQueueFactory_Access_Array_Access_Array_Object'Class then EmailQueueFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References;

with org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package;
with org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References;

package org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package is

   package Reference_Types is
   subtype EmailQueueInterface_Access is org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References.EmailQueueInterface_Access;
   use type EmailQueueInterface_Access;
   subtype EmailQueueInterface_Access_Array is org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References.EmailQueueInterface_Access_Array;
   use type EmailQueueInterface_Access_Array;
   subtype EmailQueueInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References.EmailQueueInterface_Access_Array_Access;
   use type EmailQueueInterface_Access_Array_Access;
   subtype EmailQueueInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References.EmailQueueInterface_Access_Array_Access_Array;
   use type EmailQueueInterface_Access_Array_Access_Array;
   subtype EmailQueueInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References.EmailQueueInterface_Access_Array_Access_Array_Access;
   use type EmailQueueInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype EmailQueueFactory_Access is org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References.EmailQueueFactory_Access;
   function "=" (Left, Right : EmailQueueFactory_Access) return Boolean renames org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References."=";
   subtype EmailQueueFactory_Access_Array is org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References.EmailQueueFactory_Access_Array;
   function "=" (Left, Right : EmailQueueFactory_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References."=";
   subtype EmailQueueFactory_Access_Array_Access is org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References.EmailQueueFactory_Access_Array_Access;
   function "=" (Left, Right : EmailQueueFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References."=";
   function Java_Box (Value : EmailQueueFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References.Java_Box;
   function Java_Unbox_EmailQueueFactory_Access_Array (Value : access Java_Object'Class) return EmailQueueFactory_Access_Array_Access renames org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References.Java_Unbox_EmailQueueFactory_Access_Array;
   subtype EmailQueueFactory_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References.EmailQueueFactory_Access_Array_Access_Array;
   function "=" (Left, Right : EmailQueueFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References."=";
   subtype EmailQueueFactory_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References.EmailQueueFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EmailQueueFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References."=";
   function Java_Box (Value : EmailQueueFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References.Java_Box;
   function Java_Unbox_EmailQueueFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return EmailQueueFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package_References.Java_Unbox_EmailQueueFactory_Access_Array_Access_Array;

   type EmailQueueFactory is new Java_Object with null record;
   emailQueueInterface : EmailQueueInterface_Access;

   procedure Initialize (This : in out EmailQueueFactory'Class);
   function Create return EmailQueueFactory_Access;
   function getInstance return EmailQueueInterface_Access;

end org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package;


