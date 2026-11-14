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
limited with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
package org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References is
   type ContextConfigurationInterface_Access is access all org.allbinary.business.context.configuration.ContextConfigurationInterface_Package.ContextConfigurationInterface'Class;
   type ContextConfigurationInterface_Access_Array is array (Natural range <>) of ContextConfigurationInterface_Access;
   type ContextConfigurationInterface_Access_Array_Access is access all ContextConfigurationInterface_Access_Array;
   type ContextConfigurationInterface_Access_Array_Access_Array is array (Natural range <>) of ContextConfigurationInterface_Access_Array_Access;
   type ContextConfigurationInterface_Access_Array_Access_Array_Access is access all ContextConfigurationInterface_Access_Array_Access_Array;
   type ContextConfigurationInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ContextConfigurationInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ContextConfigurationInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ContextConfigurationInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ContextConfigurationInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ContextConfigurationInterface_Access_Array_Access is (if Value /= null and then Value.all in ContextConfigurationInterface_Access_Array_Object'Class then ContextConfigurationInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ContextConfigurationInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ContextConfigurationInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ContextConfigurationInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ContextConfigurationInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ContextConfigurationInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ContextConfigurationInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ContextConfigurationInterface_Access_Array_Access_Array_Object'Class then ContextConfigurationInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References;

with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References;

package org.allbinary.business.context.configuration.ContextConfigurationInterface_Package is

   package EmailServerConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
   package Reference_Types is
   subtype EmailServerConfigurationInterface_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access;
   use type EmailServerConfigurationInterface_Access;
   subtype EmailServerConfigurationInterface_Access_Array is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array;
   use type EmailServerConfigurationInterface_Access_Array;
   subtype EmailServerConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array_Access;
   use type EmailServerConfigurationInterface_Access_Array_Access;
   subtype EmailServerConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array_Access_Array;
   use type EmailServerConfigurationInterface_Access_Array_Access_Array;
   subtype EmailServerConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array_Access_Array_Access;
   use type EmailServerConfigurationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ContextConfigurationInterface is interface;
   subtype ContextConfigurationInterface_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access;
   function "=" (Left, Right : ContextConfigurationInterface_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References."=";
   subtype ContextConfigurationInterface_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array;
   function "=" (Left, Right : ContextConfigurationInterface_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References."=";
   subtype ContextConfigurationInterface_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References."=";
   function Java_Box (Value : ContextConfigurationInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.Java_Box;
   function Java_Unbox_ContextConfigurationInterface_Access_Array (Value : access Java_Object'Class) return ContextConfigurationInterface_Access_Array_Access renames org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.Java_Unbox_ContextConfigurationInterface_Access_Array;
   subtype ContextConfigurationInterface_Access_Array_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ContextConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References."=";
   subtype ContextConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References."=";
   function Java_Box (Value : ContextConfigurationInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.Java_Box;
   function Java_Unbox_ContextConfigurationInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ContextConfigurationInterface_Access_Array_Access_Array_Access renames org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.Java_Unbox_ContextConfigurationInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ContextConfigurationInterface (Value : ContextConfigurationInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getEmailServerConfigurationInterface (This : in out ContextConfigurationInterface) return EmailServerConfigurationInterface_Access is abstract;
   procedure setEmailServerConfigurationInterface (This : in out ContextConfigurationInterface; emailServerConfigurationInterface_Param : access EmailServerConfigurationInterface_Package.EmailServerConfigurationInterface'Class) is abstract;

end org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;


