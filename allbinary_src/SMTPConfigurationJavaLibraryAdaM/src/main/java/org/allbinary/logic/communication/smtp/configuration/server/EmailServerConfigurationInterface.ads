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

limited with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
package org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References is
   type EmailServerConfigurationInterface_Access is access all org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package.EmailServerConfigurationInterface'Class;
   type EmailServerConfigurationInterface_Access_Array is array (Natural range <>) of EmailServerConfigurationInterface_Access;
   type EmailServerConfigurationInterface_Access_Array_Access is access all EmailServerConfigurationInterface_Access_Array;
   type EmailServerConfigurationInterface_Access_Array_Access_Array is array (Natural range <>) of EmailServerConfigurationInterface_Access_Array_Access;
   type EmailServerConfigurationInterface_Access_Array_Access_Array_Access is access all EmailServerConfigurationInterface_Access_Array_Access_Array;
end org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References;

with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type EmailServerConfigurationInterface is interface;
   subtype EmailServerConfigurationInterface_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access;
   function "=" (Left, Right : EmailServerConfigurationInterface_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References."=";
   subtype EmailServerConfigurationInterface_Access_Array is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array;
   function "=" (Left, Right : EmailServerConfigurationInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References."=";
   subtype EmailServerConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : EmailServerConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References."=";
   subtype EmailServerConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : EmailServerConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References."=";
   subtype EmailServerConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EmailServerConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References."=";
   function Java_Object_Access_From_EmailServerConfigurationInterface (Value : EmailServerConfigurationInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setSmtpServer (This : in out EmailServerConfigurationInterface; value : Unbounded_String) is abstract;
   function getSmtpServer (This : in out EmailServerConfigurationInterface) return Unbounded_String is abstract;
   function getAccountName (This : in out EmailServerConfigurationInterface) return Unbounded_String is abstract;
   procedure setAccountName (This : in out EmailServerConfigurationInterface; accountName : Unbounded_String) is abstract;
   function getPassword (This : in out EmailServerConfigurationInterface) return Unbounded_String is abstract;
   procedure setPassword (This : in out EmailServerConfigurationInterface; password : Unbounded_String) is abstract;
   procedure log (This : in out EmailServerConfigurationInterface) is abstract;
   function toString (This : in out EmailServerConfigurationInterface) return Unbounded_String is abstract;

end org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;


